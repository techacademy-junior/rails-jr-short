class AddSubdatasToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :answer, :integer
    add_reference :messages, :question, foreign_key: true
    add_column :messages, :robo, :integer, default: false, null: false
    add_column :messages, :finished, :integer, default: false, null: false
  end
end
