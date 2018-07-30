class RankingController < ApplicationController
  def search
    @test = Ranking.all
binding.pry
  end
end
