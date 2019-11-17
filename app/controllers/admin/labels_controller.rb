class Admin::LabelsController < ApplicationController




    def create 
    	@label = Label.new(label_params)
        if @label.save
           flash[:notice] = "1文字以上入力して下さい"
        redirect_to new_admin_genre_path
        else
        @genre = Genre.new
        @artist = Artist.new
        render 'admin/genres/new'
        end
    end

    def destroy
        label = Label.find(params[:id])
        label.destroy
        redirect_to admin_labels_path
    end

    def index
        @labels = Label.all
    end




    private

    def label_params
    	params.require(:label).permit(:name)

    end





end
