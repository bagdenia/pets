class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender_id,    index: true,  null: false
      t.integer :receiver_id,  index: true,  null: false

      t.text :body
      t.boolean :unread

      t.timestamps null: false
    end
    # add_index :messages, :user_id
    add_foreign_key :messages, :users, column: :sender_id
    add_foreign_key :messages, :users, column: :receiver_id
  end
end
