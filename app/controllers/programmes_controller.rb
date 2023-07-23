class ProgrammesController < ApplicationController
    before_action :set_programme, only: [:show, :edit, :update, :destroy]

    def index
        @programmes = Programme.all
    end

    def show
    end

    def new
        @programme = Programme.new
    end

    def create
        @programme = Programme.new(programme_params)
        if @programme.save
            redirect_to @programme, notice: 'Programme was successfully created.'
            flash[:notice] = "Programme was successfully created."
        else
            render :new
            flash[:alert] = "Programme was not created."
        end
    end


    private

    def set_programme
        @programme = Programme.find(params[:id])
    end

    def programme_params
        params.require(:programme).permit(:name, :description, :type, :duration, :level, :price, :jour, :heure, :groupe, :status)
    end
end