class VeterinarianSerializer
  include JSONAPI::Serializer

  set_id :id

  attributes :name, :address, :phone, :reviews, :rating, :image
end