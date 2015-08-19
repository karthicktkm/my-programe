#Delet old folder


bash "bash" do
  user "root"
  cwd "/home/e100102/test"
  code <<-EOT
  (ls -t|head -n 7;ls)|sort|uniq -u|xargs rm -rf
  EOT
end