require 'spec_helper'

describe LimitedLoop do
  it 'has a version number' do
    expect(LimitedLoop::VERSION).not_to be nil
  end

  describe '.loop' do
    it 'executes the block, and raises error' do
      cnt = 0
      expect {
        LimitedLoop.loop do
          cnt += 1
        end
      }.to raise_error(LimitedLoop::LimitExceeded)
      expect(cnt).to eq 100
    end

    it 'can break the block' do
      cnt = 0
      expect {
        LimitedLoop.loop do |i|
          break if cnt >= 10
          cnt += 1
        end
      }.not_to raise_error
      expect(cnt).to eq 10
    end

    it 'can change the number of executable times' do
      cnt = 0
      expect {
        LimitedLoop.loop(50) do
          cnt += 1
        end
      }.to raise_error(LimitedLoop::LimitExceeded)
      expect(cnt).to eq 50
    end
  end
end
