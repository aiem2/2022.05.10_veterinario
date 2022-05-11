class AddPetToPethistory < ActiveRecord::Migration[7.0]
  def change
    add_reference :pethistories, :pet, null: false, foreign_key: true
  end
end
