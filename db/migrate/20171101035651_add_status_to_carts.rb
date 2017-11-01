class AddStatusToCarts < ActiveRecord::Migration
  def change
      add_column :carts, :status, :string, default: "not_submitted"
  end
end
