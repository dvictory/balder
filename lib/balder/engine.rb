module Balder
  class Engine < Rails::Engine
    isolate_namespace Balder
    config.autoload_paths += %W(#{Balder::Engine.config.root}/lib)
  end
end