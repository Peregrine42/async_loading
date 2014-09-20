Given "there is a referendum in the database" do
  Referendum.create!(votes_for: 5, votes_against: 6)
end

When "I visit the loading page" do
  visit '/loading/1'
end

Then "there is a result in the database" do
  sleep 5
  expect(ReferendumResult.first.votes_for).to eq 5
end
