

node[:node].each do |values|
bash "kill_nodejs" do
code <<-EOH
if [ values['kill'] -eq "true" ] 
then
lsof -i :values['port'] | grep 'nodejs' | awk '{print $2}' | xargs -n 1 -t kill -9 
fi
EOH
end
end



    
 
