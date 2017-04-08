{-# LANGUAGE CPP #-}

import Data.Hourglass
import Time.System
import System.Process

timeFmt = [ Format_MonthName_Short , space , Format_Day2, space, Format_Year4
          , space , Format_Hour, colon, Format_Minute, colon, Format_Second
          , space , Format_TimezoneName, space, Format_TzHM_Colon ]
  where colon = Format_Text ':'
        space = Format_Text ' '

main = do
  putStrLn "output of 'uname -a'"
  callCommand "uname -a"

  putStrLn "output of 'date'"
  callCommand "date"

  putStrLn $ "timeCurrent with hourglass-" ++ VERSION_hourglass
  utc <- timeCurrent
  putStrLn $ timePrint timeFmt utc

  putStrLn $ "dateCurrent with hourglass-" ++ VERSION_hourglass
  utc' <- dateCurrent
  putStrLn $ timePrint timeFmt utc'

  putStrLn $ "localDateCurrent with hourglass-" ++ VERSION_hourglass
  local <- localDateCurrent
  putStrLn $ localTimePrint timeFmt local

  putStrLn $ "timezoneCurrent with hourglass-" ++ VERSION_hourglass
  offset <- timezoneCurrent
  print offset
