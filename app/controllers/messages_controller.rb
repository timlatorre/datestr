class MessagesController < ApplicationController

	def index
	end

  def new
    @profile = User.find(params[:id])
    @message = Message.new
    @question = @profile.questions.sample

    sender = @auth.self_initiated.where(:receiver_id => params[:id]).first.try(:is_match)
    receiver = @auth.other_initiated.where(:sender_id => params[:id]).first.try(:is_match)

    if sender || receiver
      render :new
    elsif sender.nil? && !receiver
      render :question
    else
      redirect_to messages_path
    end
  end

  def create
  end

  def show
  end

  def answer
  end

end