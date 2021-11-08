class CreateIssueStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :issue_statuses do |t|
      t.string :name
      t.boolean :marks_as_closed
      t.string :color

      t.timestamps
    end
  end
end
