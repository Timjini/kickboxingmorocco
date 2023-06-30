class CreateQuestionnaireSeniors < ActiveRecord::Migration[7.0]
  def change
    create_table :questionnaire_seniors do |t|
      t.text :value , array: true, default: []
      t.text :discipline , array: true, default: []
      t.string :satisfaction
      t.string :qualite
      t.string :gym_commentaire
      t.string :tendance
      t.string :suggestion
      t.string :securite

      t.timestamps
    end
  end
end
