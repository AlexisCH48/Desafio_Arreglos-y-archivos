#abrir el archivo y asignar los valores a un arregle
data = File.open('ventas_base.db').read.split(",")
data.map!{|x| x.to_f} #cambiar los datos del arreglo a decimales

#definir el metodo para filtar los datos iterados
def aumentar(array, aumento, desde, hasta)
    arr_filtro = array[desde..hasta] #rango de los datos filtrados
    arr_filtro.map!{|venta_mensual| venta_mensual * aumento}.sum #valor total por el porcentaje de aumento
end

#guardar los valores totales en un nuevo archivo 
output = File.open('resultados.data', 'w')
output.write('// Estos valores son referenciales')
output.write("\n")
output.write(aumentar(data, 1.1, 0, 5)) #guardar los valores del primer semestre
output.write("\n")
output.write(aumentar(data, 1.2, 6, 11)) #guardar los valores del segundo semestre
output.close
