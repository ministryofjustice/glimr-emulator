require 'sinatra'
require 'ffaker'
require 'json'

post '/Live_API/api/tdsapi/registernewcase' do
  puts "GLIMR EMULATOR __ REGISTER NEW CASE"
  content_type :json
  {
    jurisdictionId: 8,
    tribunalCaseId: sprintf('%06d', rand(100000) +1),
    tribunalCaseNumber: sprintf('TC/%d/%06d', Time.now.year, rand(10000) + 1),
    caseTitle: "#{FFaker::Name.name} vs HMRC",
    confirmationCode: "ABC123"
  }.to_json
end
