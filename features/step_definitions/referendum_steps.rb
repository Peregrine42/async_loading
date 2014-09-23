Given "there is a referendum in the database" do
  Referendum.create!(id: 1, votes_for: 15, votes_against: 20)
end

When "I visit the home page" do
  visit '/'
end

When "click the link to see the results" do
  click_link "Click here to see the results!"
end

When "I wait for the results to load" do
  Worker.drain
end

Then "I see the loading page" do
  expect(page.body).to match "Loading"
end

Then "I see the results" do
  expect(ReferendumResult.all.count).to eq 1
  #expect(page.body).to match 'Yes.'
  #expect(page.body).to match '15'
  #expect(page.body).to match '20'
end
