class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.text :content
      t.belongs_to :user, index: true #l'expéditeur du message

      t.timestamps
    end
  end
end
