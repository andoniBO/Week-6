require 'rails_helper'

describe Api::V1::UsersController do

 describe "GET '/api/v1/users'" do
   before { @user = User.create(name: 'usertest', email: 'test@test.com') }

   it 'returns a list of users' do
     get "index"
     data = JSON.parse(response.body)

     expect(response).to have_http_status(200)
     expect(data.length).to eq(1)
   end
 end

 describe "POST '/api/v1/users'", type: :request do

   it 'creates a user' do
     post api_v1_users_path( user: { name: 'usertest', email: 'test@test.com' })

     expect(response).to have_http_status(201)
     expect(User.last.name).to eq('usertest')
   end
 end


end
