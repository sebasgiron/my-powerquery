// Para utilizar como parámetro una lista de valores (separada por comas)
// que luego se convierte en un objeto List

// El parámetro es algo como esto
// P_CAMPANYAS = 
"100000015, 100000018" meta [IsParameterQuery=true, Type="Text", IsParameterQueryRequired=true]

// Y luego se convierte en lista con una transformación así: 
let
    lista = Text.Split(P_CAMPANYAS, ","),
    lista2 = List.Transform(lista, each Text.Trim(_))
in
    lista2
    
