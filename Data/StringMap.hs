{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- ----------------------------------------------------------------------------

{- |
  Module     : Data.StringMap
  Copyright  : Copyright (C) 2009-2012 Uwe Schmidt
  License    : MIT

  Maintainer : Uwe Schmidt (uwe@fh-wedel.de)
  Stability  : experimental
  Portability: not portable

  Facade for prefix tree implementation
  
-}

-- ----------------------------------------------------------------------------

module Data.StringMap
    ( StringMap (..)
    , Key
    , (!)
    , value
    , valueWithDefault
    , null
    , size
    , member
    , lookup
    , findWithDefault  
    , prefixFind
    , prefixFindWithKey
    , prefixFindWithKeyBF
    , empty
    , singleton
    , insert
    , insertWith
    , insertWithKey
    , delete
    , update
    , updateWithKey
    , map
    , mapWithKey
    , mapM
    , mapWithKeyM
    , fold
    , foldWithKey
    , union
    , unionWith
    , unionWithKey
    , difference
    , differenceWith
    , differenceWithKey
    , keys
    , elems
    , toList
    , fromList
    , toListBF
    , toMap
    , fromMap
    , space
    , keyChars

    , prefixFindCaseWithKey     -- fuzzy search
    , prefixFindNoCaseWithKey
    , prefixFindNoCase
    , lookupNoCase

    , prefixFindCaseWithKeyBF
    , prefixFindNoCaseWithKeyBF
    , lookupNoCaseBF
    )
where

import Prelude hiding ( succ, lookup, map, mapM, null )

import Data.StringMap.Base
import Data.StringMap.FuzzySearch
import Data.StringMap.Types