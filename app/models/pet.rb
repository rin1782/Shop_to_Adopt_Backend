class Pet < ApplicationRecord
    has_many :inquiries, dependent: :destroy
end
