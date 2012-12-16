Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar", 
			         :name => "ad_link_to_main_nav", 
			         :insert_bottom => "#main-nav-bar",
			         :text => '<li><%= link_to t("spree_enquiry.enquiry"), new_enquiry_path %></li>'
			         )