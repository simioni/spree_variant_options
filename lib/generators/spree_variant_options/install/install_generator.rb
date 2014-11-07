module SpreeVariantOptions
  module Generators
    class InstallGenerator < Rails::Generators::Base
      
      desc "Installs required migrations for spree_essentials"
      
      def copy_migrations
        rake "spree_variant_options:install:migrations"
      end
      
      def add_javascripts
        # append_file "app/assets/javascripts/store/all.js", "//= require spree/frontend/spree_variant_options\n"
        # should change app/assets to vendor/assets when upgrading to spree 2.2
        # append_file "vendor/assets/javascripts/spree/frontend/all.js", "//= require spree/frontend/spree_variant_options\n"
      end

      def add_stylesheets
        # inject_into_file "app/assets/stylesheets/store/all.css", "*= require spree/frontend/spree_variant_options\n", :before => /\*\//, :verbose => true
        # should change app/assets to vendor/assets when upgrading to spree 2.2
        # inject_into_file "vendor/assets/stylesheets/spree/frontend/all.css", "*= require spree/frontend/spree_variant_options\n", :before => /\*\//, :verbose => true
      end

    end
  end
end
