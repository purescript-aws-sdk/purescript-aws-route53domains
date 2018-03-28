

-- | <p>Amazon Route 53 API actions let you register domain names and perform related operations.</p>
module AWS.Route53Domains where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Service (Options, Service, ServiceName(..), service) as AWS

newtype Service = Service AWS.Service

service :: forall eff. AWS.Options -> Eff (exception :: EXCEPTION | eff) Service
service options = do
    let serviceName = AWS.ServiceName "Route53Domains"
    service' <- AWS.service serviceName options
    pure $ Service service'
