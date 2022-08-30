class ApplicationController < ActionController::API

    def encode_token(admin_id)
        JWT.encode({admin_id: admin_id}, ENV["JWT_SECRET"])
    end
end
