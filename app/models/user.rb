class User < ApplicationRecord
  has_many :items
  has_many :notes
  has_many :rental_periods
  has_many :rented_items
  has_many :items_rented_to_others

end