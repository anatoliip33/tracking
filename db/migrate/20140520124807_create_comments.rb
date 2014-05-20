class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :answer

      t.timestamps
    end
  end
end
