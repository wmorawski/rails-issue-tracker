class CreateIssues < ActiveRecord::Migration[6.1]
  def change
    create_table :issues do |t|
      t.string :title, null: false
      t.text :description
      t.datetime :due_date
      t.references :author, index: true
      t.references :assignee, index: true
      t.references :issue_status, index: true, foreign_key: true

      t.timestamps
    end
  end
end
