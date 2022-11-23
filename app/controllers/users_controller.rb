class UsersController < ApplicationController
    def index
        render json: User.all
    end
    
    def create
        @user = User.create!(user_params)
        if @user.save
            render json: { status: 201, message: 'User created successfully!' }
        else
            render json: { status: 401, message: 'User did not created successfully!'}
        end
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end
    def edit
        @user = User.find(params[:id])
        render :edit
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            render json: { status: 201, message: 'updated created successfully!' }
        else
            render json: { status: 401, message: 'User did not updated successfully!'}
        end
    end

    private
    def user_params
        params.permit(
            :first_name,
            :last_name,
            :mobile,
            :email,
            :address,
            :photo,
            :password,
            :status,
            :user_roles_id
        )
    end

end