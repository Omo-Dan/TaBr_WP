class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :project_objectives
      t.string :project_role
      t.string :project_hours
      t.string :project_status

      t.timestamps
    end
  end
end
