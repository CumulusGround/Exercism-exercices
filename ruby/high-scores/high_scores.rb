

class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end


  def latest
    @scores.last
  end


  def personal_best(scores_array = @scores)
    scores_array.inject do |best_score, test_score|
      test_score > best_score ? best_score = test_score : best_score
    end
  end


  def personal_top_three
    top_three = []
    scores_list = @scores
    n_iteration = scores_list.length >= 3 ? 3 : scores_list.length

    n_iteration.times do
      top_result = personal_best(scores_list)

      top_three << scores_list.slice!(
        scores_list.index(top_result)
      )
    end

    top_three.sort.reverse
  end


  def latest_is_personal_best?
    latest() == personal_best() ? true : false
  end

end


