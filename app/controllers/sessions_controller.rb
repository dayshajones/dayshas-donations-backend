class SessionsController < ApplicationController

    def create
        admin = Admin.find_by_name(params[:name])
        if admin && admin.authenticate(params[:password])
            render json: admin
        else
            render json: {error: "Invalid Login"}
        end
    end

end
