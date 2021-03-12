class PetSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :desc, :image_url
end


