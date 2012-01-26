class Post < ActiveRecord::Base
  belongs_to :author, :class_name => "User", :foreign_key => "author_id"
  has_many :comments

  validates_presence_of :title, :body, :author
  validates_length_of :title, :minimum => 3

  default_scope :order => "created_at DESC"

end
