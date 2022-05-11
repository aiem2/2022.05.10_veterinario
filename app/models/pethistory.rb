class Pethistory < ApplicationRecord
    belongs_to :pet

    def client_id
        @client_id = self.client_id
    end
end
