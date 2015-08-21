require 'chef'
#rest = Chef::REST.new(Chef::Config[:http://localhost])
rest = Chef::REST.new("http://localhost/ghostinspector_pass.json")
#nodes = rest.get_rest("/ghostinspector_fail.json")
nodes = rest.get_rest("http://localhost/ghostinspector_pass.json")
data = nodes['data']
def checkPassing(data)
 data.each do |value|
         if value['passing'] == false
	 return false
      end
  end   
  return true
end

passing = checkPassing(data)
bash "test" do
code <<-EOH  
echo "#{passing}" >> /tmp/text.txt
EOH
end




#nodes.each do |value1|
 
  
 # bash "test" do
 # code <<-EOH
  
#echo "#{value1[:data][0]}" >> /home/e100102/chef-not-so-solo/rest_test1.txt
#echo >> /home/e100102/chef-not-so-solo/rest_test1.txt

#nodes.key.each do |application|
  #puts rest.get_rest(“/ghostinspector_fail.json/application”)[:passing]
 # print application
 #EOH
#end
#end



#ruby_block "fetch home dir" do
 #   block do
 #     #tricky way to load this Chef::Mixin::ShellOut utilities
#      Chef::Resource::RubyBlock.send(:include, Chef::Mixin::ShellOut)      
#      curl_command = 'curl -XGET '+node['http://localhost/ghostinspector_fail.json']
#      curl_command_out = shell_out(curl_command)
#
#      bash "out_data" do
#	 cwd "/home/e100102"
#	 code <<- EOH
#	  echo "#{curl_command_out} '>> rest_value.txt'"
 #     end
#    end
 #   action :create
#end
