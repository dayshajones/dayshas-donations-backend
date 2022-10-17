class PaymentIntentsController < ApplicationController

    def create
        payment_intent = Stripe::PaymentIntent.create(
            amount: params[:amount],
            currency: 'usd',
            automatic_payment_methods: {
              enabled: true,
            },
            receipt_email: params[:email],
            shipping: {
                name: params[:name],
                address: {
                    line1: params[:address][:line1],
                    city: params[:address][:city],
                    state: params[:address][:state],
                    postal_code: params[:address][:postal_code],
                },
            },
        )
        render json: {
            clientSecret: payment_intent["client_secret"]
        }
    end

end
