# !bin/bash
cd sierra
echo "Initializing Database"
rails db:migrate 
echo "Adding default admin account"
echo "User.create(:name=>'root', :email=>'root@root.com', :password=>'toor', :password_confirmation=>'toor', :role=>'admin')" | rails c > /dev/null

