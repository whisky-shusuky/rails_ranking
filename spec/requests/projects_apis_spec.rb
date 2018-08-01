require 'rails_helper'

RSpec.describe "ProjectsApis", type: :request do
  describe "GET /api/v1/ranking" do
    it "shows score list." do
      get '/api/v1/ranking'
      expect(response).to have_http_status(200)
    end

    it "responds with text/html formated output." do
      get '/api/v1/ranking'
      expect(response.content_type).to eq "application/json"
    end
  end
end
