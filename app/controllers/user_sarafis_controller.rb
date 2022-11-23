class UserSarafisController < ApplicationController
    def create
        @user = User.find(params[:id])
        @sarafi = Sarafi.find(params[:id])
        @userSarafi = UserSarafi.create(users_id: @user.id, sarafis_id: @sarafi.id)
        if @userSarafi.save
            render json: { status: 201, message: 'Relation created successfully!' }
        else
            render json: { status: 401, message: 'Relation did not updated successfully!'}
        end
    end
end
