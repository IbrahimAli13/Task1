class Car < ApplicationRecord
  validates :brand_name, presence: true
  validates :model, inclusion: { in: 1985..2030, message: 'The Model must be between 1985 and 2030' }
  validates :color , presence: true 
  



  has_one :carinfo

end
