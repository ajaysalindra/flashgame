class GamesController < ApplicationController
	def index
		@games = Game.all
	end

	def new
		@game = Game.new
	end

	def create
		@game = Game.new(params[:game])
		if @game.save
			flash[:notice] = "Successfully Added Game"
			redirect_to @game
			else
			render :action => 'new'
		end
	end


	def edit
		@game = Game.find(params[:id])
	end

	def update
		@game = Game.find(params[:id])
		if @game.update_attributes(params[:game])
			flash[:notice] = "Successfully updated Game"
			redirect_to @game
			else
				render :action => 'edit'
		end
	end

	def show
		@game = Game.find(params[:id])
	end
end

