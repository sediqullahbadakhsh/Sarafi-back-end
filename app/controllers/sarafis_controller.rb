class SarafiController < ApplicationController
    def index
        render json: Sarafi.all
    end
    
    def create
        @sarafi = Sarafi.create!(sarafi_params)
        if @sarafi.save
            render json: { status: 201, message: 'Sarafi created successfully!' }
        else
            render json: { status: 401, message: 'Sarafi did not created successfully!'}
        end
    end

    def show
        render json: Sarafi.find(params[:id])
    end

    def update
        @sarafi = Sarafi.find_by(params[:id])
        @sarafi.update(Sarafi_params)
        if @sarafi.save
            render json: { status: 201, message: 'updated created successfully!' }
        else
            render json: { status: 401, message: 'Sarafi did not updated successfully!'}
        end
    end

    private
    def sarafi_params
        params.permit(
            :sarafi_code,
            :sarafi_name,
            :owner,
            :license_number,
            :mobile,
            :email,
            :address,
            :logo,
            :status
        )
    end
end
