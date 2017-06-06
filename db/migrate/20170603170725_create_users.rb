class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :email_address
      t.binary :profile_pic
      t.integer :user_id

      t.timestamps
    end
  end
end
