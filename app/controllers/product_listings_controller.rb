class ProductListingsController < ApplicationController
  def index
  end

  def new
    @products = Product.all
    @locations = Location.all
    @product_listing = ProductListing.new
  end

  def create
    this_product = ProductListing.where(product_id: params[:product_listing][:product_id], location_id: params[:product_listing][:location_id]).first

    
    if this_product.present? && params[:product_listing][:quantity].present?
      this_product.quantity = this_product.quantity + params[:product_listing][:quantity].to_i
      if this_product.save
        redirect_to products_path
      else 
        redirect_to new_product_listing_path, flash: { error: "Please select a quantity" }
      end
    else
      product_listing = ProductListing.new(product_listing_params)
      if product_listing.save
        redirect_to products_path
      else
        redirect_to new_product_listing_path, flash: { error: "Please select a quantity" }
      end
    end

  end

  def edit
    @products = Product.all
    @locations = Location.all
    @product_listing = ProductListing.find(params[:id])
  end

  def update
    @product_listing = ProductListing.find(params[:id])
    

    if @product_listing.update(product_listing_params)
      redirect_to product_path(params[:product_listing][:product_id])
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product_listing = ProductListing.find(params[:id])
    @product_listing.destroy
    
    redirect_to product_path(@product_listing.product_id), status: :see_other
  end


  private
    def product_listing_params
      params.require(:product_listing).permit(:quantity, :location_id, :product_id)
    end

end
