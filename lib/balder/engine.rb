require 'rubygems'
require 'rails'
require 'jquery-rails'
require 'carrierwave'
require 'authlogic'
require 'RMagick'
#require 'mini_exiftool'

module Balder
  class Engine < Rails::Engine
    isolate_namespace Balder
    #engine_name 'balder'
    #config.autoload_paths += %W(#{config.root}/lib)
  end
end