class RemovePaymentsFromPayments < ActiveRecord::Migration
  def change
    change_table :payments do |t|
      t.rename :payment, :paid
    end
  end
end
