class TicketMailer < ActionMailer::Base
  default from: "testnikart@gmail.com",
          subject: "ticket answer"


  def send_mail(ticket)
    @ticket = ticket

    mail to: @ticket.email, subject: 'Your request has been received'
  end

  def send_answer(ticket)
    @ticket = ticket

    mail to: @ticket.email, subject: 'Your answer to ticket request'
  end

end
