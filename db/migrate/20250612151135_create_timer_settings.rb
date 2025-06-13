class CreateTimerSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :timer_settings do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :work_time, null: false, default: 25
      t.integer :short_break_time, null: false, default: 5
      t.integer :long_break_time, null: false, default: 20
      t.integer :session_unit_long_break, null: false, default: 4
      t.string :sound_file

      t.timestamps
    end
  end
end
