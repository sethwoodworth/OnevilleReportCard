class AddPerformanceSummaryToStudent < ActiveRecord::Migration
  def self.up
    add_column :students, :performance_summary, :text
  end

  def self.down
    remove_column :students, :performance_summary
  end
end
