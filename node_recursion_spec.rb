require_relative 'node_recursion'

describe Node do
  let(:node) { Node.new }
  describe '#add' do
    it 'adds new name to names list' do
      name = 'cindy'
      node.add(name)
      expect(node.names).to include (name)
    end

    it 'adds new names in alphabetical order to names list'do
      stefan = 'stefan'
      dexter = 'dexter'
      cindy = 'cindy'
      node.add(stefan)
      node.add(dexter)
      node.add(cindy)
      expect(node.names).to eq [ 'cindy', 'dexter', 'stefan' ]
    end
  end
end