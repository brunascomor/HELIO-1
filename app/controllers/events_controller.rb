class EventsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
    def show
        @event = Event.find(params[:id])
        @reviews = @event.reviews
        @review = Review.new
        @markers =[
            {
                lat: @event.latitude,
                lng: @event.longitude
            }
        ]
    end

  def index
    @events = Event.all
  end
end
