cats = Array.new(100, true)
counter = 1
while(true) do
  cats.each_with_index do |cat,index|
      if (index % counter == 0)
        if (cats[index] == false)
          cats[index] = true
        else
          cats [index] = false
        end
      end
  end
  counter = counter + 1
  if counter == 100
    break
  end
  puts cats
end