class Message < ActiveRecord::Base
  belongs_to :sender, class_name: "User", foreign_key: "sender_id"
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"


  def self.conversation user1, user2
    where 'receiver_id = ? and sender_id = ? or sender_id = ? and receiver_id = ?',
      user1.id, user2.id,
      user1.id, user2.id
  end

  def self.participant user
    where 'receiver_id = ? or sender_id = ?',
      user.id, user.id
  end

  def mine? user
    sender_id == user.id
  end

  def his? user
    receiver_id == user.id
  end


  def opponent user
    if sender == user then receiver else sender end
  end
end
