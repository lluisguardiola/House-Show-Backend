class PerformersController < ApplicationController
	def index
		performers = Performer.all
        render json: performers
	end
end
