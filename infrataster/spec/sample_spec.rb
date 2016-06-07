describe server(:ci) do
  describe http("http://#{ENV['TARGET_HOST']}") do
    it "responds content including 'Hello Sinatra'" do
      expect(response.body).to include('Hello Sinatra')
    end
    it "responds as 'text/html'" do
      expect(response.headers['content-type']).to eq("text/html")
    end
  end
end
