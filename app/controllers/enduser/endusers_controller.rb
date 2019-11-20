class Enduser::EndusersController < ApplicationController

 def show
        @enduser = Enduser.find(params[:id])
	end

   def edit
		@enduser = Enduser.find(params[:id])
	 if current_endusers_enduser.id != @enduser.id
		redirect_to enduser_enduser_path(current_endusers_enduser)
	end
  end


	end

	def leave

	end

   def update
		@enduser = Enduser.find(params[:id])
     if  @enduser.update(enduser_params)
      flash[:notice] = 'successfully'
      redirect_to enduser_enduser_path(@enduser.id)
     else
    	render 'enduser/endusers/show'
    end
   end

	def destroy
	end


