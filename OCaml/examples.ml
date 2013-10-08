let cube x = x * x * x

let neg x = x < 0

let isvowel c = 
	c = 'a' || c = 'e' || c = 'i' || c = 'o' || c = 'u'
	
let addtoten a b = 
	a + b = 10

let rec factorial a = 
	if a = 1 then 1 else a * factorial (a - 1)
	
let rec gcd a b = 
	if b = 0 then a else gcd b (a mod b)

let not x = 
	if x then false else true

let rec trisum x = 
	if x = 1 then 1 else x + trisum (x - 1)
	
let rec power x n =
	if n = 1 then x else x * power x (n-1)
	
let rec factorial_match a =
	match a with
	  1 -> 1
	| _ a * fact_match (a - 1)
	
let vowel_match c = 
	match c with
	  'a' -> true
	| 'e' -> true
	| 'i' -> true
	| 'o' -> true
	| 'u' -> true
	|  _  -> false

let simple_vowel_match c =
	match c with
	 'a' | 'a' | 'a' | 'a' | 'a' -> true
	| _ -> false
	
let rec gcd_match a b = 
	match b with 
	  0 -> a
	| _ -> gcd b (a mod b)
	
let not_match x =
	match x with
	  true -> false
	| false -> true

let rec trisum_match n = 
	match n with
	  1 -> 1
	| _ -> n + trisum_match (n-1)
	







