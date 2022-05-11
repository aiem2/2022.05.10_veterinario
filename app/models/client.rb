class Client < ApplicationRecord
    has_many :pets, dependent: :destroy

    def patients
        @patients = self.pets.count            
    end    
end
