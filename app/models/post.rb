class Post < ActiveRecord::Base

  has_many :comments, inverse_of: :post

  validates :title, presence: true
  validates :body, presence: true

end
