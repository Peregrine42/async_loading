class Worker
  include Sidekiq::Worker

  def perform(id)
    ref = Referendum.find(id)
    result = ref.result
    ReferendumResult.new(result: result, votes_for: ref.votes_for, votes_against: ref.votes_against)
  end
end
