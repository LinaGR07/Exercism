module Bob (responseFor) where

import Data.Char (isSpace, isUpper, isLower, isLetter)
import Data.List (isSuffixOf)

responseFor :: String -> String
responseFor xs
    | null input                = "Fine. Be that way!"
    | isYelling && isQuestion   = "Calm down, I know what I'm doing!"
    | isYelling                 = "Whoa, chill out!"
    | isQuestion                = "Sure."
    | otherwise                 = "Whatever."
  where
    input = filter (not . isSpace) xs -- On crée 'input', la version sans espaces de 'xs'
    isQuestion = isSuffixOf "?" input
    isYelling  = (any isUpper input) && (not (any isLower input ))