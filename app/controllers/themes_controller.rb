class ThemesController < ApplicationController


  def new
    @theme = Theme.new

  end


  def create
    @theme = Theme.new(theme_params)
    if @theme.save

      redirect_to pages_admin_path
    else
      redirect_to pages_admin_path
      flash[:notice] = 'Une erreur est survenue, veuillez recommencer ...'
    end
  end

  def destroy
    @theme = Theme.find(params[:themeid])
    @theme.destroy
    redirect_to pages_admin_path

  end

  def effacer_theme
    @theme = Theme.find(params[:themeid])
    @theme.destroy
    redirect_to pages_admin_path
  end
  private

  def theme_params
    params.require(:theme).permit(:nom)
  end


end
