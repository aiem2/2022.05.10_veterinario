class Pet < ApplicationRecord
    belongs_to :client
    has_many :pethistories, dependent: :destroy
end
