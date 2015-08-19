



#stop server

execute 'start' do
  user "root"
  cwd "/home/e100102/chef-not-so-solo"
  environment 'HOME' => "/home/e100102/chef-not-so-solo"
  command 'forever stop server.js'
  action :run
end


#start server

execute 'start' do
  user "root"
  cwd "/home/e100102/chef-not-so-solo"
  environment 'HOME' => "/home/e100102/chef-not-so-solo"
  command 'forever start server.js'
  action :run
end
