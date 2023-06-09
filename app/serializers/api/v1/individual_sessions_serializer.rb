class Api::V1::IndividualSessionsSerializer < ActiveModel::Serializer
  attributes :id , :user_id, :coach_id, :session_date, :session_time, :client_full_name, :client_email, :client_phone
end
