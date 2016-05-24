package 'nginx' do
  action :install
end

# service 'nginx' do
#   action [:enable, :start]
# end

execute 'nginx' do
  command 'nginx'
end
