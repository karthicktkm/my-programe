#install the node_js

apt_package "nodejs" do
  action :upgrade
end

#install npm package

apt_package "npm" do
  action :install
end


