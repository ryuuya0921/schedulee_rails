class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title, limit: 20
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :all_day
      t.datetime :updated_at

      t.timestamps
    end
  end
end
