section Ex1

-- 42 + 19
-- ==> 61
#eval 42 + 19

-- String.append "A" (String.append "B" "C")
-- ==> String.append "A" "BC"
-- ==> "ABC"
#eval String.append "A" (String.append "B" "C")

-- String.append (String.append "A" "B") "C"
-- ==> String.append "AB" "C"
-- ==> "ABC"
#eval String.append (String.append "A" "B") "C"

-- if 3 == 3 then 5 else 7
-- ==> if true then 5 else 7
-- ==> 5
#eval if 3 == 3 then 5 else 7

-- if 3 == 4 then "equal" else "not equal"
-- ==> if false then "equal" else "not equal"
-- ==> "not equal"
#eval if 3 == 4 then "equal" else "not equal"

end Ex1



section Ex3

/- Define the function joinStringsWith with type String →
   String → String → String that creates a new string by
   placing its first argument between its second and third
   arguments. joinStringsWith ", " "one" "and
   another" should evaluate to "one, and another". -/

def joinStringsWith (separator : String) (before : String) (after : String) : String :=
    String.join [before, separator, after]
#eval joinStringsWith ", " "one" "and another"

/- What is the type of joinStringsWith ": "? Check your
   answer with Lean. -/

-- #check (joinStringsWith ": ")
-- ==> joinStringWith ": " : String -> String -> String
#check (joinStringsWith ": ")

/- Define a function volume with type Nat → Nat → Nat →
   Nat that computes the volume of a rectangular prism with the
   given height, width, and depth. -/
def volume (height : Nat) (width : Nat) (depth : Nat) : Nat :=
    height * width * depth

end Ex3
