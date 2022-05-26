class Sweet < ApplicationRecord
    has_many :vendors, through: :vendorsweet
end
