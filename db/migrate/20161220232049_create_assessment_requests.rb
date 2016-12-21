class CreateAssessmentRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :assessment_requests do |t|
      t.string :first_name
      t.string :email
      t.string :url

      t.timestamps
    end
  end
end
