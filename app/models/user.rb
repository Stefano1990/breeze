class User < ActiveRecord::Base
  has_many :posts, :as => :author
end
