class JoinTagAndGossips < ActiveRecord::Migration[5.2]
  def change
    add_reference :jointaggossips, :gossip, foreign_key: true
    add_reference :jointaggossips, :tag, foreign_key: true
  end
end
