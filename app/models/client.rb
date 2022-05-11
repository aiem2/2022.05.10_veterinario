class Client < ApplicationRecord
    has_many :pet, dependant: :destroy
end
