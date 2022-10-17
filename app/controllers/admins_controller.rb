class AdminsController < ApplicationController
    def index
        admins = Admin.all
        render json: admins
    end

    def create
        admin = Admin.new(admin_params)
        if admin.save 
            render json: admin
        else
            render json: {error: "Couldnt be saved"}
        end
    end

    private
    
    def admin_params
        params.require(:admin).permit(:name, :password)
    end
end
