class DonationsController < ApplicationController

    def index
        donations = Donation.all
        render json: donations
    end

    def show
        donation = Donation.find(params[:id])
        if donation
            render json: donation
        else
            render json: { message: 'Donation not found' }
        end
        
    end

    def create
        donation = Donation.new
        donation.save
        render json: donation
    end

    private

    def donation_params
        params.require(:product).permit(:brand, :donation_id, :department, :title, :image_url, :available, :shipping_price)
    end

end
