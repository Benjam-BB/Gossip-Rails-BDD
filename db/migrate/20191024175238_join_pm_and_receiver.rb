class JoinPmAndReceiver < ActiveRecord::Migration[5.2]
  def change
    add_reference :joinpmreceivers, :user, foreign_key: true
    add_reference :joinpmreceivers, :private_message, foreign_key: true
  end
end
