# Largest product in a series
# Problem 8
# The four adjacent digits in the 1000-digit number that have the greatest product are 9 × 9 × 8 × 9 = 5832.
#
#                             73167176531330624919225119674426574742355349194934
#                             96983520312774506326239578318016984801869478851843
#                             85861560789112949495459501737958331952853208805511
#                             12540698747158523863050715693290963295227443043557
#                             66896648950445244523161731856403098711121722383113
#                             62229893423380308135336276614282806444486645238749
#                             30358907296290491560440772390713810515859307960866
#                             70172427121883998797908792274921901699720888093776
#                             65727333001053367881220235421809751254540594752243
#                             52584907711670556013604839586446706324415722155397
#                             53697817977846174064955149290862569321978468622482
#                             83972241375657056057490261407972968652414535100474
#                             82166370484403199890008895243450658541227588666881
#                             16427171479924442928230863465674813919123162824586
#                             17866458359124566529476545682848912883142607690042
#                             24219022671055626321111109370544217506941658960408
#                             07198403850962455444362981230987879927244284909188
#                             84580156166097919133875499200524063689912560717606
#                             05886116467109405077541002256983155200055935729725
#                             71636269561882670428252483600823257530420752963450
#
# Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this
# product?

import sequtils, sugar, math, strutils

type
  StringIterator = object
    input: string
    chunk_len: int

proc init_StringIterator(chunk_len: int): StringIterator =
  result.input = "73167176531330624919225119674426574742355349194934969835203127745063262395783180169848018694788518" &
                 "43858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304" &
                 "35576689664895044524452316173185640309871112172238311362229893423380308135336276614282806444486645" &
                 "23874930358907296290491560440772390713810515859307960866701724271218839987979087922749219016997208" &
                 "88093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441" &
                 "57221553975369781797784617406495514929086256932197846862248283972241375657056057490261407972968652" &
                 "41453510047482166370484403199890008895243450658541227588666881164271714799244429282308634656748139" &
                 "19123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421" &
                 "75069416589604080719840385096245544436298123098787992724428490918884580156166097919133875499200524" &
                 "06368991256071760605886116467109405077541002256983155200055935729725716362695618826704282524836008" &
                 "23257530420752963450"
  result.chunk_len = chunk_len


iterator items(string_iterator: StringIterator): string =
  var idx = 0
  while idx + string_iterator.chunk_len < string_iterator.input.len:
    yield string_iterator.input[idx..<idx+string_iterator.chunk_len]
    idx += 1


proc solution*(length: int): int =
  do_assert length > 0, "length should be positive"
  let string_iterator = init_StringIterator(length)
  for substring in string_iterator:
    let ints = substring.map(x => parse_int($x))
    let prod = ints.prod
    if prod > result:
      result = prod


