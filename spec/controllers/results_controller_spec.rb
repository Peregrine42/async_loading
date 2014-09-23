require 'spec_helper'

describe 'GET /results' do

  it 'shows a result' do
    ReferendumResult.create!(result: false, votes_for: 456, votes_against: 789, referendum_id: 4)
    get '/results/4'
    expect(last_response.body).to match 'No'
    expect(last_response.body).to match '456'
    expect(last_response.body).to match '789'
  end

end
