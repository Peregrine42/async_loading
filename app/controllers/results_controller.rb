class App

  get '/loading/:id' do
    Worker.perform_async(params[:id].to_i)
    redirect "/results/#{params[:id]}"
  end

  get '/results/:id' do
    erb :loading
  end

  get '/referendum_results/:id' do
    @ref = ReferendumResult.where(referendum_id: params[:id]).first
    if @ref
      erb :results
    else
      status 404
      '404 - result not found'
    end
  end

end
