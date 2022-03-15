module Types
  class BookingType < Types::BaseObject
    field :id, ID, null: false
    field :booking_date, String, null: true
    field :status, String, null: true
    field :available_date_id, Integer, null: false
    field :available_time_id, Integer, null: false
    field :user_id, Integer, null: false
    field :service_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user_name, String, null: true
    field :date, String, null: true
    field :time, String, null: true
    field :service_name, String, null: true
    field :amount, String, null: true
  end
end
