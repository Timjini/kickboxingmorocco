class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false, limit: 100
      t.string :email, null: false, limit: 100
      t.string :phone, null: false, limit: 20
      t.string :message, null: false, limit: 1000

      t.timestamps
    end
  end
end
