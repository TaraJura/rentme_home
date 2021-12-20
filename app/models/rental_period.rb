class RentalPeriod < ApplicationRecord
  belongs_to :item_id
  belongs_to :user_from 
  belongs_to :user_to
end
