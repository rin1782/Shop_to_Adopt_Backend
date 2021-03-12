class InquirySerializer
  include FastJsonapi::ObjectSerializer
  attributes :comment, :pet_id, :pet
end
