class ProductListing < ApplicationRecord

    # Associations
    belongs_to :product
    belongs_to :location
end
