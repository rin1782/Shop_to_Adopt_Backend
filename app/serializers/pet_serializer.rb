class PetSerializer < ActiveModel::Serializer
  has_many :inquiries
  attributes :id, :inquiries, :name
end
