class Location < ApplicationRecord

    #Enumeration for the Canadian provinces
    enum province: [:"Alberta", :"British Columbia", :"Manitoba", :"New Brunswick", :"Newfoundland and Labrador", :"Northwest Territories", :"Nova Scotia", :"Nunavut", :"Ontario", :"Prince Edward Island", :"Quebec", :"Saskatchewan", :"Yukon"]

    validates :name, presence: true, uniqueness:true
    validates :addressline1, presence: true
    validates :province, presence: true
    validates :city, presence: true
    validates :postalcode, presence: true

    #Associations
    has_many :product_listings
    has_many :products, through: :product_listings
end

