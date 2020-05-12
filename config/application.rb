require "yo_ho_ho"
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

module BestQuotes
  class Application < YoHoHo::Application
  end
end