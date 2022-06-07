require 'rails_helper'

describe "post a weapon route", :type => :request do

  before do
    post '/weapons', params: { :class_ => 'test_class', :name => 'test_name', :phy => 66 ,:mag => 99, :skill => 'test_skill' }
  end

  it 'returns the weapon name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the weapon class' do
    expect(JSON.parse(response.body)['class_']).to eq('test_class')
  end

  it 'returns the weapon phy' do
    expect(JSON.parse(response.body)['phy']).to eq(66)
  end

  it 'returns the weapon mag' do
    expect(JSON.parse(response.body)['mag']).to eq(99)
  end
  
  it 'returns the weapon skill' do
    expect(JSON.parse(response.body)['skill']).to eq('test_skill')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

describe "post a route exeption", :type => :request do

  before do
    post '/weapons', params: { :class_ => 'test_class', :name => '', :phy => 66 ,:mag => 99, :skill => 'test_skill' }
  end

  it 'returns an exeption' do
    expect(response).to have_http_status(:unprocessable_entity)
  end
end