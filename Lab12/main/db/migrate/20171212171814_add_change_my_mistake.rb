class AddChangeMyMistake < ActiveRecord::Migration[5.1]
  def change
      rename_column :users, :password_digit, :password_digest
  end
end
