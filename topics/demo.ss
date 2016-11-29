// simple greeting
+ ~emohello
- Good ^getTimeOfDay().

// built in function that uses Wordnet to define something
+ What is a *1
- ^isA(<cap1>)

// built in function for storing triples about current user
+ my <noun1> is [called|named] <name1>
- ^save(<cap2>,<cap1>)

// question can be asked about above case
? Do you remember <name1> 
- {^hasItem(<cap1>, false)} No.
- {^hasItem(<cap1>, true)} Yeah, they are your ^get(<cap1>). 

// designed to handle specific case from Loebner Prize
+ [if] <name1> [is|be] [more|less] <adjectives> (then|than) <name2>
- ^createUserFact(<cap1>,<cap2>,<cap4>)

// built in function to handle question about above case
? *~3 who *~2 <adjectives> [<name1> or <name2>]
- ^resolveAdjective()
