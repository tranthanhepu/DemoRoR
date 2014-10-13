class AddActiveToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :active, :bool, :default => false
  end
end
