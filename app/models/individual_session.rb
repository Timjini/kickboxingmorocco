# app/models/session_booking.rb
class IndividualSession < ApplicationRecord
    before_validation :extract_time_from_session_time
    belongs_to :user
    belongs_to :coach

    # attr_accessor :status

    private

    def extract_time_from_session_time
        if session_time.present?
            self.session_time = session_time.strftime("%H:%M")
        end
    end

    def status_check
        if object.session_date > Time.now
            object.status = "Active"
        else
            object.status = "Inactive"
        end
    end
    
end
  