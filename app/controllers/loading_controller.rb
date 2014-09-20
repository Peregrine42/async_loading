class App

  get '/loading/:id' do
    Worker.perform_async(params[:id].to_i)
    erb :loading
  end

end
