class TrainingsController < ApplicationController
  before_action :set_training, only: %i[ show update destroy ]

  # GET /trainings
  def index

    @trainings = Training.where(user_id: params[:user_id])

    render json: @trainings
  end

  # GET /trainings/1
  def show
    render json: @training
  end

  # POST /trainings
  def create
    @training = Training.new(training_params)

    if @training.save
      render json: @training, status: :created
    else
      render json: @training.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trainings/1
  def update
    if @training.update(training_params)
      render json: @training
    else
      render json: @training.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trainings/1
  def destroy
    @training.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training
      @training = Training.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def training_params
      params.fetch(:training, {}).permit(:id, :location, :distance, :duration, :start_hour, :training_date, :feel, :user_id)
    end
end
