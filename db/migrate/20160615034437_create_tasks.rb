class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.integer :priority
      t.references :task, index: true
      t.references :project, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
