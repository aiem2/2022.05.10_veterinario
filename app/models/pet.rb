class Pet < ApplicationRecord
    belongs_to :client
    has_many :pethistories, dependent: :destroy

    def visits
        @visits = self.pethistories.count            
    end    
end
