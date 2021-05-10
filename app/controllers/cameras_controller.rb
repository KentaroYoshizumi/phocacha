class CamerasController < ApplicationController
    before_action :authenticate_user!
    
    def new
        @camera = current_user.cameras.new
    end
    
    def create
        @camera = current_user.cameras.new(camera_params)
        
        if @camera.save
            redirect_to photo_url
        else
            render :new
        end
    end
    
    private
    
    def camera_params
        params.require(:camera).permit(:image)
    end
end
