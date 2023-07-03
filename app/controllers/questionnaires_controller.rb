class QuestionnairesController < ApplicationController

    before_action :authenticate_user!, only: [:create, :new]


    def enquete
    end


    def index
      @questionnaire = Questionnaire.all
    end

    def show
    end

    def new
      @questionnaire = Questionnaire.new
    end

    def create
      @questionnaire = Questionnaire.new(questionnaire_params)
  
      respond_to do |format|
        if @questionnaire.save
          format.html { redirect_to merci_path, notice: 'Questionnaire was successfully created.' }
          format.json { render :show, status: :created, location: @questionnaire }
        else
          format.html { render :new }
          format.json { render json: @questionnaire.errors, status: :unprocessable_entity }
        end
      end
    end
  
    private
  
    def questionnaire_params
      params.require(:questionnaire).permit(:satisfaction, :qualite, :reason, :attention, :attention_commentaire, :tendance, :suggestion, value: [])
    end
      

end