class AddDataToQuestionnaires < ActiveRecord::Migration[7.0]
  def change
    add_column :questionnaires, :satisfaction, :string 
    add_column :questionnaires, :qualite, :string
    add_column :questionnaires, :reason, :string
    add_column :questionnaires, :attention, :string
    add_column :questionnaires, :attention_commentaire, :string
    add_column :questionnaires, :tendance, :string
    add_column :questionnaires, :suggestion, :string
  end
end
