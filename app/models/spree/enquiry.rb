class Spree::Enquiry < ActiveRecord::Base
  attr_accessible :email, :subject, :body
  validates_presence_of :email, :subject, :body
end
