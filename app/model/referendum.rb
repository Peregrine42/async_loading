class Referendum < ActiveRecord::Base

  def result
    sleep 5
    votes_for > votes_against
  end

end
