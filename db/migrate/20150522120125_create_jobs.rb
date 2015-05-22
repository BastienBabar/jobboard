class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :documentid
      t.string :jobtitle
      t.string :organizationname
      t.string :agencysubelement
      t.string :salarymin
      t.string :salarymax
      t.string :salarybasis
      t.date :startdate
      t.date :enddate
      t.string :whomayapplytext
      t.string :payplan
      t.string :series
      t.string :grade
      t.string :workschedule
      t.string :worktype
      t.string :locations
      t.string :announcementnumber
      t.text :jobsummary
      t.string :applyonlineurl

      t.timestamps null: false
    end
  end
end
