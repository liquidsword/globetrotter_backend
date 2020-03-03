class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username
  has_many :trips, serializer: TripSerializer
  attribute :hometown do |user|
    {
      city: user.hometown.city,
      state: user.hometown.state,
      country: user.hometown.country
    }
  end
end
