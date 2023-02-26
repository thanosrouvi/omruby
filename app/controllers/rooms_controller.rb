class RoomsController < ApplicationController
<<<<<<< HEAD
  before_action :authenticate_customer!
=======
  before_action :authenticate_user!
>>>>>>> refs/remotes/origin/main

  def index
    @room = Room.new
    @rooms = Room.public_rooms

<<<<<<< HEAD
    @customers = Customer
  
=======
    @users = User.all_except(current_user)
>>>>>>> refs/remotes/origin/main
    render 'index'
  end

  def show
    @single_room = Room.find(params[:id])

    @room = Room.new
    @rooms = Room.public_rooms

    @message = Message.new
    @messages = @single_room.messages.order(created_at: :asc)

<<<<<<< HEAD
   # @customer = Customer.all_except(current_customer)
=======
    @users = User.all_except(current_user)
>>>>>>> refs/remotes/origin/main
    render 'index'
  end

  def create
    @room = Room.create(name: params['room']['name'])
  end
end
