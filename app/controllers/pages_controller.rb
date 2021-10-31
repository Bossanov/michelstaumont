class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home, :actualites, :choixoptions, :gallery]

  def home
  end

  def actualites
  end

  def admin
  end

  def client
  end



  def test
  end

  def choixoptions
  end

  def panier
  end

  def gallery
  end

  def legal
  end
end
