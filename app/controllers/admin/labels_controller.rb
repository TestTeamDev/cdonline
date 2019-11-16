class Admin::LabelsController < ApplicationController




    def create

    	@label = Label.new(label_params)
    	@label.save
    	redirect_to new_admin_genre_path
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
