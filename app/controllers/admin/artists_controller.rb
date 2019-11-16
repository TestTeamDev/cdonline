class Admin::ArtistsController < ApplicationController


	def index
		@artists = Artist.all
	end

	def create
		artist = Artist.new(artist_params)
   	    artist.save
   	    redirect_to new_admin_genre_path
   	end


   	def destroy
   		artist = Artist.find(params[:id])
        artist.destroy
        redirect_to admin_artists_path
   	end




	private

	 def artist_params
	 	params.require(:artist).permit(:name)
	 end

end