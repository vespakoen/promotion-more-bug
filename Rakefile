# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Bundler.setup

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'promotion-more-bug'

  app.files_dependencies({
    'app/screens/h.rb' => 'app/screens/test_table_screen.rb'
  })
end
