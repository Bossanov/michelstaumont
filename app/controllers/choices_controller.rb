class ChoicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @choice = Choice.new

  end


  def create
    @choice = Choice.new(choice_params)
    @article = Article.where(id: params[:format])


    if @choice.typechoice == "A3"
      @choice.totalprice = @choice.totalprice + 10
    end

    if @choice.typechoice == "A4"
      @choice.totalprice = @choice.totalprice + 30
    end

    if @choice.papier == "Aluminium"
      @choice.totalprice = @choice.totalprice + 50
    end

    if @choice.papier == "Plexiglass"
      @choice.totalprice = @choice.totalprice + 80
    end

    if @choice.cadre == "Noir" || @choice.cadre == "Blanc" || @choice.cadre == "Aluminium" || @choice.cadre == "Bois"
      @choice.totalprice = @choice.totalprice + 50
    end
    @choice.save
    @panier = Panier.where(profile_id: current_user.profile.id , statut: "pending" )
    if @panier.length == 0
      @panier = Panier.new
      @panier.totalprice = @choice.totalprice
      @panier.profile_id = current_user.profile.id
      @panier.statut = "pending"
      @panier.contenu = []
      @panier.contenu << @choice.id
      @panier.typeenvoi = "pending"
      @panier.save
      redirect_to pages_panier_path(@panier)
    else
      @panier.last.totalprice = @panier.last.totalprice + @choice.totalprice
      @panier.last.contenu << @choice.id
      @panier.last.save
      redirect_to pages_panier_path(@panier.last)
    end

  end

  def destroy
    @choice = Choice.find(params[:choiceid])
    @choice.destroy
    redirect_to pages_admin_path

  end


  private

  def choice_params
    params.require(:choice).permit(:articleid, :typechoice, :totalprice, :papier, :cadre)
  end
end
