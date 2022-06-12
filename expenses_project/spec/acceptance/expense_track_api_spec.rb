# frozen_string_literal: true

require 'rack/test'
require 'json'
require './app/api'

# ExpenseTracker module
module ExpenseTracker
  RSpec.describe 'Expense Tracker API' do
    include Rack::Test::Methods

    def app
      ExpenseTracker::API.new
    end

    def post_expense(expense)
      post '/expenses', JSON.generate(expense)
      expect(last_response.status).to eq(200)

      parsed = JSON.parse(last_response.body)
      expect(parsed).to include('expense_id' => a_kind_of(Integer))
      expect.merge('id' => parsed['expense_id'])
    end

    it 'records submitted expenses' do
      pending 'Need to persist expenses'
      coffee = {
        'payee' => 'Starbucks',
        'amount' => 5.75,
        'date' => '2021-11-18'
      }

      zoo = {
        'payee' => 'Zoo',
        'amount' => 15.25,
        'date' => '2021-11-18'
      }

      groceries = {
        'payee' => 'Whole Foods',
        'amount' => 95.20,
        'date' => '2021-11-19'
      }

      get '/expenses/2021-11-18'
      expect(last_response.status).to eq(200)

      expenses = JSON.parse(last_response.body)
      expect(expenses).to contain_exactly(coffee, zoo)

      post '/expenses', JSON.generate(coffee)
      expect(last_response.status).to eq(200)

      parsed = JSON.parse(last_response.body)
      expect(parsed).to include('expense_id' => a_kind_of(Integer))
    end
  end
end
