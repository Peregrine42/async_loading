require 'spec_helper'

describe 'GET /results' do
  it 'shows the results' do
    a_referendum = double(:ref, result: false, for: 4, against: 5)
    allow(Referendum).to receive(:find).and_return(a_referendum)
    get '/results'
    expect(last_response.body).to match 'No'
  end
end
