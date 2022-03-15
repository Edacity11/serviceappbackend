module Types
  class AvailableTimeType < Types::BaseObject
    field :id, ID, null: false
    field :time, String, null: true
    field :available_date_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :service_id, Integer, null: true
  end
end
