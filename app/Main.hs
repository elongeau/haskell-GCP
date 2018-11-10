{-# LANGUAGE DataKinds, FlexibleContexts, FlexibleInstances, TypeOperators #-}
module Main where

import Lib
import Servant

import Network.Wai.Handler.Warp (run)

type API = Capture "name" String :> Get '[JSON] String

server :: Server API
server = ping

ping :: String -> Handler String
ping name = return $ "Hello " ++ name

app :: Application
app = serve (Proxy :: Proxy API) server

main :: IO ()
main = run 8080 app
