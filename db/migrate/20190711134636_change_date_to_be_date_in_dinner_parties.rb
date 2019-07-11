class ChangeDateToBeDateInDinnerParties < ActiveRecord::Migration[5.2]
  def change
    change_column :dinner_parties, :date, :date
  end
end
