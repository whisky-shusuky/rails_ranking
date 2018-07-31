module API
  module Ver1
    class Ranking < Grape::API
      resource :ranking do

        # GET /api/v1/ranking
        desc 'Return all ranking.'
        get do
          @scores = Score.all
          present @scores
        end

        # GET /api/v1/people/{:id}
        desc 'Return a person.'
        params do
          requires :id, type: Integer, desc: 'Ranking id.'
        end
        get ':id' do
          Score.find(params[:id])
        end

        # GET /api/v1/people/{:id}
        desc 'Return a person.'
        params do
          requires :id, type: Integer, desc: 'Ranking id.'
        end
        get ':id' do
          Score.find(params[:id])
        end

        post do
#binding.pry
          score = Score.new(name: params[:name], point: params[:point] )
          score.save
#name = params[:name]
#point = params[:point]
#score = Score.new(name: name, point: name[:point] )
#binding.pry
#score.save
#
#binding.pry
        end

      end
    end
  end
end
