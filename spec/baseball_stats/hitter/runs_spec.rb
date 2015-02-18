require 'spec_helper'

describe BaseballStats::Hitter::Runs do
  subject { described_class.new(data) }

  let(:data) { '100' }

  describe '.new' do
    it 'creates an instance of the class' do
      expect(subject).to be_instance_of described_class
    end
  end

  describe '#value' do
    it 'gives the value of an instance' do
      expect(subject.value).to be 100
    end
  end

  describe '#better_than?' do
    let(:runs) { described_class.new('200') }

    it 'should be worse than runs' do
      expect(subject.better_than?(runs)).to be false
    end
  end

  describe '#+' do
    let(:other)    { described_class.new('187') }
    let(:new_runs) { subject + other            }

    it 'should be an instance of described_class' do
      expect(new_runs).to be_instance_of described_class
    end

    it 'should have a value of the subject and other combined' do
      expect(new_runs.value).to be 287
    end
  end
end
