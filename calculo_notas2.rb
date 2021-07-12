#abrir el archivo y filtrar los valores 
data = File.open('notas.data').readlines
data.map!{|line| line.split(',')}

#definir metodo
def nota_mas_alta(array)
    results = []
    array.each do |line| #iteracio por cada linea
        results.push [line[0], line.map!{|x| x.to_i}.max] #crear nuevo arreglo y separar string de los interger
    end
    return results 
end

print nota_mas_alta(data)
print "\n"