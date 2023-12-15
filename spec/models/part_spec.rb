require 'rails_helper'

RSpec.describe Part, type: :model do

  before{@part = Part.new}

  describe 'Testes de preenchimento do mocel Part' do

    it 'name consegue ser preenchido?' do
      @part.name = 'cabeçote'
      expect(@part.name).to eq('cabeçote')
    end

  end

end