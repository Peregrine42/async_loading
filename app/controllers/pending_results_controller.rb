class App

  get '/pending_results/:id' do
    @ref = ReferendumResult.where(referendum_id: params[:id]).first
    if @ref
      'results ready'
    else
      'no results yet'
    end
  end

end
