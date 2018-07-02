class RenameMyTable < ActiveRecord::Migration
  def change
    rename_table :students, :coupons
  end
end
