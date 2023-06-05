# app/models/session_booking.rb
class IndividualSession < ApplicationRecord
    # belongs_to :user
    # belongs_to :coach
  
    # Fields: user_id, email, phone, full_name, coach_id, session_date, session_time, duration, location, status
  
    # validates :session_date, presence: true
    # validates :session_time, presence: true
    # validates :duration, presence: true
    # validates :location, presence: true
    # validates :status, presence: true
  
    # Custom validation for non-member users
    # validate :non_member_fields_presence, if: :non_member?
  
    # def non_member?
    #   user_id.nil?
    # end
  
    # private
  
    # def non_member_fields_presence
    #   errors.add(:client_email, "can't be blank") if client_email.blank?
    #   errors.add(:client_phone, "can't be blank") if client_phone.blank?
    #   errors.add(:client_full_name, "can't be blank") if client_full_name.blank?
    # end
  end
  