class Admin::GenresController < ApplicationController

	def new

        @genre = Genre.new
        @label = Label.new
        @artist = Artist.new

    end



    def create

    	@genre = Genre.new(genre_params)
    	if @genre.save
           flash[:notice] = "1文字以上入力して下さい"
    	redirect_to new_admin_genre_path
        else
        @label = Label.new
        @artist = Artist.new
        render 'new'
        end
    end


    def index
        @genres = Genre.all
    end

    def destroy
        genre = Genre.find(params[:id])
        genre.destroy
        redirect_to admin_genres_path

    end


    private

    def genre_params
    	params.require(:genre).permit(:name)
    end

end






