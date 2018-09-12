class AddDefaultValueToStatusAttribute < ActiveRecord::Migration[5.2]
  def up
    change_column :cat_rental_requests, :status, :string, default: "PENDING"
  end

  def down
    change_column :cat_rental_requests, :status, :string, default: nil
  end
end
