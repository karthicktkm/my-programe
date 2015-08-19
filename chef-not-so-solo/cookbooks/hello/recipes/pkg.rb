#Upadate system

execute "apt-get-update" do
  command "apt-get update"
  ignore_failure true
end


#Remove the package
apt_package 'kmplayer' do
  action :remove
end

#install the backage in vlc

apt_package 'kmplayer' do
  action :install
end

#bash
bash "bash" do
  user "root"
  cwd "/home/e100102/"
  code <<-EOT
  host www.bambeeq.com | cut -d ' ' -f4 >> 11122321.txt   
  EOT
end
