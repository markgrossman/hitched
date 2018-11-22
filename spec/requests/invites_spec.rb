require 'rails_helper'

RSpec.describe 'Invites API', type: :request do

	let!(:invites) {create_list(:invite, 10)}
	let(:invite_id) {invites.first.id}

	describe 'GET /invites' do
		before {get '/invites'}

		it 'returns invites' do
			expect(json).not_to be_empty
			expect(json.size).to eq(10)
		end

		it 'returns status code 200' do
			expect(response).to have_http_status(200)
		end
	end

end