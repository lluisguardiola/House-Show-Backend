class ShowsController < ApplicationController
    def create
        show = Show.create(event_id: params[:event_id],performer_id: params[:performer_id], name: params[:name])

        render json: show, include: :performer
    end
end
