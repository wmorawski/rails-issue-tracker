class CreateIssueStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :issue_statuses do |t|
      t.string :name, null: false, index: true
      t.boolean :marks_as_closed, default: false
      t.string :color, null: false, limit: 7

      t.timestamps
    end
  end
end
