require 'spec_helper'

describe 'GET /' do

  it 'shows a message' do
    get '/'
    expect(last_response.body).to match 'hello'
  end

end
