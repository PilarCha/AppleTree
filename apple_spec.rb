require_relative 'apple'
RSpec.describe Apple do
  before(:each) do
    @apple=Apple.new
    @tree=Apple.new.year_gone_by
    @make=Apple.new.year_gone_by.year_gone_by.year_gone_by.year_gone_by
    @old=11.times{Apple.new.year_gone_by}
  end

  it "age attribute has a getter and setter " do
    @apple.age=44
    expect(@apple.age).to eq(44)
  end

  it "height has a getter!" do
    expect(@apple.height).to eq(50)
  end

  it "apple count has a getter" do
    expect(@apple.apple_count).to eq(0)

  end

  describe "methods baby!" do
    it "height cant be set by the user!" do
      expect{@apple.height=44}.to raise_error(NoMethodError)
    end

    it "apple count cat be set!" do
      expect{@apple.apple_count=5}.to raise_error(NoMethodError)
    end
  end
  describe "Time flies" do
    it "Adds one year" do
      expect(@tree.age).to eq(1)
    end

    it "increases the height by 10 percent" do
      expect(@tree.height).to eq(55)
    end

    it "increases the apples to 2" do
      expect(@make.apple_count).to eq(2)
    end

    it "doesnt produce apples in the first three years" do
      expect(@tree.apple_count).to eq(0)
    end


    it "shound not increase if the age is greater than 10" do
      # current age is 11 since the before(:each) in the parent context
      10.times { @apple.year_gone_by }
      expect(@apple.apple_count).to eq(14)
    end

    it "Apples picked resets the apples to 0" do
      @make.pick_apples
      expect(@make.apple_count).to eq(0)
    end
  end


end
