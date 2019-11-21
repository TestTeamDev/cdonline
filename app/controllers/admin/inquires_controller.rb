class Admin::InquiresController < ApplicationController

def index
	@inquires = Inquire.all
	@inquire = Inquire.new
end

def show
end

def update
end

end
