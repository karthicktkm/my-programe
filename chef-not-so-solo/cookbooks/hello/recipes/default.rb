# To create a new directory
directory "/home/e100102/ssp" do
    owner "chef"
    group "chef"
    mode 0755
    action :create
end

#To create the file 
file "/home/e100102/ssp/ssp.txt" do
  owner "chef"
  group "chef"
  mode 0777
  action :create
end
  