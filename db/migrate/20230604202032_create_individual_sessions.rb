class CreateIndividualSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :individual_sessions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :coach, null: false, foreign_key: true
      t.date :session_date
      t.time :session_time
      t.integer :duration
      t.string :location
      t.string :status
      t.string :booking_type
      t.string :payment_status
      t.string :payment_method
      t.string :payment_id
      t.string :payment_amount
      t.string :payment_currency
      t.string :payment_description
      t.string :client_full_name
      t.string :client_email
      t.string :client_phone


      t.timestamps
    end
  end
end
