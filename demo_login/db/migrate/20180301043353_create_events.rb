class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :location
      t.string :state
      t.referencec :user

      t.timestamps null: false
    end
  end
end
