namespace :store_jobs do
  desc 'add jobs'

  task add_jobs: :environment do
    all_jobs = JSON.load(Rails.root.join('lib', 'dataset.json'))
    counter = 1
    begin
      all_jobs.each do |set|
        set['JobData'].each do |job|
           create_job(job)
           p "Import successed - Counter: #{ counter }"
           counter += 1
        end
      end
    rescue => ex
      p ex
      p "Import failed - Counter: #{ counter }"
      counter += 1
    end
  end
end

def create_job(job)
  Job.new(documentid: job['DocumentID'], jobtitle: job['JobTitle'],
             locations: job['Locations'], jobsummary: job['JobSummary'],
             applyonlineurl: job['ApplyOnlineURL']).save
end