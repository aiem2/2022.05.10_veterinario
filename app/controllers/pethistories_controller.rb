class PethistoriesController < ApplicationController
  before_action :set_pethistory, only: %i[ show edit update destroy ]

  # GET /pethistories or /pethistories.json
  def index
    @pethistories = Pethistory.all
  end

  # GET /pethistories/1 or /pethistories/1.json
  def show
  end

  # GET /pethistories/new
  def new
    @pethistory = Pethistory.new
    @pets = Pet.all
  end

  # GET /pethistories/1/edit
  def edit
    @pets = Pet.all
  end

  # POST /pethistories or /pethistories.json
  def create
    @pethistory = Pethistory.new(pethistory_params)
    @pethistory.client_id = @pethistory.pet.client_id 

    respond_to do |format|
      if @pethistory.save
        format.html { redirect_to pethistory_url(@pethistory), notice: "Registro de historial creado con éxito." }
        format.json { render :show, status: :created, location: @pethistory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pethistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pethistories/1 or /pethistories/1.json
  def update
    respond_to do |format|
      if @pethistory.update(pethistory_params)
        format.html { redirect_to pethistory_url(@pethistory), notice: "Registro de historial actualizado con éxito." }
        format.json { render :show, status: :ok, location: @pethistory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pethistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pethistories/1 or /pethistories/1.json
  def destroy
    @pethistory.destroy

    respond_to do |format|
      format.html { redirect_to pethistories_url, notice: "Registro de historial eliminado con éxito." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pethistory
      @pethistory = Pethistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pethistory_params
      params.require(:pethistory).permit(:weight, :height, :diagnostic, :pet_id, :client_id)
    end
end
