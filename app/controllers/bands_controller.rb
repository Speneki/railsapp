class BandsController < ApplicationController
    def index
        Bands.all
    end

    def create
        @band = band.find_by(params[:id])
        if @band.save
            flash.now = 'ya saved a band bruh'
            render :show
        else
            flash[:errors] = @band.errors.full_messages
            redirect_to bands_url
        end
    end

    def new
        @band = Band.new
    end

    def edit
    end

    def show
    end
    
    def update
    end

    def destroy
    end
end