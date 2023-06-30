class CreateQuestionnaires < ActiveRecord::Migration[7.0]
  def change
    create_table :questionnaires do |t|

      # text
      t.text :value , array: true, default: []

      t.timestamps
    end
  end
end
