class Admin::InquiresController < ApplicationController
	before_action :authenticate_admins_admin!

def index
	@inquires = Inquire.all
	@inquire = Inquire.new
end

def show
end

def update
end

end
