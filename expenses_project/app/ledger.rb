# frozen_string_literal: true

# ExpenseTracker Module
module ExpenseTracker
  RecordResult = Struct.new(:success?, :expense_id, :error_message)

  # Ledger Class
  class Ledger
    def record(expense); end
  end
end
