class App

  get '/results/:id' do
    @ref = ReferendumResult.where(referendum_id: params[:id]).first
    if @ref
      erb :results
    else
      status 404
      '404 - result not found'
    end
  end

end
