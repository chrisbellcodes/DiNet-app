class ChangeEndTimeToBeTimeInDinnerParties < ActiveRecord::Migration[5.2]
  def change
    change_column :dinner_parties, :end_time, :time
  end
end
