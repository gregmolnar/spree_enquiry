class Spree::EnquiriesController < Spree::StoreController
  def new
    @enquiry = Spree::Enquiry.new
  end

  def create
    @enquiry = Spree::Enquiry.new(params[:enquiry])
    unless params[:details][:full_name].blank?
      redirect_to root_path, :notice => t('spree_enquiry.successfully_submitted') 
    else
      @enquiry.ip = request.ip
      if @enquiry.save
        redirect_to root_path, :notice => t('spree_enquiry.successfully_submitted')
      else
        render :action => "new"
      end
    end
  end
end
