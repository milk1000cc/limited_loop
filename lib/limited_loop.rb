require "limited_loop/version"

module LimitedLoop
  class LimitExceeded < StandardError; end

  def self.loop(cnt = 100, &block)
    cnt.times &block
    raise LimitExceeded
  end
end
