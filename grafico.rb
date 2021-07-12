def chart(array)
    array.each do |item|
        puts "| #{'**' * item}"
    end
    max = array.max
    puts "| #{'>' + '-' * (max * 2)}"
    max.times do |i|
        i += 1
        print "#{i} "
    end
    print "\n"
end

a = [3,5,2,6,7]
#chart(a)