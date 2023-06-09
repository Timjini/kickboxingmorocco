module IndividualSessionsHelper

    def create_single_booking_user(user,client_email)
        user = User.find_by(email: client_email)
            if user.nil?
            User.create(
                email: client_email,
                password: "password",
                )
            else 
                user
            end
    end
end