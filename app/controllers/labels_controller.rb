class LabelsController < ApplicationController
	def new
   	   @label = Label.new
   	end


    def create

    	label = Label.new
    	label.save
    	#redirect_to 'top'

    end




    private

    def label_params
    	params.require(:label).permit(:name)

    end





end
