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

  describe 'GET /api/v1/parts/id' do
    it 'Consegue listar um part especifico e retornar status 200?' do
      get :show, params: {id: @part.id}
      expect(response.body).to include_json(name: 'alternador')
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/parts' do
    it 'Consegue criar um part e retornar status 201?' do
      post :create, params: {part: {name: 'biela', function: 'conectar pistão eixo'}, format: :json}
      expect(response.body).to include_json(name: 'biela')
      expect(response).to have_http_status(201)
    end
  end

end