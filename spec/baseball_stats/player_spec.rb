require 'spec_helper'

describe BaseballStats::Player do
  subject { described_class.new(name) }

  let(:name) { 'Pedro Cerrano' }

  describe '.new' do
    it 'creates an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end

  describe '#name' do
    it "should be the player's name" do
      expect(subject.name).to be name
    end
  end
end
