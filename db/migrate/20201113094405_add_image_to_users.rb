# frozen_string_literal: true

class AddImageToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :main_img, :text
  end
end
