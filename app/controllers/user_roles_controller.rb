class UserRolesController < ApplicationController
    def index
        render json: UserRole.all
    end
end
