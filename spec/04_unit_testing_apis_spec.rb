require '04_unit_testing_apis'

RSpec.describe TimeError do  
  it "returns the difference" do
    server_time = double :requestor
    # I got the return using curl "https://worldtimeapi.org/api/ip"
    allow(requestor).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"2a02:c7c:3727:3000:8de3:18bb:4387:9168","datetime":"2023-03-23T11:05:14.610333+00:00","day_of_week":4,"day_of_year":82,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1679569514,"utc_datetime":"2023-03-23T11:05:14.610333+00:00","utc_offset":"+00:00","week_number":12}')
    time_error = TimeError.new(server_time)
    expect(time_error.error(Time.now)).to eq 0
  end
end