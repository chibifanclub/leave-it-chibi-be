class ItemSerializer
  include JSONAPI::Serializer

  attributes :name, :description, :toxicity, :treatment
  attribute :image do |object|
    object.image_url
  end
end
