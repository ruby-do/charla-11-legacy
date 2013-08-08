class Author < ActiveRecord::Base
	set_table_name "wp_users"

	has_many :posts, :foreign_key => "ID", :class_name => "Post" 
end