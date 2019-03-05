class EventsController < ApplicationController
before_action :authenticate_user!, only: [:create, :new, :show]
  def index
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    event = Event.create(description: params[:description], title: params[:title], location: params[:location], admin_id: current_user.id, duration: params[:duration].to_i, price: params[:price].to_i)
    puts "$"*60
    puts params
    puts "$" * 60
    if event.save
      redirect_to root_path
    else
      redirect_to new_event_path
    end
  end

end
