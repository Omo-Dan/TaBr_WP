class CreateWorkprofiles < ActiveRecord::Migration[6.1]
  def change
    create_table :workprofiles do |t|
      t.string :position_title
      t.string :position_name
      t.string :company
      t.string :industry
      t.string :experience_type
      t.string :location
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
