class UserSarafisController < ApplicationController
    
    def userIndex
        # render json: UserSarafi.find_by(:users_id)
        render json: UserSarafi.where(users_id: params[:users_id])
    end
    def index
        render json: UserSarafi.where(sarafis_id: params[:sarafis_id])
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
