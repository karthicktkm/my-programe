#ls some_commands
bash "bash" do
  user "root"
  cwd "/home/e100102/"
  code <<-EOT
  ls >> 1234221.txt
  EOT
end