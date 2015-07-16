class Calc
    VALORES={one: "1", two:"2", three:"3", four:"4", five:"5", six:"6", seven: "7", eight:"8", nine:"9", ten:"10", plus:"+", minus:"-", times:"*", divided_by:"/"}
    def initialize()
        @op=""
    end
    def method_missing(sym)
        @op+=VALORES[sym]
        if @op.length==3
            return eval(@op)
        end
        self
    end
end

p Calc.new.one.plus.two # Debe retornar 3
p Calc.new.five.minus.six # Debe retornar -1
p Calc.new.seven.times.two # Debe retornar 14
p Calc.new.nine.divided_by.three # Debe retornar 3
