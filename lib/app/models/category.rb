class Category < ActiveRecord::Base
  validates :genre, presence: true, uniqueness: true
  
  has_many :categorizations
  has_many :books, through: :categorizations
end
