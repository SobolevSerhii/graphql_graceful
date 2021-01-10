require "rails/generators/base"

module GraphqlGraceful
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def initialize(options = {})
        super
        @options[:directory] = 'app/graphql'
      end
      source_root File.expand_path("templates/services/base", __dir__)

      def create_folder_structure
        create_dir("#{options[:directory]}/lib/services/base")
      end
    end
  end
end
