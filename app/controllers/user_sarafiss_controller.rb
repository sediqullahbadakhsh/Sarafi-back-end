class UserSarafissController < ApplicationController
    
    def index
        render json: UserSarafi.where(users_id: params[:users_id])
    end
    
    def create
        @userSarafi = UserSarafi.create(userSarafi_params)
        if @userSarafi.save
            render json: { status: 201, message: 'Relation created successfully!' }
        else
            render json: { status: 401, message: 'Relation did not updated successfully!'}
        end
    end

    private
    def userSarafi_params
        params.permit(:users_id, :sarafis_id)
    end
end
