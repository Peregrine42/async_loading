require 'spec_helper'

describe Worker, '#perform' do
  it 'finds a referendum' do
    ref = double(:ref, result: true, votes_for: 5, votes_against: 3)
    expect(Referendum).to receive(:find).and_return ref
    Worker.new.perform(1)
  end

  it 'creates a referendum result when done' do
    ref = double(:ref, result: true, votes_for: 5, votes_against: 3)
    allow(Referendum).to receive(:find).and_return ref
    Worker.new.perform(17)
    result = ReferendumResult.first
    expect(result.votes_for).to eq 5
    expect(result.votes_against).to eq 3
    expect(result.result).to be_truthy
    expect(result.referendum_id).to eq 17
  end
end
