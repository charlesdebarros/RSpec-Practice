# frozen_string_literal: true

require 'sinatra/base'
require 'json'
require_relative './ledger'

# ExpenseTracker module containing API class
module ExpenseTracker
  # API class, inheriting from Sinatra::Base
  class API < Sinatra::Base
    def initialize(ledger: Ledger.new)
      @ledger = ledger
      super()
    end

    get '/expenses/:date' do
      JSON.generate([])
    end

    post '/expenses' do
      expense = JSON.parse(request.body.read)
      result = @ledger.record(expense)

      if result.success?
        JSON.generate('expense_id' => result.expense_id)
      else
        status 422
        JSON.generate('error' => result.error_message)
      end
    end
  end
end
