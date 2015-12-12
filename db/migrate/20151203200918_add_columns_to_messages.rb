class AddColumnsToMessages < ActiveRecord::Migration
  def change
    add_column :messages,  :sender_deleted,    :boolean,  null: false,  default: false
    add_column :messages,  :receiver_deleted,  :boolean,  null: false,  default: false

  end
end
