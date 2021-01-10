module Lib::Services::Interfaces::Objects::Base
  include Lib::Services::Base::Interface

  field :id, ID, null: false
  field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
end
