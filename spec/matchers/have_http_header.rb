
RSpec::Matchers.define :have_http_header do |name, value|
  match do |response|
    response.match(/\r\n#{name}: #{value}\r\n/)
  end

  description do
    %Q{should have http header "#{name}: #{value}"}
  end
end
