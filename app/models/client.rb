class Client < ApplicationRecord
    has_many :pets, dependant: :destroy
end
