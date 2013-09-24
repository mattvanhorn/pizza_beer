class AddGuestsTable < ActiveRecord::Migration
  def change
    create_table :guests, :force => true do |t|
      t.string :email
      t.timestamps
    end
  end
end
