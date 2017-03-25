class ShoutsController < ApplicationController
    def inde
        @shouts = Shout.all.order(created_at: :desc)
        @shut = Shout.new
    end
    end
    def create
        @shout = Shout.new(shout_params)
        if @shout.save
            flash[:notice] = "Shout created successfully!"
            redirect_to shouts_path
        else 
            flash[:alert] = "Content can't be blank"
            redirect_to shouts_path
        end
    end

    private

    def shout_params
        params.require(:shout).permit(:contents)
    end
