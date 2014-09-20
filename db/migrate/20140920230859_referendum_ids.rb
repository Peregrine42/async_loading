class ReferendumIds < ActiveRecord::Migration
  def change
    add_column :referendum_results, :referendum_id, :integer
  end
end
