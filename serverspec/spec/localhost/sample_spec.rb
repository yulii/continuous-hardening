require 'spec_helper'

describe package('httpd'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe package('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe service('httpd'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

describe service('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_enabled }
  it { should be_running }
end

describe service('org.apache.httpd'), :if => os[:family] == 'darwin' do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

describe command('echo -en "HEAD / HTTP/1.1\nHost: localhost\n\n" | nc localhost 80') do
  its(:stdout) { should have_http_header('X-Frame-Options', 'SAMEORIGIN') }
  its(:stdout) { should have_http_header('X-XSS-Protection', '1; mode=block') }
  its(:stdout) { should have_http_header('X-Content-Type-Options', 'nosniff') }
end
