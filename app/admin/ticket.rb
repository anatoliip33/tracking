ActiveAdmin.register Ticket do

  permit_params :id, :name, :email, :department, :subject, :request, :status, :code

  scope :Waiting_for_Staff_Response, :default => true
  scope :Waiting_for_Customer
  scope :On_Hold
  scope :Cancelled
  scope :Completed

  member_action :send_answer, :method => :put do
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to admin_ticket_path(ticket), notice: 'Answer was successfully ' }
        format.json { head :no_content }
      end
    end
  end

index do
    selectable_column
    id_column
    column :name
    column :email
    column :department
    column :request
    column :code
    column :status
    column :created_at
    actions
  end

  show do |ticket|
    attributes_table do
      row :name
      row :email
      row :department
      row :request
      row :code
      row :status
      row :created_at
      row :updated_at
      row :answer do
        form_for send_answer_admin_ticket_path(ticket), method: :put do |f|
          f.text_area :answer, rows: 6
          br
          f.submit
        end
      end
    end
  end

form do |f|
    f.inputs "Ticket Details" do
      f.input :name
      f.input :email
      f.input :department
      f.input :request
      f.input :status, as: :select, collection: Ticket.statuses.keys
    end
    f.actions
  end

end
