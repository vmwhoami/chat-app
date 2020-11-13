class AddIndexToUserId < ActiveRecord::Migration[6.0]
  def change
    add_index :messages, :user_id
  end
end
