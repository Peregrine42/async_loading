class Worker
  include Sidekiq::Worker

  def perform(id)
    ref = Referendum.find(id)
    result = ref.result
    ReferendumResult.create!(result: result, votes_for: ref.votes_for, votes_against: ref.votes_against, referendum_id: id)
  end
end
