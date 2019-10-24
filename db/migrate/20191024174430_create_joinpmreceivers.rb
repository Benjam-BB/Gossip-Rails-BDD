class CreateJoinpmreceivers < ActiveRecord::Migration[5.2]
  def change
    create_table :joinpmreceivers do |t|

      t.timestamps
    end
  end
end
