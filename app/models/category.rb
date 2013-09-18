class Category < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts
  def post_count
    self.posts.count
  end
end
