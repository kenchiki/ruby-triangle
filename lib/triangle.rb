# 三角形の形を判定
class Triangle
  # initialize
  # @param side1 [Numeric]
  # @param side2 [Numeric]
  # @param side3 [Numeric]
  def initialize(side1, side2, side3)
    raise ArgumentError, 'side must be greater than 0' if side1 <= 0 || side2 <= 0 || side3 <= 0
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  # 三角形の形を数値で返す
  # @return [Numeric] 0:三角形でない or 1:正三角形 or 2:二等辺三角形 or 3:不等辺三角形
  def shape
    return 0 unless (side1 + side2 > side3) && (side2 + side3 > side1) && (side3 + side1 > side2)
    [side1, side2, side3].uniq.size
  end

  # 三角形の形を返す
  # @return [String]
  def shape_name
    triangle_names = {0 => '三角形じゃないです＞＜',1 => '正三角形ですね！', 2 => '二等辺三角形ですね！', 3 => '不等辺三角形ですね！'}
    triangle_names[shape]
  end

  private

  attr_reader :side1, :side2, :side3
end
