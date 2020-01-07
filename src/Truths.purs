module Truths where

import Prelude

type Truth = String

type Truths = { iron :: Truth
              , firstborn :: Truth
              , settlements :: Truth
              }


truthsToString :: Truths -> String
truthsToString truth =
  truth.iron <> ", " <> truth.firstborn
