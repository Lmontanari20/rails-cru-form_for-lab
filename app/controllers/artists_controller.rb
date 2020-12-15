class ArtistsController < ApplicationController
    before_action :set_artist, only: [:show, :edit, :update]
    
    def show
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(set_params)
        redirect_to @artist
    end

    def edit
    end

    def update
        @artist.update(set_params)
        redirect_to @artist
    end

    def set_artist
        @artist = Artist.find(params[:id])
    end
    
    private


        def set_params
            params.require(:artist).permit(:name)
        end

end