class AddClientToPethistory < ActiveRecord::Migration[7.0]
  def change
    add_reference :pethistories, :client, null: false, foreign_key: true
  end
end
