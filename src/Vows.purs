module Vows where

data Rank = Troublesome | Dangerous | Formidable | Extreme | Epic

data VowStatus = InProgress | Fulfilled | Forsaken

type Vow = { title :: String
           , rank :: Rank
           , status :: VowStatus
           }
