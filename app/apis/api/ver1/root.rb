module API
  module Ver1
    class Root < Grape::API
      # http://localhost:3000/api/v1/
      version 'v1'
      format :json
      version "v1"
      format :json
      formatter :json, Grape::Formatter::Rabl
      content_type :json, "application/json; charset=UTF-8"
      format :json
      default_format :json

      mount API::Ver1::Ranking
    end
  end
end
