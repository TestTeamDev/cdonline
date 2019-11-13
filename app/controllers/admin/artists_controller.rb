class ArtistsController < ApplicationController


	def index
	end
	def create
		artist = Artist.new(artist_params)
   	    artist.save
   	    #redirect_to '/top'
   	end
   	def destroy
   	end




	private

	 def artist_params
	 	params.require(:artist).permit(:name)
	 end

end