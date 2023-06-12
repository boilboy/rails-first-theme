class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :title
      t.date :start_at
      t.date :end_at
      t.boolean :is_all_day
      t.text :schedule_memo

      t.timestamps
    end
  end
end
