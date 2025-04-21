class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :status
      t.date :due_date
      t.references :project, null: true, foreign_key: true
      t.references :section, null: true, foreign_key: true

      t.timestamps
    end
  end
end
