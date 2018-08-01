require 'spec_helper'

RSpec.describe Triangle do
  describe '#shape_name' do
    # 同値分割
    describe 'equivalence partition' do
      it 'is exception, when sides are 0, 0, 0' do
        expect{Triangle.new(0, 0, 0).shape_name}.to raise_error ArgumentError
      end

      it 'is scalene triangle, when sides are 4, 5, 6' do
        expect(Triangle.new(4, 5, 6).shape_name).to eq '不等辺三角形ですね！'
      end

      it 'is isosceles triangle, when sides are 2, 2, 1' do
        expect(Triangle.new(5, 5, 4).shape_name).to eq '二等辺三角形ですね！'
      end

      it 'is equilateral triangle, when sides are 5, 5, 5' do
        expect(Triangle.new(5, 5, 5).shape_name).to eq '正三角形ですね！'
      end

      it 'is not triangle, when sides are 1, 2, 3' do
        expect(Triangle.new(1, 2, 3).shape_name).to eq '三角形じゃないです＞＜'
      end
    end

    # 境界値分析
    describe 'boundary value analysis' do
      # 不等辺三角形の境界値分析
      it 'is not scalene triangle, when sides are (4 - 3), 5, 6' do
        expect(Triangle.new((4 - 3), 5, 6).shape_name).not_to eq '不等辺三角形ですね！'
      end

      it 'is not scalene triangle, when sides are (4 + 1), 5, 6' do
        expect(Triangle.new((4 + 1), 5, 6).shape_name).not_to eq '不等辺三角形ですね！'
      end

      it 'is not scalene triangle, when sides are 4, (5 - 1), 6' do
        expect(Triangle.new(4, (5 - 1), 6).shape_name).not_to eq '不等辺三角形ですね！'
      end

      it 'is not scalene triangle, when sides are 4, (5 + 1), 6' do
        expect(Triangle.new(4, (5 + 1), 6).shape_name).not_to eq '不等辺三角形ですね！'
      end

      it 'is not scalene triangle, when sides are 4, 5, (6 - 1)' do
        expect(Triangle.new(4, 5, (6 - 1)).shape_name).not_to eq '不等辺三角形ですね！'
      end

      it 'is not scalene triangle, when sides are 4, 5, (6 + 3)' do
        expect(Triangle.new(4, 5, (6 + 3)).shape_name).not_to eq '不等辺三角形ですね！'
      end

      # 二等辺三角形の境界値分析
      it 'is not isosceles triangle, when sides are (5 - 2), 5, 4' do
        expect(Triangle.new((5 - 2), 5, 4).shape_name).not_to eq '二等辺三角形ですね！'
      end

      it 'is not isosceles triangle, when sides are (5 + 1), 5, 4' do
        expect(Triangle.new((5 + 1), 5, 4).shape_name).not_to eq '二等辺三角形ですね！'
      end

      it 'is not isosceles triangle, when sides are 5, (5 - 2), 4' do
        expect(Triangle.new(5, (5 - 2), 4).shape_name).not_to eq '二等辺三角形ですね！'
      end

      it 'is not isosceles triangle, when sides are 5, (5 + 1), 4' do
        expect(Triangle.new(5, (5 + 1), 4).shape_name).not_to eq '二等辺三角形ですね！'
      end

      it 'is not isosceles triangle, when sides are 5, 5, (4 + 1)' do
        expect(Triangle.new(5, 5, (4 + 1)).shape_name).not_to eq '二等辺三角形ですね！'
      end

      # 正三角形の境界値分析
      it 'is not equilateral triangle, when sides are (5 - 1), 5, 5' do
        expect(Triangle.new((5 - 1), 5, 5).shape_name).not_to eq '正三角形ですね！'
      end

      it 'is not equilateral triangle, when sides are (5 + 1), 5, 5' do
        expect(Triangle.new((5 + 1), 5, 5).shape_name).not_to eq '正三角形ですね！'
      end

      it 'is not equilateral triangle, when sides are 5, (5 - 1), 5' do
        expect(Triangle.new(5, (5 - 1), 5).shape_name).not_to eq '正三角形ですね！'
      end

      it 'is not equilateral triangle, when sides are 5, (5 + 1), 5' do
        expect(Triangle.new(5, (5 + 1), 5).shape_name).not_to eq '正三角形ですね！'
      end

      it 'is not equilateral triangle, when sides are 5, 5, (5 - 1)' do
        expect(Triangle.new(5, 5, (5 - 1)).shape_name).not_to eq '正三角形ですね！'
      end

      it 'is not equilateral triangle, when sides are 5, 5, (5 + 1)' do
        expect(Triangle.new(5, 5, (5 + 1)).shape_name).not_to eq '正三角形ですね！'
      end
    end
  end
end
