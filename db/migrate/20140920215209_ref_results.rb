class RefResults < ActiveRecord::Migration
  def change
    create_table :referendum_results do |t|
      t.integer :votes_for
      t.integer :votes_against
      t.boolean :result
    end
  end
end
