class PaniersController < ApplicationController
  before_action :set_panier, only: [:show, :edit, :update, :destroy]

  # GET /paniers
  def index
    @paniers = Panier.all
  end

  # GET /paniers/1
  def show
  end

  # GET /paniers/new
  def new
    @panier = Panier.new
  end

  # GET /paniers/1/edit
  def edit
  end

  # POST /paniers
  def create
    @panier = Panier.new(panier_params)

    if @panier.save
      redirect_to @panier, notice: 'Panier was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /paniers/1
  def update
    if @panier.update(panier_params)
      redirect_to @panier, notice: 'Panier was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /paniers/1
  def destroy
    @panier.destroy
    redirect_to paniers_url, notice: 'Panier was successfully destroyed.'
  end

  def supprimer_article_panier
    @choix = Choice.where(id: params[:format])
    @article = Article.where(id: @choix.last.articleid)
    @panier = Panier.find_by profile_id: current_user.profile.id, statut: "pending"
    @panier.contenu.delete(@choix.last.id)
    @panier.totalprice = @panier.totalprice - @choix.last.totalprice
    @panier.save
    redirect_to pages_panier_path

  end


  def success
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panier
      @panier = Panier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def panier_params
      params.require(:panier).permit(:statut, :totalprice, :typeenvoi)
    end
end
