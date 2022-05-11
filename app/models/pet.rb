class Pet < ApplicationRecord
    belongs_to :client
    has_many :pethistories, dependent: :destroy

    def visits
        self.pethistories.count            
    end    

    def owner
        Client.find(self.client_id).name
    end

    def weight_max
       self.pethistories.map {|x| x.weight}.max 
    end

    def weight_ave
        total = self.pethistories.map {|x| x.weight}
        total.inject {|sum, ele| sum + ele}/total.size
    end

    def height_max
        self.pethistories.map {|x| x.height}.max 
     end
 
     def height_ave
         total = self.pethistories.map {|x| x.height}
         total.inject {|sum, ele| sum + ele}/total.size
     end

end
