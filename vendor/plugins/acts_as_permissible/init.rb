# Include hook code here
begin
  #require "#{Rails.root.to_s}/lib/acts_as_permissible"
  require "#{Balder::Engine.root.to_s}/lib/acts_as_permissible"
  ActiveRecord::Base.send(:include, NoamBenAri::Acts::Permissible)
rescue MissingSourceFile => m
  puts "Could not load acts_as_permissible"
end