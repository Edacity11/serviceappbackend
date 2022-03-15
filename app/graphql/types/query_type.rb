module Types
  class QueryType < Types::BaseObject
   # Get all users
    field :users, [Types::UserType], null: false
    def users
      User.all
    end

    # Get all categories
    field :categories, [Types::CategoryType], null: false
    def categories
      Category.all
    end

    # Get all services
    field :services, [Types::ServiceType], null: false
    def services
      Service.all
    end

    # Get all bookings
    field :bookings, [Types::BookingType], null: false
    def bookings
      Booking.all
    end

    # Get a specific user
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end
    def user(id:)
      User.find(id)
    end
  end
end
