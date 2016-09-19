class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :goals, :type, :type_period
  end
end
