class WeeklyResourcesController < ApplicationController
  skip_before_action :authorize

  def index
    @weekly_resources = WeeklyResource.all
  end

  def show
    @weekly_resource = WeeklyResource.find(params[:id])
  end


  def new
    @weekly_resource = WeeklyResource.new
  end

  def create
    @weekly_resource = WeeklyResource.new(weekly_resource_params)
 
    if @weekly_resource.save
      redirect_to @weekly_resource
    else
      render 'new'
    end
  end

  def creative_response
    @weekly_resource = WeeklyResource.find(params[:id])
  end

  def memory_verse
  	@weekly_resource = WeeklyResource.find(params[:id])
  end

  def mealtime_prayer
  	@weekly_resource = WeeklyResource.find(params[:id])
  end

  def season_description
  	@weekly_resource = WeeklyResource.find(params[:id])
  end
 
  private
  def weekly_resource_params
    params.require(:weekly_resource).permit(:creative_response, :memory_verse, :mealtime_prayer, :season_description)
  end
end
