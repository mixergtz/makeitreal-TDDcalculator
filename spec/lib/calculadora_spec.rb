require "spec_helper"
require "calculadora"

describe Calculator do
  let(:calculadora) { Calculator.new }

  it "should add " do
    calculadora.sumar(10, 20).should == 30
    calculadora.sumar(5, 4, 2, 5, 8).should == 24
    calculadora.sumar(5, -4, 2, 5, 8).should == 16
  end

  it "should substract" do
    calculadora.restar(5, 4).should == 1
    calculadora.restar(5, -4).should == 9
    calculadora.restar(10, 4, 6).should == 0
  end

  it "should multiply and divide" do
    calculadora.multiplicar(10, 2).should == 20
    calculadora.dividir(10, 2).should == 5
  end

  it "should evaluate a string passed in " do
    Calculator.evaluar("1 + 4 + 8 - 10 + 2 * 4").should == 11
    Calculator.evaluar("10+(2*4)-10/2").should == 13
  end

  it "should handle wrong arguments" do
      expect { calculadora.sumar("dfdsaf") }.to raise_error(ArgumentError)
      expect { calculadora.restar("dfdsaf") }.to raise_error(ArgumentError)
      expect { calculadora.multiplicar("dfdsaf") }.to raise_error(ArgumentError)
      expect { calculadora.dividir("dfdsaf") }.to raise_error(ArgumentError)
      expect { calculadora.dividir(1,0) }.to raise_error(ArgumentError)
      expect { Calculator.evaluar("dfadfasdf") }.to raise_error(ArgumentError)
      expect { Calculator.evaluar("1+++***3") }.to raise_error(ArgumentError)
      expect { Calculator.evaluar("((((*))))+22+/3") }.to raise_error(ArgumentError)
      expect { Calculator.evaluar(" 10 + ( 2 * (4 ) - 10 / 2") }.to raise_error(ArgumentError)
  end


end