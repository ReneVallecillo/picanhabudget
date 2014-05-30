class AddSchoolingIdToLevel < ActiveRecord::Migration
  def change
    add_column :levels, :schooling_id, :integer
  end
end
