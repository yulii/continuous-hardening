require 'serverspec'

set :backend, :exec

require 'matchers/have_http_header'
