#abrir el archivo y filtrar los valores 
data = File.open('notas.data').readlines
data.map!{|line| line.split(',')}

#definir metodo
def nota_mas_alta(array)
    [array[0], array.map!{|x| x.to_i}.max] #crear nuevo arreglo y separar string de los interger
end

print nota_mas_alta(data[0])
print "\n"