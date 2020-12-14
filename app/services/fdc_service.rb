class FDCService
  def self.food_details(ingredient)
    response = conn.get("fdc/v1/foods/search?&query=#{ingredient}&pageSize=10")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov") do |f|
      f.params["api_key"] = ENV["FDC_API_KEY"]
    end
  end
end
