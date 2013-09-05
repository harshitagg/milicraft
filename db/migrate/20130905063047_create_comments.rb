class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.string :email

      t.timestamps
    end
  end
end
