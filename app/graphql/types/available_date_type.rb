module Types
  class AvailableDateType < Types::BaseObject
    field :id, ID, null: false
    field :date, String, null: true
    field :service_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
