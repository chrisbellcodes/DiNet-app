class ChangeStartTimeToBeTimeInDinnerParties < ActiveRecord::Migration[5.2]
  def change
    change_column :dinner_parties, :start_time, :time
  end
end
