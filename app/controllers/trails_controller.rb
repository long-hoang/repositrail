class TrailsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy]



  def index
    @trails = Trail.all
  end

  def new
    @trail = Trail.new
  end

  def create 
    @trail = current_user.trails.create(trail_params)
    if @trail.valid?
      redirect_to trails_path
    else 
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @trail = Trail.find(params[:id])
  end

  def destroy
    @trail = Trail.find(params[:id])

    if @trail.user != current_user 
      return render plain: 'Not Allowed', status: :forbidden
    end

    @trail.destroy
    redirect_to trails_path
  end


  private

  def trail_params
    params.require(:trail).permit(:name, :duration, :address)
    
  end

end
