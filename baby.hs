doubleMe x = x + x
doubleUs x y = doubleMe x  + doubleMe y   
doubleSmallNum x = if x > 100 
			then x 
			else x*2 
removeUpperCase string = [c|c <- string, c `elem` ['A'..'Z']]
lucky :: (Integral a) => a -> String 
lucky 7 = "LUCKY NUM SEVEN"
lucky x = "not lucky" 

addVectors :: (Num a)=> (a,a) -> (a,a) -> (a,a)
addVectors (x1,y1) (x2,y2) = (x1 + x2, y1+y2) 

sum' :: (Num a) => [a] -> a 
sum'[] = 0 
sum'(x:xs) = x + sum' xs 

head' :: [a] -> a 
head' [] = error "DUMBASS" 
head' (x:_) = x 

tell :: (Show a) => [a] -> String 
tell [] = "Tis empty, sherlock"
tell (x:[]) = "One element: " ++ show x 
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y 
tell (x:y:_) = "This is a long ass list" 

