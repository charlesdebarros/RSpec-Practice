# frozen_string_literal: true

require 'sinatra/base'
require 'json'

module ExpenseTracker
  # Expenses project API class. Inherits from Sinatra::Base
  class API < Sinatra::Base
    post '/expenses' do
      JSON.generate('expense_id' => 48)
    end

    get '/expenses/:date' do
      JSON.generate([])
    end
  end
end
