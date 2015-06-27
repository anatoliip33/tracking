class Ticket < ActiveRecord::Base

  validates :name, :email, :department, :subject, :request, presence: true
  # enum status: [ :Waiting_for_Staff_Response, :Waiting_for_Customer, :On_Hold, :Cancelled, :Completed ]
  include Codable

  belongs_to :user
  belongs_to :status
  before_create :generate_code
  before_create :set_status
  after_create :send_confirmation
  after_update :send_answer

  scope 'New unassigned tickets', -> { where(:status_id => 1) }
  scope 'Open tickets', -> { where(:status_id => 2) }
  scope 'On hold tickets', -> { where(:status_id => 3) }
  scope 'Closed tickets', -> { where(:status_id => 4..5) }

  def set_status
    self.status = Status.find(1)
  end

  def send_confirmation
    TicketMailer.send_mail(self).deliver
  end

  def send_answer
    TicketMailer.send_answer(self).deliver
  end
end
