require 'rails_helper'

describe "get all weapons route", :type => :request do
  let!(:weapons) { FactoryBot.create_list(:weapon, 20)}

  before { get '/weapons'}

  it 'returns all weapons' do
    expect(JSON.parse(response.body).size).to eq(20)
end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
