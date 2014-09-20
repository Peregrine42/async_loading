require 'spec_helper'

describe Worker, '#perform' do
  it 'finds a referendum' do
    ref = double(:ref, result: true, votes_for: 5, votes_against: 3)
    expect(Referendum).to receive(:find).and_return ref
    Worker.new.perform(1)
  end
end
