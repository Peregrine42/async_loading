class App

  get '/start_work/:id' do
    Worker.perform_async(params[:id].to_i)
    redirect "/loading/#{params[:id]}"
  end

end
