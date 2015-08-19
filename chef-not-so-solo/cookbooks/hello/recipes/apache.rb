#create user
user 'test' do
 comment 'test1'
 username 'ssp'
 uid 10012
 gid 'users'
 home '/home'
 shell 'bin/bash'
 password '$1$JJ'
end

#install the apache
apt_package "apache2" do
  action :install
end

#Remove the nginx
apt_package "nginx" do
  action :remove
end

#install the nginx
apt_package "nginx" do
  action :install
end