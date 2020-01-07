module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)

import Moves (QuestMove(..), applyQuestMove)
import Truths (truthsToString)
import Vows (Rank(..), VowStatus(..))

main :: Effect Unit
main = do
  let truths = { iron: "iron", firstborn: "first", settlements: "circles" }
  let x = truthsToString truths

  let character = { vows: []}
  let newVow = { rank: Formidable, status: InProgress, title: "yo "}
  let character' = applyQuestMove (SwearAnIronVow newVow) character
 
  log x
