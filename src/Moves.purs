module Moves where

import Prelude

import Characters (Character)
import Vows (Vow)

data RollResult = StrongHit | WeakHit | Miss

data QuestMove = SwearAnIronVow Vow | FulfillYourVow | ForsakeYourVow

applyQuestMove :: QuestMove -> Character -> Character

applyQuestMove (SwearAnIronVow vow) character =
  character { vows = character.vows <> [vow] }

applyQuestMove FulfillYourVow character =
    character

applyQuestMove ForsakeYourVow character =
  character
