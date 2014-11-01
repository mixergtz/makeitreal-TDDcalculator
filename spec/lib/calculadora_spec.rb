require "spec_helper"
require "calculadora"

describe Calculator do

  it "should add two numbers passed in params" do
    calculadora = Calculator.new
    suma = calculadora.sumar(10, 20)
    suma.should == 30
  end

  it "should add multiple numbers passed in params" do
    calculadora = Calculator.new
    suma = calculadora.sumar(5, 4, 2, 5, 8)
    suma.should == 24
  end

  it "should add multiple numbers passed in params even if negative" do
    calculadora = Calculator.new
    suma = calculadora.sumar(5, -4, 2, 5, 8)
    suma.should == 16
  end

  it "should subtract two numbers passed in params" do
    calculadora = Calculator.new
    resta = calculadora.restar(5, 4)
    resta.should == 1
  end

  it "should subtract two numbers passed in params even if negative" do
    calculadora = Calculator.new
    resta = calculadora.restar(5, -4)
    resta.should == 9
  end

  it "should subtract multiple numbers passed in params" do
    calculadora = Calculator.new
    resta = calculadora.restar(10, 4, 6)
    resta.should == 0
  end

  it "should multiply two numbers passed in params" do
    calculadora = Calculator.new
    multiplicacion = calculadora.multiplicar(10, 2)
    multiplicacion.should == 20
  end

  it "should divide two numbers passed in params" do
    calculadora = Calculator.new
    multiplicacion = calculadora.dividir(10, 2)
    multiplicacion.should == 5
  end

  it "should evaluate a string passed in " do
    resultado = Calculator.evaluar("1 + 4 + 8 - 10 + 2 * 4")
    resultado.should == 11
  end

  it "should evaluate nested expressions in string" do
    resultado = Calculator.evaluar("10+(2*4)-10/2")
    resultado.should == 13
  end

end