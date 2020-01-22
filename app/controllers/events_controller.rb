class EventsController < ApplicationController
	def index
		events = Event.all
        render json: events, include: [:neighborhood]
	end

	def show
        event = Event.find_by(id: params[:id])
        render json: event.shows, include: :performer
    end
end
