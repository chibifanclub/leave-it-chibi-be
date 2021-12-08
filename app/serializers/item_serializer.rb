class ItemSerializer
  include JSONAPI::Serializer

  attributes :name, :description, :toxicity, :treatment, :image
end
