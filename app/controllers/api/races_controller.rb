class Api::RacesController < ApplicationController
  respond_to :json

  def index
    @races = Race.all
    respond_with @races
  end

  def show
    @race = Race.find params[:id]
    respond_with @race
  end

  def create
    @race = Race.new race_parameters
    if @race.save
      respond_with @race, location: api_race_path(@race)
    else
      render json: { errors: @race.errors }, status: :unprocessable_entity
    end
  end

  def update
    @race = Race.find params[:id]
    @race.update_attributes race_parameters

    respond_with @race, location: api_race_path(@race)
  end

  def destroy
    @race = Race.find params[:id]
    @race.destroy

    respond_with @race
  end

  private

  def race_parameters
    params.require(:race).permit(:name, :description, :city,  :county, :country, :start_at)
  end
end