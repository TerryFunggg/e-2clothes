class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_default :users, :is_active, true
    change_column_default :users, :is_admin, false
  end
end
