module Darts (score) where

score :: Float -> Float -> Int
score x y
  | distanceSquared <= 1    = 10  -- Bullseye (rayon 1)
  | distanceSquared <= 25   = 5   -- Cercle moyen (rayon 5)
  | distanceSquared <= 100  = 1   -- Cercle extérieur (rayon 10)
  | otherwise                = 0   -- En dehors de la cible
  where
    distanceSquared = x^2 + y^2

 -- Mon erreur -> il faut vérifier la distance au centre les conditions n'étaient pas bonnes 
 -- au début, quand j'avais pas mis la fonction ça mettait trop de temps à s'exécuter
