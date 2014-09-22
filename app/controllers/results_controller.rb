class App

  get '/loading/:id' do
    Worker.perform_async(params[:id].to_i)
    redirect "/results/#{params[:id]}"
  end

  get '/results/:id' do
    erb :loading
  end

end
