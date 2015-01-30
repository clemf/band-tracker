class CreateBandsVenuesShows < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.column :name, :string

      t.timestamps null: false
    end
    create_table :venues do |t|
      t.column :name, :string

      t.timestamps null: false
    end
    create_table :shows do |t|
      t.column :band_id, :integer
      t.column :venue_id, :integer

      t.timestamps null: false
    end
  end
end
