require "spec_helper"

describe "mongoid_auto_increment" do

  before(:each) do
    @book1 = Book.create :name => "The Rails Way"
    @book2 = Book.create :name => "The Ruby Programming Language "
    @book3 = Book.create :name => "Metaprogramming Ruby"
    @order1 = Order.create :name => "First Order"
    @order2 = Order.create :name => "Second Order"
    @order3 = Order.create :name => "Last Order"
    @post1 = Post.create :name => "First Post"
    @post2 = Post.create :name => "Second Post"
    @post3 = Post.create :name => "Last Post"
  end

  describe "single auto-increment field" do
    it "should have id 1" do
      @book1.sequence.should eql 1
    end

    it "should have id 2" do
      @book2.sequence.should eql 2
    end

    it "should have id 3" do
      @book3.sequence.should eql 3
    end
  end

  describe "single auto-increment field with seed 1000" do
    it "should have id 1001" do
      @order1.num.should eql 1001
    end

    it "should have id 1002" do
      @order2.num.should eql 1002
    end

    it "should have id 1003" do
      @order3.num.should eql 1003
    end
  end

  describe "two auto-increment fields" do
    it "should have id 1" do
      @post1.key.should eql 501
    end

    it "should have id 2" do
      @post2.key.should eql 502
    end

    it "should have id 3" do
      @post3.key.should eql 503
    end

    it "should have id 1" do
      @post1.num.should eql 1
    end

    it "should have id 2" do
      @post2.num.should eql 2
    end

    it "should have id 3" do
      @post3.num.should eql 3
    end
  end
end