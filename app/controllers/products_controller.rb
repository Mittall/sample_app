class ProductsController < ApplicationController

	before_filter :authenticate_user!

	def index
		@products = Product.all
	end

	def show
	end

	def new
		@product = Product.new
	end

	def create
	end

	def destroy
	end

	private

		def product_params
			params.require(:product).permit(:category_id, :name, :price)
		end
end
