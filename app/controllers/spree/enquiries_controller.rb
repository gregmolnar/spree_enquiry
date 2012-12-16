class Spree::EnquiriesController < Spree::StoreController
  def new
    @enquiry = Spree::Enquiry.new
  end

  def create
    @enquiry = Spree::Enquiry.new(params[:enquiry])
    if @enquiry.save
      redirect_to root_path, :notice => t('spree_enquiry.successfully_submitted')
    else
      render :action => "new"
    end
  end
end
