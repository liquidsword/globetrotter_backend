class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :hometown
end
