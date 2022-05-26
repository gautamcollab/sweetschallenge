class Vendor < ApplicationRecord
    has_many :sweets, through: :vendorsweet
end
