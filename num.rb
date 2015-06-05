def eng num
if num<0
return "enter the number more than 0"
end
if num==0
return 'Zero'
end
num1=''
left=num
string=''
ones=["one ","two ","three ","four ","five ","six ","seven ","eight ","nine "]
tens=["ten ","twenty ","thirty ","forty ","fifty ","sixty ","seventy ","eighty ","ninty "]
teens=["eleven ","twelve ","thirteen ","forteen ","fifteen ","sixteen ","seventeen ","eighteen ","ninteen "] 
left=num
right=left/10000
left=left-right*10000
if (right>9 and left>=0)
num1=eng right
string=string+num1+' Lakh '
end
left=num
right=left/1000
left=left-right*1000
if (right>0 and left>=0)
num1=eng right
string=string+num1+' thousand '
end
right=left/100
left=left-right*100
if right>0
num1=eng right
string=string+num1+' hundred '
string=string+'  '
right=''
end
right=left/10
left=left-right*10
if right > 0
    if ((right== 1) and (left > 0))
    string=string+teens[left-1]  
  elsif left>=0
string=string+tens[right-1]
string=string+' '
end
if ((left>0) and (right!=1))
string=string+"-"
end
end

if ((left>0) and (right!=1))
    string=string+ones[left-1]
 end
string
end

puts eng(1003459)
puts eng(113345)
puts eng(1010375)
puts eng(12334455)
puts eng(3454364552)



