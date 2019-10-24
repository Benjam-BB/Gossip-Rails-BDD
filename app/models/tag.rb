class Tag < ApplicationRecord
    has_many :jointaggossips
    has_many :gossips, through: :jointaggossips
end
