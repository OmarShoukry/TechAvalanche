class Product < ApplicationRecord
    validates :name, presence: true, uniqueness:true
    validates :weight, presence: true
    validates :width, presence: true
    validates :height, presence: true
    validates :depth, presence: true

    #Associations
    has_many :product_listings
    has_many :locations, through: :product_listings

end
