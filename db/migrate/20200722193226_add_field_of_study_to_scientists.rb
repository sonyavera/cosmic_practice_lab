class AddFieldOfStudyToScientists < ActiveRecord::Migration[6.0]
  def change
    add_column :scientists, :field_of_study, :string
  end
end
