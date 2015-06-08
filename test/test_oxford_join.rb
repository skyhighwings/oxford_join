require 'minitest_helper'

describe Array do
  let(:ary_with_zero_items) do
    []
  end

  let(:ary_with_one_item) do
    [1]
  end

  let(:ary_with_two_items) do
    [1, 2]
  end

  let(:ary_with_three_items) do
    [1, 2, 3]
  end

  let(:ary_with_four_items) do
    [1, 2, 3, 4]
  end

  it "must work with no items" do
    ary_with_zero_items.oxford_join.must_equal ""
  end

  it "must work with one item" do
    ary_with_one_item.oxford_join.must_equal "1"
  end

  it "must work with two items" do
    ary_with_two_items.oxford_join.must_equal "1 and 2"
  end

  it "must work with three items" do
    ary_with_three_items.oxford_join.must_equal "1, 2, and 3"
  end

  it "must work with four items" do
    ary_with_four_items.oxford_join.must_equal "1, 2, 3, and 4"
  end

  it "must work with a custom separator" do
    ary_with_three_items.oxford_join('or').must_equal "1, 2, or 3"
  end
end
