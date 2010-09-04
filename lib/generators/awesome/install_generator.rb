require 'rails'
require 'rails/generators'

module Awesome
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)  
    class_option :css, :type => :boolean, :default => false

    def install
      copy_file 'awesome-overlay.png', 'public/images/awesome.png' 
      if options.css?
        copy_file 'awesome.css', 'public/stylesheets/awesome.css' 
      else
        copy_file 'awesome.sass', 'public/stylesheets/sass/awesome.sass' 
      end
    end
  end
end
