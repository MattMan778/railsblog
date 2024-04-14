class StuffsController < ApplicationController

    def new
        stuff = Stuff.new
    end

    def create
        logger.info(params)
        stuff = Stuff.create! params.permit(:content,:image)
        stuff.image.attach params[:image]
        redirect_to stuff
    end

    def show
        logger.info("This is the show method")
        logger.info(params)
        @stuff = Stuff.find(params[:id])
    end
end
