class ShoutsController < ApplicationController
    def index
        @shouts = Shout.all.order(created_at: :desc)
        @shout = Shout.new
    end
    
    def create
        @shout = Shout.new(shout_params)
        if @shout.save
            flash[:notice] = "Shout created successfully!"
            redirect_to :back
        else 
            flash[:alert] = "Content can't be blank"
            redirect_to shouts_path
        end
    end

    private

    def shout_params
        params.require(:shout).permit(:content)
    end
end