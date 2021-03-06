require './deep_counter.rb'
RSpec.describe DeepCounter do
  describe '#evaluate' do
    it 'returns the count of elements in an array' do
      deep_counter = DeepCounter.new
        array = ['x', 'y', ['z']]
        expect(deep_counter.evaluate(array)).to eq(4)
    end

    it 'returns the count of elements in an empty sub array' do
      deep_counter = DeepCounter.new
      array = [[[[[[[[[]]]]]]]]]
      expect(deep_counter.evaluate(array)).to eq(8)
    end
  end
end
