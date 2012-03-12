module Measurement
  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    def measurement(*args, &block)
      options = { :model_unit => :meter, :database_unit => :meter }
      options.merge!(args.pop) if args.last.kind_of? Hash
      
      args.each do |name|
        before_save do |record|
          self[name] = self[name].from(options[:model_unit]).to(options[:database_unit]).to_f.round(3) if !self[name].nil? && options[:model_unit] != options[:database_unit]
        end
        
        after_save do |record|
          self[name] = self[name].from(options[:database_unit]).to(options[:model_unit]).to_f.round(3) if !self[name].nil? && options[:model_unit] != options[:database_unit]
        end
        
        after_initialize do |record|
          self[name] = self[name].from(options[:database_unit]).to(options[:model_unit]).to_f.round(3) if !self[name].nil? && options[:model_unit] != options[:database_unit]
        end
      end
    end
  end
end

class ActiveRecord::Base
  include Measurement
end