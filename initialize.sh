# !bin/bash
echo "Initializing Database"
ruby sierra/bin/rails db:migrate 
echo "User.create(:name=>'root', :email=>'root@root.com', :password=>'toor', :password_confirmation=>'toor', :role=>'admin')" | ruby sierra/bin/rails c

