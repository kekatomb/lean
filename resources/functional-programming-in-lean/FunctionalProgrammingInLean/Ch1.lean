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



section Ex4

/- Define a structure named RectangularPrism that contains
   the height, width, and depth of a rectangular prism, each as a
   Float. -/

structure RectangularPrism where
   height : Float
   width : Float
   depth : Float

/- Define a function named volume : RectangularPrism →
   Float that computes the volume of a rectangular prism. -/

def RectangularPrism.volume (r : RectangularPrism) : Float :=
   r.height * r.width * r.depth

/- Define a structure named Segment that represents a line
   segment by its endpoints, and define a function length :
   Segment → Float that computes the length of a line
   segment. Segment should have at most two fields. -/

structure Point where
   x : Float
   y : Float

structure Segment where
   beginning : Point
   ending : Point

def Segment.length (s : Segment) : Float :=
   Float.sqrt (
      ((s.beginning.x - s.ending.x) ^ 2.)
      +
      ((s.beginning.y - s.ending.y) ^ 2.)
   )

end Ex4
