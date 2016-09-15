class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :rating, numericality: {minimum: 0, maximum: 100}, allow_blank:true
  validates :author, presence: true

  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations
end
