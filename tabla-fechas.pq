// Tabla de fechas a partir de dos parámetros
let
   diferencia = p_fecha_max - p_fecha_min,
   fechas = List.DateTimes(p_fecha_min, Number.From(diferencia)+1, #duration(1,0,0,0)), 
   fechas2 = List.Transform(fechas, each {_}),
   tabla = Table.FromRows(fechas2, {"fecha"}),
    #"Tipo cambiado" = Table.TransformColumnTypes(tabla,{{"fecha", type datetime}})
in
    #"Tipo cambiado"
