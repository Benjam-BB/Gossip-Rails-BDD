class User < ApplicationRecord
    belongs_to :city
    has_many :articles
    has_many :private_messages
    has_many :joinpmreceivers
    has_many :private_messages, through: :joinpmreceivers
end
