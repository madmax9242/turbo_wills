class CreateSecondScenarios < ActiveRecord::Migration
  def change
    create_table :second_scenarios do |t|
      t.integer :user_id
      t.string :ami_cc_only, default: "0"
      t.string :ami_cc_plus, default: "0"
      t.string :ami_reg_med, default: "0"
      t.string :ami_invasive, default: "0"
      t.string :ami_respirator, default: "0"
      t.string :ami_dialysis, default: "0"
      t.string :ami_cpr, default: "0"
      t.string :bi_cc_only, default: "0"
      t.string :bi_cc_plus, default: "0"
      t.string :bi_reg_med, default: "0"
      t.string :bi_invasive, default: "0"
      t.string :bi_respirator, default: "0"
      t.string :bi_dialysis, default: "0"
      t.string :bi_cpr, default: "0"

      t.timestamps null: false
    end
  end
end
