class SandwichesController < ApplicationController

	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def show
		sandwich = Sandwich.find_by(id: params[:id])
		if sandwich.nil?
			render json: {error: "sandwich not found"}, status 404
			return
		end
		render json: sandwich
	end

	def update
		sandwich = Sandwich.find_by(id: params[:id])
		if sandwich.nil?
			render json: {error: "sandwich not found"}, status: 404
		return
		sandwich.update(sandwich_params)
		render json: sandwich
	end


	private

	def sandwich_params
		params.require(:sandwich)
		.permit(:name, :bread_type)
	end
	# {
	# 	"sandwich": { 
	# 		"name": "Iron",
	# 		"bread_type": "White"
	# 	}
	# }
end
