require 'spec_helper'

describe 'GET /results' do
  it 'shows the results' do
    get '/results'
    expect(last_response.body).to match 'No'
  end
end
