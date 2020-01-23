class EventsController < ApplicationController
	def index
		events = Event.all
        render json: events, include: :neighborhood
	end

	def show
        event = Event.find_by(id: params[:id])
        render json: event.shows, include: :performer
    end

    def create
        event = Event.create(name: params[:name], address: params[:address], start_time: params[:start_time], neighborhood_id: params[:neighborhood_id] , interested_count: params[:interested_count])
        render json: event, include: :neighborhood
    end
end
