execute 'kill process' do
  user "root"
  cwd "/home/e100102/chef-not-so-solo"
  command 'ls'
end