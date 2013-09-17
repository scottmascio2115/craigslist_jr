

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/cat' do
  erb :cat
end

get '/cat/post' do
  erb :post
end

get '/create' do
  erb :create
end


post '/create' do
  redirect to ('/cat/post')
end
