class ChargesController < ApplicationController
  before_action :amount_to_be_charged
  before_action :description
  before_action :authenticate_user!


  def new
  end

  def thanks
  end

  def create
    customer = StripeTool.create_customer(email: params[:stripeEmail],
                                          stripe_token: params[:stripeToken])

    charge = StripeTool.create_charge(customer_id: customer.id,
                                      amount: @amount,
                                      description: @description)

    @panier = Panier.find_by profile_id: current_user.profile.id, statut: "pending"
    @panier.statut = "paid"
    @panier.save
    @commande = Commande.new
    @commande.statut = "pending"
    @commande.panier_id = @panier.id
    @commande.save

    redirect_to thanks_path

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private

    def amount_to_be_charged
      @amount = 500
    end

    def description
      @description = "Some amazing product"
    end
end

