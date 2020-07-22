class AddNearestStarToPlanets < ActiveRecord::Migration[6.0]
  def change
    add_column :planets, :nearest_star, :string
  end
end
