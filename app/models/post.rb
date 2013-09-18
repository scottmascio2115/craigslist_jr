class Post < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :category
  def date
    full_date = self.created_at
    "#{full_date.year}-#{full_date.month}-#{full_date.day}"
  end
end
