oclass TicketMailer < ActionMailer::Base
  default from: "testnikart@gmail.com",
          subject: "ticket answer"


  def send_mail(ticket)
    @ticket = ticket
    @status = @ticket.status
    @code = @ticket.code

    mail to: @ticket.email, subject: 'Your request has been received'
  end

  def send_answer(ticket)
    @ticket = ticket
    @status = @ticket.status
    @code = @ticket.code
    @answer = @ticket.answer

    mail to: @ticket.email, subject: 'Your answer to ticket'
  end
end
