class Checkout < ActiveRecord::Base
  validates :book, presence: true
  validates :due_date, numericality: true

  belongs_to :book
  belongs_to :reader
end
