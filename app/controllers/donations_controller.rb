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
        donation = Donation.new(donation_params)
        donation.save
        render json: donation
    end

    def destroy
        donation = Donation.find_by_id(params[:id])
        donation.destroy 
        render json: {message: "Successfully deleted"}
      end

    private 

    def donation_params
        params.require(:donation).permit(:id, :brand, :department, :size, :title, :image_url, :available, :shipping_price, :admin_name, :admin_id)
    end

end