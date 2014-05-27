class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.string :lastname
      t.string :grade
      t.string :section, limit: 1
      t.string :level
      t.string :paymentmethod
      t.string :school
      t.boolean :active
      t.string :location
      t.date :fechaingreso
      t.date :fechainactivo

      t.timestamps
    end
  end
end
