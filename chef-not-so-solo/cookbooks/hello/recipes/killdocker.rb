#find the docker file and kill the file


#
bash "bash" do
  user "root"
  cwd "/home/e100102"
  code <<-EOT
  as=`docker ps -a |grep ago | awk '{print $1}'`
  sudo docker rm -f $as
  EOT
end


##