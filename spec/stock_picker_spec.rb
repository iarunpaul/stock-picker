require './stock_picker.rb'

RSpec.describe 'Stop Picker Test' do
    describe 'Test for stock_picker method' do
        # subject { CaeserCipher.new }
        it 'test for the array example' do
            expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
        end
        it 'test for edge cases' do
            expect(stock_picker([17,3,6,9,15,8,6,11,16])).to eq([1,8])
        end
        it 'test for edge cases' do
            expect(stock_picker([17,3,6,9,15,8,6,2,16])).to eq([7,8])
        end
        it 'test for edge cases' do
            expect(stock_picker([1,3,6,9,15,8,6,2,16])).to eq([0,8])
        end
        it 'test for edge cases' do
            expect(stock_picker([1,3,6,9,15,8,6,2,1])).to eq([0,4])
        end
    end
end