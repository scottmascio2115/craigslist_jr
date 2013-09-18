
# GET ====================================================


get '/' do
  @category_list = Category.all
  # Look in app/views/index.erb
  erb :index
end

get '/cat/:name' do
  @category = Category.where("name = '#{params[:name]}'").first
  erb :cat
end

get '/cat/:name/:post_id' do
  @category = Category.where("name = '#{params[:name]}'").first
  @post = Post.find(params[:post_id])
  erb :post
end

get '/create' do
  erb :create
end

# POST ====================================================

post '/create' do
  puts "Params:"
  new_post = Post.new(params[:post])
  category = Category.find_or_create_by_name(params[:category])
  category.posts << new_post
  new_post.save
  
  redirect to ("/cat/#{category.name}/#{new_post.id}")
end
