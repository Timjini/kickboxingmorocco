class CreateQuestionnaires < ActiveRecord::Migration[7.0]
  def change
    create_table :questionnaires do |t|
      t.string :title
      t.string :description
      t.string :question_un
      t.string :question_deux
      t.string :question_trois
      t.string :question_quatre
      t.string :question_cinq
      t.string :question_six
      t.string :question_sept
      t.string :questionnaire_type
      t.string :questionnaire_status

      t.timestamps
    end
  end
end
