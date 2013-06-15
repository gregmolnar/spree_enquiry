class Spree::Admin::EnquiriesController < Spree::Admin::ResourceController
  def index
    @enquiries = Spree::Enquiry.order('created_at desc').all
  end
end