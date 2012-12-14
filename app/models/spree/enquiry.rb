class Spree::Enquiry < ActiveRecord::Base
  attr_accessible :email, :subject, :body
end
