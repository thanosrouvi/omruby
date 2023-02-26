class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :email
      t.string :friend_of

      t.timestamps
    end
  end
end
