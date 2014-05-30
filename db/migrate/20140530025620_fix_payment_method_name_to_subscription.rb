class FixPaymentMethodNameToSubscription < ActiveRecord::Migration
  def change
    rename_column :subscriptions, :paymentmethod_id, :payment_method_id
  end
end
