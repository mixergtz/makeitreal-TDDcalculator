class Calculator

  def self.evaluar(string)
    raise ArgumentError, "Tienes errores en tus argumentos. Un ejemplo sería (2+4*5+3)" unless string.match(/^-?(?:\s*?\(*?\d+\)*?\s*?(\+|\-|\*|\/)?)*$/)
    eval(string)
  end

  def sumar(*args)
    raise ArgumentError, "Tienes errores en tus argumentos. Deben ser numeros separados por comas así (21,2,3)" unless args.all? {|i| i.is_a? Numeric }
    args.inject(:+)
  end

  def restar(*args)
    raise ArgumentError, "Tienes errores en tus argumentos. Deben ser numeros separados por comas así (21,2,3)" unless args.all? {|i| i.is_a? Numeric }
    args.inject(:-)
  end

  def multiplicar(a,b)
    raise ArgumentError, "Tienes errores en tus argumentos. Deben ser numeros separados por comas así (3,2)" unless (a.is_a? Numeric) || (b.is_a? Numeric)
    a * b
  end

  def dividir(a,b)
    raise ArgumentError, "Tienes errores en tus argumentos. Deben ser numeros separados por comas así (3,2)" if (!a.is_a? Numeric) || (!b.is_a? Numeric) || (b == 0)
    a / b
  end

end