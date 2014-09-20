require 'spec_helper'

describe Referendum do
  it 'gives a true or false result' do
    votes = Referendum.create(votes_for: 1, votes_against: 2)
    expect(votes.result).to eq(false)
  end
end
