module Measurement
  def self.included(base)
    base.extend ClassMethods
  end
  
  def measurement_convert(name, from, to)
    from  = from.call if from.is_a?(Proc)
    to    = to.call   if to.is_a?(Proc)

    self[name] = self[name].from(from).to(to).to_f.round(3) if from != to
  end
  
  module ClassMethods
    def measurement(*args, &block)
      options = { :model_unit => :meter, :database_unit => :meter }
      options.merge!(args.pop) if args.last.kind_of? Hash
      
      args.each do |name|
        before_save do |record|
          measurement_convert(name, options[:model_unit], options[:database_unit])
        end
        
        after_save do |record|
          measurement_convert(name, options[:database_unit], options[:model_unit])
        end
        
        after_find do |record|
          measurement_convert(name, options[:database_unit], options[:model_unit])
        end
      end
    end
  end
end

class ActiveRecord::Base
  include Measurement
end