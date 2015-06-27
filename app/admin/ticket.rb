ActiveAdmin.register Ticket do

  actions :all, except: [:new, :edit]

  permit_params :id, :name, :email, :department, :subject, :request, :code, :answer

  # scope :Waiting_for_Staff_Response, :default => true
  # scope :Waiting_for_Customer
  # scope :On_Hold
  # scope :Cancelled
  # scope :Completed


  controller do
  def update
    update! do |format|
      format.html { redirect_to admin_tickets_path, notice: 'Answer to ticket request was successfully sent to customer' }
    end
  end
end

index do
    column :name
    column :email
    column :department
    column :subject
    column :request
    column :code
    # column :status
    column :created_at
    column :updated_at
    actions
  end

  show do |ticket|
    attributes_table do
      row :name
      row :email
      row :department
      row :subject
      row :request
      row :code
      row :created_at
      row :updated_at
      # row :status do
      #   form_for :ticket, method: :put do |f|
      #     f.select :status, Ticket.statuses.keys
      #     br
      #     f.text_area :answer, rows: 6
      #     br
      #     f.submit "Send Answer"
      #   end
      # end
    end
  end

form do |f|
    f.inputs "Ticket Details" do
      f.input :name
      f.input :email
      f.input :department
      f.input :request
      # f.input :status, as: :select, collection: Ticket.statuses.keys
      f.input :answer
    end
    f.actions
  end

  filter :code
  filter :subject
  filter :request

end
