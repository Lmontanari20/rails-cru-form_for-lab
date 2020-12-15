class GenresController < ApplicationController
    before_action :set_genre, only: [:show, :edit, :update]
    
    def show
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(set_params)
        redirect_to @genre
    end

    def edit
    end

    def update
        @genre.update(set_params)
        redirect_to @genre
    end

    private

    def set_genre
        @genre = Genre.find(params[:id])
    end

    def set_params
        params.require(:genre).permit(:name)
    end

end