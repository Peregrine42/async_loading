require 'spec_helper'

describe 'GET /loading/:id' do

  it 'shows the loading page' do
    get '/loading/1'
    expect(last_response.body).to match 'Loading results, please wait'
  end

end
