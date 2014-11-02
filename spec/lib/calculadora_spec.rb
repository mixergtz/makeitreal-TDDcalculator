require "spec_helper"
require "calculadora"

describe Calculator do
  let(:calculadora) { Calculator.new }

  it "should add two numbers passed in params" do
    calculadora.sumar(10, 20).should == 30
  end

  it "should add multiple numbers passed in params" do
    calculadora.sumar(5, 4, 2, 5, 8).should == 24
  end

  it "should add multiple numbers passed in params even if negative" do
    calculadora.sumar(5, -4, 2, 5, 8).should == 16
  end

  it "should subtract two numbers passed in params" do
    calculadora.restar(5, 4).should == 1
  end

  it "should subtract two numbers passed in params even if negative" do
    calculadora.restar(5, -4).should == 9
  end

  it "should subtract multiple numbers passed in params" do
    calculadora.restar(10, 4, 6).should == 0
  end

  it "should multiply two numbers passed in params" do
    calculadora.multiplicar(10, 2).should == 20
  end

  it "should divide two numbers passed in params" do
    calculadora.dividir(10, 2).should == 5
  end

  it "should evaluate a string passed in " do
    Calculator.evaluar("1 + 4 + 8 - 10 + 2 * 4").should == 11
  end

  it "should evaluate nested expressions in string" do
    Calculator.evaluar("10+(2*4)-10/2").should == 13
  end

end