class ApplicationController < ActionController::Base
  
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
	      when :enduser
	        root_path
	      when :admins_admin
	        new_admins_admin_session_path
	end
  end
end
