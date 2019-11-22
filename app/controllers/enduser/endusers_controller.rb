class Enduser::EndusersController < ApplicationController
	before_action :authenticate_endusers_enduser!

	def show
        @enduser = Enduser.find(params[:id])
      if current_endusers_enduser.id != @enduser.id
		redirect_to root_path
	  end
    end

   def edit
		@enduser = Enduser.find(params[:id])
	 if current_endusers_enduser.id != @enduser.id
		redirect_to enduser_enduser_path(current_endusers_enduser)
	 end
   end


	def leave
		@enduser = Enduser.find(params[:id])

	end


   def update
		@enduser = Enduser.find(params[:id])
     if @enduser.update(enduser_params)
         flash[:notice] = 'successfully'
         redirect_to enduser_enduser_path(current_endusers_enduser.id)
     else
    	render 'edit'
    end
   end



	def destroy
		@enduser = Enduser.find(params[:id])
        @enduser.destroy
        redirect_to root_path
	end


private

	def enduser_params
	    params.require(:enduser).permit(:first_name, :last_name, :reading_first_name, :reading_last_name, :postcode, :address, :phone_number, :email)
	end

end
