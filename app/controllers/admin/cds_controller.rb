class Admin::CdsController < ApplicationController
  def index
  	@cds = Cd.all
  	@cd = Cd.new
  end

  def show
  end

  def edit
  end

  def new
  end

  def update
  end

  def create
  end

  def destroy
  end
end
