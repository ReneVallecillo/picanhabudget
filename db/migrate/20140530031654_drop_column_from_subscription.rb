class DropColumnFromSubscription < ActiveRecord::Migration
  def change
    remove_column :subscriptions, :grade_id
  end
end
