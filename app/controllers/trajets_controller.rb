class TrajetsController < ApplicationController
  before_action :set_trajet, only: [:show, :edit, :update, :destroy]

  # GET /trajets
  # GET /trajets.json
  def index
    @trajets = Trajet.all
  end

  # GET /trajets/1
  # GET /trajets/1.json
  def show
  end

  # GET /trajets/new
  def new
    @trajet = Trajet.new
  end

  # GET /trajets/1/edit
  def edit
  end

  # POST /trajets
  # POST /trajets.json
  def create
    @trajet = Trajet.new(trajet_params)
    @trajet.user_id = current_user.id
    respond_to do |format|
      if @trajet.save
        format.html { redirect_to @trajet, notice: 'Trajet was successfully created.' }
        format.json { render :show, status: :created, location: @trajet }
      else
        format.html { render :new }
        format.json { render json: @trajet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trajets/1
  # PATCH/PUT /trajets/1.json
  def update
    respond_to do |format|
      if @trajet.update(trajet_params)
        format.html { redirect_to @trajet, notice: 'Trajet was successfully updated.' }
        format.json { render :show, status: :ok, location: @trajet }
      else
        format.html { render :edit }
        format.json { render json: @trajet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trajets/1
  # DELETE /trajets/1.json
  def destroy
    @trajet.destroy
    respond_to do |format|
      format.html { redirect_to trajets_url, notice: 'Trajet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trajet
      @trajet = Trajet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trajet_params
      params.require(:trajet).permit(:id, :userBeneficiaireID, :userAuteurID, :departVille, :arriveeVille, :distance, :prix, :nbPlacesDisponible, :date)
    end
end
