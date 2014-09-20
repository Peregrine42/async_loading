class Referendums < ActiveRecord::Migration
  def change
    create_table :referendums do |t|
      t.integer :votes_for
      t.integer :votes_against
    end
  end
end
