class ChangeShowsName < ActiveRecord::Migration
  def change
    rename_table :shows, :bands_venues
  end
end
