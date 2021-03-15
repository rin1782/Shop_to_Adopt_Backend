class PetSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :desc
end


