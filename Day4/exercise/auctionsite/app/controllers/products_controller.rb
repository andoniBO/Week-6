class ProductsController < ApplicationController
  def index
    @products = Product.all.order("lower(title) ASC")
  end

  def show
    # @user = User.find(params[:id])
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(
      title: params[:product][:title],
      description: params[:product][:description],
      deadline: params[:product][:deadline]
    )
    @product.save
    redirect_to "/products/"
  end

  def destroy
    Product.destroy(params[:id])
    redirect_to "/products/"
  end
end
