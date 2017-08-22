class VendorsController < ApplicationController
  def new
  	@vendor = Vendor.new
  end

  def create
  	@vendor = Vendor.new(vendor_params)
  	if @vendor.save
  		redirect_to @vendor, notice: 'User was successfully created!' 
  	else
  		# render :text => "here"
  		render action: "new"	
	end	
 	end

	def show
		@vendor = Vendor.find(params[:id])
	end

	private 
		def vendor_params
				params.require(:vendor).permit(:name, :email, :password,:password_confirmation)
	end
end