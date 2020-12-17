class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email_address
      t.string :password
      t.string :first_name
      t.string :second_name
      t.date :dob
      t.string :profile_picture

      t.timestamps
    end
  end
end
