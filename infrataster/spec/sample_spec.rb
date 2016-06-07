describe server(:ci) do
  describe http('http://spechost') do
    it do
      expect(response.headers['X-Frame-Options']).to eq('SAMEORIGIN')
      expect(response.headers['X-XSS-Protection']).to eq('1; mode=block')
      expect(response.headers['X-Content-Type-Options']).to eq('nosniff')
    end
  end
end
