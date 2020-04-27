class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :name
      t.integer :bags
      t.datetime :registered_at, null: false
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
