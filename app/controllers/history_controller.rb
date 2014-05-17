class HistoryController < ApplicationController
  def index
  		@tickets = Ticket.all
  end
end