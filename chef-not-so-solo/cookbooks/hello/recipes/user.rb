
#create user
user 'samp' do
 comment 'samp1'
 username 'samp'
 uid 10012
 gid 'users'
 home '/home'
 shell 'bin/bash'
 password '$1$JJ'
end