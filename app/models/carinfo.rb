class Carinfo < ApplicationRecord
validates :plate,format:{with:/\d+[A-Z]/},uniqueness:true ,presence: true
validates :car_id, presence: true
validates :owner , presence: true
    belongs_to :car
end
