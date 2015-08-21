class ActorsController < ApplicationController

	def index
		@actors= Actor.all
	end

	def new
		 @actor= Actor.new		
	end

	def create
		@actor= Actor.new(actor_params)
		@actor.save
		redirect_to  actors_path, notice: 'El actor ha sido agregado con exito'
	end

	private

	def actor_params
		params.require(:actor).permit(:name, :birth_date, :birth_place, :bio, :image_url, :death_date, :death_place, :alive)
	end

end
