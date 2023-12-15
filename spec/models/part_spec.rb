require 'rails_helper'

RSpec.describe Part, type: :model do

  before{@part = Part.new}

  describe 'Testes de preenchimento do model Part' do

    it 'name consegue ser preenchido?' do
      @part.name = 'cabeçote'
      expect(@part.name).to eq('cabeçote')
    end

    it 'function consegue ser preenchido?' do
      @part.function = 'sustentação dos pistões'
      expect(@part.function).to eq('sustentação dos pistões')
    end

  end

  describe 'Testes de validação do model Part' do

    it 'objeto part valido com campos obrigatorios preenchidos?' do
      @part.name = ''
      @part.function = ''
      expect(@part).to be_valid
    end

  end

end