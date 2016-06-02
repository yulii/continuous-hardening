package 'nginx' do
  action :install
end

remote_file '/etc/nginx/conf.d/default.conf'
remote_file '/etc/nginx/conf.d/secure.conf'
template '/etc/nginx/nginx.conf'

execute 'nginx' do
  command 'nginx'
end
