#Install the nginx

apt_package "nginx" do
  action :install
end
#test
service 'nginx' do
  action [ :enable, :restart ]
end


package "nginx" do
  action :install
end


link '/var/www' do
  to '/home/e100102/chef-test'
  link_type :hard
end
