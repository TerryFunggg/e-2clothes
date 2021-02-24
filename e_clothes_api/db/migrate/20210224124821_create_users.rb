class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :avator
      t.string :phone
      t.boolean :is_active, default: true
      t.datetime :last_login

      t.timestamps
    end
  end
end
