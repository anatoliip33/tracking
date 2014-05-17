class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.string :email
      t.string :department
      t.string :subject
      t.text :request

      t.timestamps
    end
  end
end
