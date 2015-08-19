#Start the port

bash "bash" do
  user "root"
  cwd "/home/e100102/chef-not-so-solo"
  code <<-EOT
  nodejs server.js &
  EOT
end




#Kill the process in and get process id

bash "bash" do
  user "root"
  cwd "/home/e100102/chef-not-so-solo"
  code <<-EOT
  as=`lsof -i :8080 | grep 'nodejs' | awk '{print $2}'`
  kill -9 $as
  echo "$as" >> 1122131.txt
  EOT
end


#Start port

execute 'start' do
  user "root"
  cwd "/home/e100102/chef-not-so-solo"
  environment 'HOME' => "/home/e100102/chef-not-so-solo:{ENV['HOME']}"
  command 'nodejs server.js &'
  action :run
end


####################################################----------------===============---------------============
#Delete folder
directory "/home/e100102/test/" do
  recursive true
  action :delete
  only_if { ::File.stat(path).ctime < (Time.now - 60*60*24*7) }
end

#count the folder
bash 'start' do
  user "root"
  cwd "/home/e100102/rep"
  code <<-EOT
  as=`ls -l | wc -l`
  EOT
end

################################3
execute "Deleting files ... " do
    command "find -regex 'REGEX' -delete"
    cwd "/path/to/folder"
    action :run
end

#############
execute "mv /var/lib/postgresql/9.1/main /vol/postgres/data" do
  not_if { File.exist?("/vol/postgres/data") }
end

################



(ls -t|head -n 5;ls)|sort|uniq -u|xargs rm
#(This version supports names with spaces:)#

(ls -t|head -n 5;ls)|sort|uniq -u|sed -e 's,.*,"&",g'|xargs rm