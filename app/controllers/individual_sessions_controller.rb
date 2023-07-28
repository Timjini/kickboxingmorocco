class IndividualSessionsController < ApplicationController
    before_action :set_individual_session, only: [:index]
    before_action :authenticate_user_coach!, except: [:create, :new , :show ,:my_sessions]

    def index
        if current_coach.present?
        @sessions = IndividualSession.where(status: "1")
        else
            redirect_to individual_sessions_path, alert: "Vous n'avez pas les droits pour accéder à cette page."
        end
    end

    def new
        @session = IndividualSession.new
    end

    def create
        @session = IndividualSession.new(session_params)
        if @session.save
            flash[:success] = "Votre réservation a bien été prise en compte."
            redirect_to root_path
        else
            flash[:alert] = "Votre réservation n'a pas été prise en compte."
            render :new
        end
    end

    def my_sessions
        if current_user.present?
        @sessions = IndividualSession.where(client_email: current_user.email)
        else
            redirect_to root_path, alert: "Vous n'avez pas les droits pour accéder à cette page."
        end
    end

    private

    def set_individual_session
        @session = IndividualSession.find(params[:id])
    end

    def session_params
        params.require(:individual_session).permit(:user_id, :coach_id, 
                                            :session_date, :session_time, :duration, :location,:booking_type,
                                            :client_full_name, :client_phone_number, :client_email, :status)
    end

end