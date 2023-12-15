require 'rails_helper'

RSpec.describe Api::V1::PartsController, type: :controller do

  before{@part = Part.create(name: 'alternador', function: 'geração de tensão')}

  describe 'GET /api/v1/parts' do
    it 'Consegue listar todos os parts e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end