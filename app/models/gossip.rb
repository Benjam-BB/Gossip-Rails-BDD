class Gossip < ApplicationRecord
    belongs_to :user
    has_many :jointaggossips
    has_many :tags, through: :jointaggossips
end
