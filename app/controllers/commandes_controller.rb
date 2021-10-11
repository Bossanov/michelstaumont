class CommandesController < ApplicationController
  before_action :set_commande, only: [:show, :edit, :update, :destroy]

  # GET /commandes
  def index
    @commandes = Commande.all
  end

  # GET /commandes/1
  def show
  end

  # GET /commandes/new
  def new
    @commande = Commande.new
  end

  # GET /commandes/1/edit
  def edit
  end

  # POST /commandes
  def create
    @commande = Commande.new(commande_params)

    if @commande.save
      redirect_to @commande, notice: 'Commande was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /commandes/1
  def update
    if @commande.update(commande_params)
      redirect_to @commande, notice: 'Commande was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /commandes/1
  def destroy
    @commande.destroy
    redirect_to commandes_url, notice: 'Commande was successfully destroyed.'
  end

  def commande_envoyee
    @commande = Commande.find_by id: params[:format]
    @commande.envoi = "yes"
    @commande.statut = "finished"
    @commande.suivi = params[:title]
    @commande.save
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commande
      @commande = Commande.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def commande_params
      params.require(:commande).permit(:statut)
    end
end
