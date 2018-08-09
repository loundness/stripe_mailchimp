class ChargesController < ApplicationController
	def new
	end

	def create
		@user = User.new


		  # Amount in cents
		  @amount = 500

		  customer = Stripe::Customer.create(
		    :email => params[:stripeEmail],
		    :source  => params[:stripeToken]
		  )

		  charge = Stripe::Charge.create(
		    :customer    => customer.id,
		    :amount      => @amount,
		    :description => 'Rails Stripe customer',
		    :currency    => 'eur'
		  )

	rescue Stripe::CardError => e
		  flash[:error] = e.message
		  redirect_to new_charge_path
	end


	def subscribe

		user = params["user"]

		gibbon = Gibbon::Request.new(api_key: ENV['MAILCHIMP_KEY'])
	  gibbon.timeout = 30
		gibbon.open_timeout = 30

		gibbon.lists(ENV['MAILCHIMP_LIST']).members.create(body:{email_address: user["email"], status: "subscribed", merge_fields:{FNAME: user["first_name"], LNAME:user["last_name"]} })

	end


end
