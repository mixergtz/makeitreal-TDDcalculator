class Calculator

  def self.evaluar(string)
    eval(string)
  end

  def sumar(*args)
    args.inject(:+)
  end

  def restar(*args)
    args.inject(:-)
  end

  def multiplicar(a,b)
    a * b
  end

  def dividir(a,b)
    a / b
  end



end