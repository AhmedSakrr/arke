module Arke
  module Command
    class Start < ::Clamp::Command
      include Arke::Helpers::Commands
      option "--dry", :flag, "dry run on the target"
      option "--config", "FILE_PATH", "Strategies config file", default: "config/strategies.yml"

      def execute
        Arke::Log.level = Logger::Severity.const_get(conf["log_level"].upcase || "INFO")
        Arke::Reactor.new(strategies_configs).run
      end
    end
  end
end