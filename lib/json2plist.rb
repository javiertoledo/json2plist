require "json2plist/version"
require "multi_json"
require "plist"

module Json2plist
  def self.convert(json)
    MultiJson.load(json).to_plist
  end
end
