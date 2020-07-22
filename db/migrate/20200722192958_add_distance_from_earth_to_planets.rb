class AddDistanceFromEarthToPlanets < ActiveRecord::Migration[6.0]
  def change
    add_column :planets, :distance_from_earth, :string
  end
end
