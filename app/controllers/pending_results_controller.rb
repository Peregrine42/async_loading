class App

  get '/pending_results/:id' do
    @ref = ReferendumResult.where(referendum_id: params[:id]).first
    if @ref
      erb :results
    else
      'no results yet'
    end
  end

end
