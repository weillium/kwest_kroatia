class CreateAgendaItems < ActiveRecord::Migration[6.0]
  def change
    create_table :agenda_items do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.string :activity
      t.text :description
      t.string :photo
      t.integer :leader_id
      t.string :is_cyoa

      t.timestamps
    end
  end
end
