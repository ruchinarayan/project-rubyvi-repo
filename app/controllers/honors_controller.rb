class HonorsController < ApplicationController
  def index
  	@honors= Honor.all
  end
end
