class QuestionnaireSeniorsController < ApplicationController

  before_action :authenticate_user!, only: [:create, :new]

  def index
    @questionnaire = QuestionnaireSenior.all
  end

  def show
  end

  def new
    @questionnaire = QuestionnaireSenior.new
  end

  def create
    @questionnaire = QuestionnaireSenior.new(questionnaire_params)

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
    params.require(:questionnaire_senior).permit(:satisfaction, :qualite, :gym_commentaire, :tendance, :suggestion, :securite, value: [], discipline: [])
  end

end