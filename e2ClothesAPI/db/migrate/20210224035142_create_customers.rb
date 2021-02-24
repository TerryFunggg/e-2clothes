class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.belongs_to :user, index: true, foreign_key: true, null: false
      t.belongs_to :address, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
