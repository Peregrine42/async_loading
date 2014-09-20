class App

  get '/results/:id' do
    @ref = Referendum.find(params[:id])
    erb :results
  end
end
