class PrivateMessage < ApplicationRecord
    belongs_to :user #l'expéditeur d'un PM
    has_many :joinpmreceivers
    has_many :users, through: :joinpmreceivers #le ou les receveurs d'un PM 
end
