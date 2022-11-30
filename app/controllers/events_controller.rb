class EventsController < ApplicationController
  before_action :events, only: [:show]
  
  def index
    @events = Event.all
  end
  
  def show
  end

  private
  def find_event
    @events = Event.find(:id)
  end
end
