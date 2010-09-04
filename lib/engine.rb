require 'awesome_buttons'
require 'rails'

module AwesomeButtons
  class Engine < Rails::Engine
    initializer 'awesome.app_helper' do
      ActionView::Base.send :include, AppHelper
    end
  end
end
