fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

fastFib _ _ 0 = 0
fastFib n1 _ 1 = n1
fastFib n1 n2 counter = fastFib n2 (n1 + n2) (counter - 1)