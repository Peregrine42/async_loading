require 'spec_helper'

describe 'GET /loading/:id' do
  it 'spawns a worker' do
    expect(Worker).to receive(:perform_async).with(1)
    get '/loading/1'
  end

  it 'shows the loading page' do
    get '/loading/1'
    expect(last_response.body).to match 'Loading results, please wait'
  end
end
