class Admin::ArtistsController < ApplicationController
  before_action :authenticate_admins_admin!

	def index
		@artists = Artist.all
	end

	def create
		@artist = Artist.new(artist_params)
		if @artist.save
           flash[:notice] = "1文字以上入力して下さい"
    	redirect_to new_admin_genre_path
        else
        @label = Label.new
        @genre = Genre.new
        render 'admin/genres/new'
        end
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