require "rails/generators/base"

module GraphqlGraceful
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("templates", __dir__)
    def base_pathname
      "app/graphql_graceful"
    end

    def create_graceful_directory
      create_dir(base_pathname)
    end

    def create_services_directory
      create_dir("#{base_pathname}/services")
      create_dir("#{base_pathname}/services/base")
      create_dir("#{base_pathname}/services/interfaces")
    end

    private

    def create_dir(pathname)
      Dir.mkdir(Rails.root.join(pathname)) unless Dir.exist?(Rails.root.join(pathname))
    end
  end
end
