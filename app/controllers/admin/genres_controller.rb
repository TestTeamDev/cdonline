class admin::GenresController < ApplicationController

	def new

   	   @genre = Genre.new

   	end


    def create

    	genre = Genre.new(genre_params)
    	genre.save
    	#redirect_to '/top'

    end

    def index
    end

    def destroy
    end


    private

    def genre_params
    	params.require(:genre).permit(:name)
    end




end
