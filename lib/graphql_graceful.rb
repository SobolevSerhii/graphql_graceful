# frozen_string_literal: true

require "graphql"

require_relative "graphql_graceful/version"
require_relative "graphql_graceful/services/context"
require_relative "graphql_graceful/services/base/input_object"
require_relative "graphql_graceful/services/base/interface"
require_relative "graphql_graceful/services/base/scalar"
require_relative "graphql_graceful/services/base/json"
require_relative "graphql_graceful/services/base/object"
require_relative "graphql_graceful/services/base/enum"
require_relative "graphql_graceful/services/base/relay"
require_relative "graphql_graceful/services/base/union"
require_relative "graphql_graceful/services/base/mutation"

module GraphqlGraceful
  include GraphQL

  BASE_CLASSES = %i[
    enum
    input_object
    interface
    json
    mutation
    object
    relay
    scalar
    union
  ].freeze
  class << self
    def reload!
      Dir[File.join("lib", "graphql_graceful", "**", "**.rb")].sort.each { |file| load file }
    end

    def reload_services!
      Dir[File.join("lib", "graphql_graceful", "services", "**", "**.rb")].sort.each { |file| load file }
    end

    def reload_base_classes!
      Dir[File.join("lib", "graphql_graceful", "services", "base", "**.rb")].sort.each { |file| load file }
    end
  end

  class Error < StandardError; end
end
