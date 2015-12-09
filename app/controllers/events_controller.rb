class EventsController < ApplicationController
  def new
    @event = find_station.events.new
  end

  def create
    event = find_station.events.new(event_params)
    if event.save
      redirect_to stations_path
    else
      @event = event
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :station_id, :start_date, :end_date)
  end

  def find_station
    Station.find(params[:station_id])
  end

end
