class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :spree_enquiries do |t|
      t.string :email
      t.string :subject
      t.text :body
      t.string :ip
      t.timestamps
    end
  end
end
