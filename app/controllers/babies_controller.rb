class BabiesController < ApplicationController
  def new
    @baby = Baby.new
  end

  def create
    @baby=Baby.create(baby_params)
    render nothing: true # not making anything ins
    #redirect_to :back
  end

  def edit
    @baby = Baby.find(params[:id])
  end

  def update
    render nothing: true
  end

  private
  def baby_params
    params.require(:baby).permit(:first_name, :last_name, :weight, :birth_date)
  end
  #:baby is the object passed in 
end
