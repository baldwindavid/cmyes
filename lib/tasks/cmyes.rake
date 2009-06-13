namespace :cmyes do

  desc "Insert first pages"
  task :setup => :environment do
    ComatosePage.new( :title=>'Home Page', :body=>"This is a dummy root page", :author=>'System', :filter_type => "Markdown" ).save_with_validation(false)
  end

end