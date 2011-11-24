require "bootstrap-rails/helper"
require "bootstrap-rails/breadcrumb"
module Bootstrap
  module Rails
    class Engine < ::Rails::Engine
      initializer "bootstrap_helper.view_helpers" do
          ActionView::Base.send :include, Bootstrap::Helper
      end
      
      config.to_prepare do
        ApplicationController.send :include, Bootstrap::Breadcrumb
      end
           
    end
  end
end