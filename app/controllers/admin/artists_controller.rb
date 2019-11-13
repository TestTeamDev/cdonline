class ArtistsController < ApplicationController

   def new
   	   @artist = Artist.new
   end

 　def index
   end
　 def create
   	artist = Artist.new(artist_params)
   	artist.save
   	#redirect_to '/top'
   end

end




private

 def artist_params
 	params.require(:artist).permit(:name)
 end