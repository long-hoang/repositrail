class TrailsController < ApplicationController

  def index
    @trails = Trail.all
  end

  def new
    @trail = Trail.new
  end

  def create 
    Trail.create(trail_params)
    redirect_to trails_path
  end


  private

  def trail_params
    params.require(:trail).permit(:name, :duration, :address)
    
  end

end
