class Referendum < ActiveRecord::Base

  def result
    votes_for > votes_against
  end

end
