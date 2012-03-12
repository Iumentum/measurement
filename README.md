Measurement
=============
Let ActiveRecord handle your measurement unit conversions

Software dependencies
-------------
gem 'alchemist'

Install
-------------
gem install Iumentum-measurement --source http://gems.github.com

Ussage
-------------
measurement :height, :model_unit => :feet, :database_unit => :meter

You can specify multiple columns and add options like this.

measurement :width, :height, :model_unit => :feet, :database_unit => :meter
