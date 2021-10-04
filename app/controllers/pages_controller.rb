class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home, :actualites]

  def home
  end

  def actualites
  end

  def admin
  end

  def client
  end

  def shop
  end

end
