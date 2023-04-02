class ChangeNullConstraintForCreatedUpdatedAtInGenres < ActiveRecord::Migration[7.0]
  def change
    change_column_null :genres, :created_at, true
    change_column_null :genres, :updated_at, true
  end
end
