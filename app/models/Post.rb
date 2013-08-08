class Post < ActiveRecord::Base
	set_table_name "wp_posts"

	belongs_to :author, :foreign_key => "post_author", :class_name => "Author"
	has_many :comments, :foreign_key => "comment_post_ID", :class_name => "Comment" 

end