require 'rails_helper'

describe 'base', type: :request do
  describe 'GET echo' do
    before { get '/v1/echo' }

    context 'success' do
      it 'ステータスコード200が返却されること' do
        expect(response).to have_http_status(200)
      end
    end
  end
end
