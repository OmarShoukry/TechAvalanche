class ProductListing < ApplicationRecord

    validates :quantity, presence: true
    
    # Associations
    belongs_to :product
    belongs_to :location
end
