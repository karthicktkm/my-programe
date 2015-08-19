#Start server using js file
bash "bash" do
  user "root"
  cwd "/home/e100102/chef-not-so-solo"
  code <<-EOT
  forever start test.js
  EOT
end