# frozen_string_literal: true

module Api
  class Base < Grape::API
    version 'v1', using: :path
    format :json

    helpers do
      def safe_params
        declared(params, include_missing: false)
      end
    end

    get 'echo' do
      {
        ok: 'ok'
      }
    end
  end
end
