class Api::V1::DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy]

  # GET /dogs
  # GET /dogs.json
  def index
    @dogs = dog.all.order(name: :asc)
    render json: @dogs
  end

  # GET /dogs/1
  # GET /dogs/1.json
  def show
    if @dog
      render json: @dog
    else
      render json: @dog.errors
    end
  end

  # GET /dogs/new
  def new
    @dog = Dog.new
  end

  # GET /dogs/1/edit
  def edit
  end

  # POST /dogs
  # POST /dogs.json
  def create
    @dog = Dog.new(dog_params)


    if @dog.save
      render json: @dog
    else
      render json: @dog.errors
    end
  end

  # PATCH/PUT /dogs/1
  # PATCH/PUT /dogs/1.json
  def update
  end

  # DELETE /dogs/1
  # DELETE /dogs/1.json
  def destroy
    @dog.destroy

    render json: { notice: 'Dog was successfully removed.' }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog
      @dog = Dog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dog_params
      params.permit(:name, :avatar, :birthday)
    end
end