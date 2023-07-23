class CreateProgrammes < ActiveRecord::Migration[7.0]
  def change
    create_table :programmes do |t|

      t.string :name
      t.string :description
      t.string :type
      t.string :duration
      t.string :level
      t.string :price
      t.string :jour
      t.string :heure
      t.string :groupe
      t.string :status


      t.timestamps
    end
  end
end
