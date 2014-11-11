require "csv"
require "kdtree"
require "andand"

require "require_all"
require_rel "./nearest_time_zone"

module NearestTimeZone

  def self.to(latitude, longitude)
    City.nearest(latitude, longitude).andand.time_zone.name
  end

  def self.dump
    Dump.dump
    puts "dumped!"
  end
end

# load the kdtree so that everything is fast
NearestTimeZone::City.kdtree