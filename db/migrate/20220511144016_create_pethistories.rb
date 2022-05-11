class CreatePethistories < ActiveRecord::Migration[7.0]
  def change
    create_table :pethistories do |t|
      t.float :weight
      t.float :height
      t.text :diagnostic

      t.timestamps
    end
  end
end
