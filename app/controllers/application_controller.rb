class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # ログイン後のリダイレクト先
  def after_sign_in_path_for(resource)
      case resource
	      when Enduser
	        root_path
	      when Admin
	        admin_cds_path
	  end
  end

  # ログアウト後のリダイレクト先
  def after_sign_out_path_for(resource)
  	# debugger
    case resource
	      when :endusers_enduser
	        root_path
	      when :admins_admin
	        new_admins_admin_session_path
	end
  end

  before_action :set_search

  def set_search
    @q = Cd.ransack(params[:q])
    @cds = @q.result(distinct: true)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :first_name, :last_name, :reading_first_name, :reading_last_name, :postcode, :address, :phone_number])

  end

end
