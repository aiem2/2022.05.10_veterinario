class Pet < ApplicationRecord
    belongs_to :client
    has_many :pethistories, dependent: :destroy

    def visits
        @visits = self.pethistories.count            
    end    

    def owner
        @owner = Client.find(self.client_id).name
    end
end
