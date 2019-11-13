class LabelsController < ApplicationController

    def create

    	label = Label.new
    	label.save
    	#redirect_to 'top'

    end

    def destroy
    end

    def index
    end




    private

    def label_params
    	params.require(:label).permit(:name)

    end





end
