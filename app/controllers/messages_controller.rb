class MessagesController < ApplicationController

  before_action only: [:show, :new] do
    @sender = User.find params[:user_id]
    @messages = Message.conversation(current_user, @sender).order('created_at desc')
  end

  # all chat rooms
  def index
    #@chats = Message.where(receiver: current_user).

    @chats = Message.
      where('receiver_id = ? or sender_id = ?', current_user.id, current_user.id).
      select("distinct on (chatter) *,
              case when sender_id = #{current_user.id} then receiver_id else sender_id end as chatter").
      order('chatter, created_at desc')

  end

  # all messages with this user
  def new
  end

  def create
    @message = Message.where(sender: current_user).new(message_params)

    respond_to do |format|
      if @message.save
        format.html { redirect_to new_user_message_path user_id: @message.receiver_id }
        # format.html { render :new }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  def message_params
    params.require(:message).permit(:receiver_id, :body)
  end

  def bulk_operation
    msgs = Message.
            participant(current_user).
            where('id in (?)', params[:messages].map(&:to_i))

    case params[:operation_type]
    when "Mark As Read"
      # msgs.select {|e| e.mine?(current_user) }.each {|e| e.update! sender_deleted: true}
      # msgs.select {|e| e. his?(current_user) }.each {|e| e.update! receiver_deleted: true}
    when "Delete Selected"
      msgs.select {|e| e.mine?(current_user) }.each {|e| e.update! sender_deleted: true}
      msgs.select {|e| e. his?(current_user) }.each {|e| e.update! receiver_deleted: true}
    end
    redirect_to :back
  end

  private
  def chat_room_path message
    new_user_message_path user_id: [message.sender,
                                    message.receiver].
                                    reject {|e| e == current_user}.
                                    first
  end
  helper_method :chat_room_path

end
