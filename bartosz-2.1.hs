{-
 - https://www.youtube.com/watch?v=O2lZkr-aAqk
 - Category Theory 2.1: Functions, epimorphisms
 -
 - Contents:
 - epimorphism def/example
 -
-}



{- epimorphism
 - g1 . f isomorphic to g2 . f
 - because f surjects to an image over which g1 and g2 are isomorphic
-}

-- EXAMPLE:

-- preimage: Float
-- image: positive floats
f :: Float -> Float
f x = x * x

-- preimage: Float
-- image: Float
g1 :: Float -> Float
g1 x = x + 1.0


-- preimage: Float
-- image: positive floats 
-- note: NOT the same as g1. g1 -8.0 != g2 -8.0
g2 :: Float -> Float
g2 x = (abs x) + 1.0


-- isomorphic. (g1 . f) -8.0 == (g2 . f) -8.0
h1 = g1 . f
h2 = g2 . f




main :: IO ()
main = do
    putStrLn "epimorphism example:"
    putStrLn "\ng1 -8.0"
    print (g1 (-8.0))
    putStrLn "\ng2 -8.0"
    print (g2 (-8.0))
    putStrLn "\n(g1 . f) -8.0"
    print ((g1 . f) (-8.0))
    putStrLn "\n(g2 . f) -8.0"
    print ((g2 . f) (-8.0))



