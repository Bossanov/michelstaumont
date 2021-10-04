class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  def index
    @articles = Article.all
  end

  # GET /articles/1
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit

  end

  # POST /articles
  def create
    @article = Article.new(article_params)
    @article.typearray = params[:search][:typearray]
    @article.papierarray = params[:search][:papierarray]
    @article.cadrearray = params[:search][:cadrearray]
    if @article.save
      redirect_to pages_admin_path, notice: 'L article a été correctement enregistré.'
    else
      render :new
    end
  end

  # PATCH/PUT /articles/1
  def update
    if @article.update(article_params)
      redirect_to pages_admin_path, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy
    redirect_to pages_admin_path, notice: "L'article a été effacé de la base de données"
  end

  def supprimer_article
    @article = Article.where(id: params[:articleid])

    @article.last.destroy
    flash[:alert] = "L'article a été effacé de la base de donnée."
    redirect_to pages_admin_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :price,:body, :typearray, :papierarray, :cadrearray, :statut, photos: [])
    end
end
