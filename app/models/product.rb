class Product < ApplicationRecord
    validates :name, presence: true, uniqueness:true
    validates :weight, presence: true, :numericality => { :greater_than => 0 }
    validates :width, presence: true, :numericality => { :greater_than => 0 }
    validates :height, presence: true, :numericality => { :greater_than => 0 }
    validates :depth, presence: true, :numericality => { :greater_than => 0 }

    #Associations
    has_many :product_listings
    has_many :locations, through: :product_listings

end
