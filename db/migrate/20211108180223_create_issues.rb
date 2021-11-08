class CreateIssues < ActiveRecord::Migration[6.1]
  def change
    create_table :issues do |t|
      t.string :title
      t.text :description
      t.datetime :due_date

      t.timestamps
    end
  end
end
