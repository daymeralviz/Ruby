# Regex
is_gmail_regex = /\w+@gmail.com/
"simon@gmail.com".match /\w+@gmail.com/
"simon@gmail.com".match? /\w+@gmail.com/
"simon@gmail.com" =~ /\w+@gmail.com/

# Multiples matches
number_regex = /\d+/

irb(main):016:0> "2323".match number_regex
=> #<MatchData "2323">

"calle falsa 123 - 192".scan number_regex
