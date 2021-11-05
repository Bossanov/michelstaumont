class ContentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_content, only: [:show, :edit, :update]

  def index
    @contents = Content.all
  end


  def show
  end


  def new
    @content = Content.new

  end


  def edit
  end


  def create
    @content = Content.new(content_params)



    if @content.save
      redirect_to pages_admin_path
    else
      render :new
    end
  end


  def update
    if @content.update(content_params)
      redirect_to pages_admin_path
    else
      render :edit
    end
  end



  private

    def set_content
      @content = Content.find(params[:id])
    end

    def content_params
      params.require(:content).permit(:typea, :typeb, :typec, :typed, :typee, :typef, :typeg, :typeh, :typei, :typej, :typek, :typel, :typem, :typen, :typeo, :typep,:typeq, photos: [])
    end
end
