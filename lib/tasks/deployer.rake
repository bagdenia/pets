namespace :db do

  desc 'Dump prod db to tmp folder'
  task :backup do
    print "\nDump latest prod db to tmp folder: \n\t> "
    puts cmd =  "ssh -t dokku@valt.tk postgresql:dump pets pets-sql > tmp/#{
      Time.current.utc.iso8601.gsub(/[-T:Z+]/,'')}.dump"
    system cmd
  end

  desc 'restores the backup'
  task :pull_from_prod => [:environment, :backup, :'db:drop', :'db:create'] do
    last_backup = Dir['tmp/*.dump'].sort_by {|e| File.basename e }.last

    db = ActiveRecord::Base.configurations[Rails.env]
    print "\nRestoring to your current db: \n\t> "
    puts cmd = "cat #{last_backup} | psql #{db['database']}"
    system cmd
  end

end
