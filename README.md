Measurement
=============
Let ActiveRecord handle your measurement unit conversions

Software dependencies
-------------
gem 'alchemist'

Install
-------------
gem 'measurement', :git => 'https://github.com/Iumentum/measurement.git'

Ussage
-------------
measurement :height, :model_unit => :feet, :database_unit => :meter

You can specify multiple columns and add options like this.

measurement :width, :height, :model_unit => :feet, :database_unit => :meter

You can also use lambda for the unit options like this.

measurement :height, :model_unit => lambda { Settings.units.model['distance'] }, :database_unit => :meter
