class AddProjectIdToDevelopers < ActiveRecord::Migration
  def change
    add_column :developers, :project_id, :integer
  end
end
