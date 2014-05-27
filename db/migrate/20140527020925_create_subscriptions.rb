class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.string :lastname
      t.integer :grade_id
      t.integer :section_id
      t.integer :level_id
      t.integer :paymentmethod_id
      t.integer :school_id
      t.boolean :active
      t.date :fechaingreso
      t.date :fechainactivo

      t.timestamps
    end
  end
end
