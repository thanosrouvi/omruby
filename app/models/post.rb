class Post < ApplicationRecord

<<<<<<< HEAD
  validates :title, :body, presence: true 
  has_many :comments
  belongs_to :comments
=======
	validates :title, :body, presence: true 
	has_many :comments
	belongs_to :comments
>>>>>>> refs/remotes/origin/main
end
