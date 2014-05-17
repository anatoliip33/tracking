class TicketController < ApplicationController
	def index
		@tickets = Ticket.all
	end

	def show
	end

	def new
		@ticket = Ticket.new
	end

	def edit
	end

	def create
	   @ticket = Ticket.new(ticket_params)

	   respond_to do |format|
	      if @ticket.save
	        format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
	        format.json { render action: 'show', status: :created, location: @ticket }
	      else
	        format.html { render action: 'new' }
	        format.json { render json: @ticket.errors, status: :unprocessable_entity }
	      end
	   end
	end

	def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url }
      format.json { head :no_content }
    end
  end

  private

  def ticket_params
      params.require(:ticket).permit(:name, :email, :department, :subject, :request)
   end

end