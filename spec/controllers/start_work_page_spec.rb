require 'spec_helper'

describe 'GET /start_work/:id' do

  it 'spawns a worker' do
    expect(Worker).to receive(:perform_async).with(1)
    get '/start_work/1'
  end

  it 'redirects to the loading page' do
    allow(Worker).to receive(:perform_async).with(1)
    get '/start_work/1'
    follow_redirect!
    expect(last_response.body).to match 'Loading results, please wait'
  end

end
