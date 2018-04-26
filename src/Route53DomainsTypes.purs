
module AWS.Route53Domains.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AddressLine = AddressLine String
derive instance newtypeAddressLine :: Newtype AddressLine _
derive instance repGenericAddressLine :: Generic AddressLine _
instance showAddressLine :: Show AddressLine where show = genericShow
instance decodeAddressLine :: Decode AddressLine where decode = genericDecode options
instance encodeAddressLine :: Encode AddressLine where encode = genericEncode options



-- | <p>Information for one billing record.</p>
newtype BillingRecord = BillingRecord 
  { "DomainName" :: Maybe (DomainName)
  , "Operation" :: Maybe (OperationType)
  , "InvoiceId" :: Maybe (InvoiceId)
  , "BillDate" :: Maybe (Types.Timestamp)
  , "Price" :: Maybe (Price)
  }
derive instance newtypeBillingRecord :: Newtype BillingRecord _
derive instance repGenericBillingRecord :: Generic BillingRecord _
instance showBillingRecord :: Show BillingRecord where show = genericShow
instance decodeBillingRecord :: Decode BillingRecord where decode = genericDecode options
instance encodeBillingRecord :: Encode BillingRecord where encode = genericEncode options

-- | Constructs BillingRecord from required parameters
newBillingRecord :: BillingRecord
newBillingRecord  = BillingRecord { "BillDate": Nothing, "DomainName": Nothing, "InvoiceId": Nothing, "Operation": Nothing, "Price": Nothing }

-- | Constructs BillingRecord's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBillingRecord' :: ( { "DomainName" :: Maybe (DomainName) , "Operation" :: Maybe (OperationType) , "InvoiceId" :: Maybe (InvoiceId) , "BillDate" :: Maybe (Types.Timestamp) , "Price" :: Maybe (Price) } -> {"DomainName" :: Maybe (DomainName) , "Operation" :: Maybe (OperationType) , "InvoiceId" :: Maybe (InvoiceId) , "BillDate" :: Maybe (Types.Timestamp) , "Price" :: Maybe (Price) } ) -> BillingRecord
newBillingRecord'  customize = (BillingRecord <<< customize) { "BillDate": Nothing, "DomainName": Nothing, "InvoiceId": Nothing, "Operation": Nothing, "Price": Nothing }



newtype BillingRecords = BillingRecords (Array BillingRecord)
derive instance newtypeBillingRecords :: Newtype BillingRecords _
derive instance repGenericBillingRecords :: Generic BillingRecords _
instance showBillingRecords :: Show BillingRecords where show = genericShow
instance decodeBillingRecords :: Decode BillingRecords where decode = genericDecode options
instance encodeBillingRecords :: Encode BillingRecords where encode = genericEncode options



-- | <p>The CheckDomainAvailability request contains the following elements.</p>
newtype CheckDomainAvailabilityRequest = CheckDomainAvailabilityRequest 
  { "DomainName" :: (DomainName)
  , "IdnLangCode" :: Maybe (LangCode)
  }
derive instance newtypeCheckDomainAvailabilityRequest :: Newtype CheckDomainAvailabilityRequest _
derive instance repGenericCheckDomainAvailabilityRequest :: Generic CheckDomainAvailabilityRequest _
instance showCheckDomainAvailabilityRequest :: Show CheckDomainAvailabilityRequest where show = genericShow
instance decodeCheckDomainAvailabilityRequest :: Decode CheckDomainAvailabilityRequest where decode = genericDecode options
instance encodeCheckDomainAvailabilityRequest :: Encode CheckDomainAvailabilityRequest where encode = genericEncode options

-- | Constructs CheckDomainAvailabilityRequest from required parameters
newCheckDomainAvailabilityRequest :: DomainName -> CheckDomainAvailabilityRequest
newCheckDomainAvailabilityRequest _DomainName = CheckDomainAvailabilityRequest { "DomainName": _DomainName, "IdnLangCode": Nothing }

-- | Constructs CheckDomainAvailabilityRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCheckDomainAvailabilityRequest' :: DomainName -> ( { "DomainName" :: (DomainName) , "IdnLangCode" :: Maybe (LangCode) } -> {"DomainName" :: (DomainName) , "IdnLangCode" :: Maybe (LangCode) } ) -> CheckDomainAvailabilityRequest
newCheckDomainAvailabilityRequest' _DomainName customize = (CheckDomainAvailabilityRequest <<< customize) { "DomainName": _DomainName, "IdnLangCode": Nothing }



-- | <p>The CheckDomainAvailability response includes the following elements.</p>
newtype CheckDomainAvailabilityResponse = CheckDomainAvailabilityResponse 
  { "Availability" :: (DomainAvailability)
  }
derive instance newtypeCheckDomainAvailabilityResponse :: Newtype CheckDomainAvailabilityResponse _
derive instance repGenericCheckDomainAvailabilityResponse :: Generic CheckDomainAvailabilityResponse _
instance showCheckDomainAvailabilityResponse :: Show CheckDomainAvailabilityResponse where show = genericShow
instance decodeCheckDomainAvailabilityResponse :: Decode CheckDomainAvailabilityResponse where decode = genericDecode options
instance encodeCheckDomainAvailabilityResponse :: Encode CheckDomainAvailabilityResponse where encode = genericEncode options

-- | Constructs CheckDomainAvailabilityResponse from required parameters
newCheckDomainAvailabilityResponse :: DomainAvailability -> CheckDomainAvailabilityResponse
newCheckDomainAvailabilityResponse _Availability = CheckDomainAvailabilityResponse { "Availability": _Availability }

-- | Constructs CheckDomainAvailabilityResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCheckDomainAvailabilityResponse' :: DomainAvailability -> ( { "Availability" :: (DomainAvailability) } -> {"Availability" :: (DomainAvailability) } ) -> CheckDomainAvailabilityResponse
newCheckDomainAvailabilityResponse' _Availability customize = (CheckDomainAvailabilityResponse <<< customize) { "Availability": _Availability }



-- | <p>The CheckDomainTransferability request contains the following elements.</p>
newtype CheckDomainTransferabilityRequest = CheckDomainTransferabilityRequest 
  { "DomainName" :: (DomainName)
  , "AuthCode" :: Maybe (DomainAuthCode)
  }
derive instance newtypeCheckDomainTransferabilityRequest :: Newtype CheckDomainTransferabilityRequest _
derive instance repGenericCheckDomainTransferabilityRequest :: Generic CheckDomainTransferabilityRequest _
instance showCheckDomainTransferabilityRequest :: Show CheckDomainTransferabilityRequest where show = genericShow
instance decodeCheckDomainTransferabilityRequest :: Decode CheckDomainTransferabilityRequest where decode = genericDecode options
instance encodeCheckDomainTransferabilityRequest :: Encode CheckDomainTransferabilityRequest where encode = genericEncode options

-- | Constructs CheckDomainTransferabilityRequest from required parameters
newCheckDomainTransferabilityRequest :: DomainName -> CheckDomainTransferabilityRequest
newCheckDomainTransferabilityRequest _DomainName = CheckDomainTransferabilityRequest { "DomainName": _DomainName, "AuthCode": Nothing }

-- | Constructs CheckDomainTransferabilityRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCheckDomainTransferabilityRequest' :: DomainName -> ( { "DomainName" :: (DomainName) , "AuthCode" :: Maybe (DomainAuthCode) } -> {"DomainName" :: (DomainName) , "AuthCode" :: Maybe (DomainAuthCode) } ) -> CheckDomainTransferabilityRequest
newCheckDomainTransferabilityRequest' _DomainName customize = (CheckDomainTransferabilityRequest <<< customize) { "DomainName": _DomainName, "AuthCode": Nothing }



-- | <p>The CheckDomainTransferability response includes the following elements.</p>
newtype CheckDomainTransferabilityResponse = CheckDomainTransferabilityResponse 
  { "Transferability" :: (DomainTransferability)
  }
derive instance newtypeCheckDomainTransferabilityResponse :: Newtype CheckDomainTransferabilityResponse _
derive instance repGenericCheckDomainTransferabilityResponse :: Generic CheckDomainTransferabilityResponse _
instance showCheckDomainTransferabilityResponse :: Show CheckDomainTransferabilityResponse where show = genericShow
instance decodeCheckDomainTransferabilityResponse :: Decode CheckDomainTransferabilityResponse where decode = genericDecode options
instance encodeCheckDomainTransferabilityResponse :: Encode CheckDomainTransferabilityResponse where encode = genericEncode options

-- | Constructs CheckDomainTransferabilityResponse from required parameters
newCheckDomainTransferabilityResponse :: DomainTransferability -> CheckDomainTransferabilityResponse
newCheckDomainTransferabilityResponse _Transferability = CheckDomainTransferabilityResponse { "Transferability": _Transferability }

-- | Constructs CheckDomainTransferabilityResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCheckDomainTransferabilityResponse' :: DomainTransferability -> ( { "Transferability" :: (DomainTransferability) } -> {"Transferability" :: (DomainTransferability) } ) -> CheckDomainTransferabilityResponse
newCheckDomainTransferabilityResponse' _Transferability customize = (CheckDomainTransferabilityResponse <<< customize) { "Transferability": _Transferability }



newtype City = City String
derive instance newtypeCity :: Newtype City _
derive instance repGenericCity :: Generic City _
instance showCity :: Show City where show = genericShow
instance decodeCity :: Decode City where decode = genericDecode options
instance encodeCity :: Encode City where encode = genericEncode options



-- | <p>ContactDetail includes the following elements.</p>
newtype ContactDetail = ContactDetail 
  { "FirstName" :: Maybe (ContactName)
  , "LastName" :: Maybe (ContactName)
  , "ContactType" :: Maybe (ContactType)
  , "OrganizationName" :: Maybe (ContactName)
  , "AddressLine1" :: Maybe (AddressLine)
  , "AddressLine2" :: Maybe (AddressLine)
  , "City" :: Maybe (City)
  , "State" :: Maybe (State)
  , "CountryCode" :: Maybe (CountryCode)
  , "ZipCode" :: Maybe (ZipCode)
  , "PhoneNumber" :: Maybe (ContactNumber)
  , "Email" :: Maybe (Email)
  , "Fax" :: Maybe (ContactNumber)
  , "ExtraParams" :: Maybe (ExtraParamList)
  }
derive instance newtypeContactDetail :: Newtype ContactDetail _
derive instance repGenericContactDetail :: Generic ContactDetail _
instance showContactDetail :: Show ContactDetail where show = genericShow
instance decodeContactDetail :: Decode ContactDetail where decode = genericDecode options
instance encodeContactDetail :: Encode ContactDetail where encode = genericEncode options

-- | Constructs ContactDetail from required parameters
newContactDetail :: ContactDetail
newContactDetail  = ContactDetail { "AddressLine1": Nothing, "AddressLine2": Nothing, "City": Nothing, "ContactType": Nothing, "CountryCode": Nothing, "Email": Nothing, "ExtraParams": Nothing, "Fax": Nothing, "FirstName": Nothing, "LastName": Nothing, "OrganizationName": Nothing, "PhoneNumber": Nothing, "State": Nothing, "ZipCode": Nothing }

-- | Constructs ContactDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContactDetail' :: ( { "FirstName" :: Maybe (ContactName) , "LastName" :: Maybe (ContactName) , "ContactType" :: Maybe (ContactType) , "OrganizationName" :: Maybe (ContactName) , "AddressLine1" :: Maybe (AddressLine) , "AddressLine2" :: Maybe (AddressLine) , "City" :: Maybe (City) , "State" :: Maybe (State) , "CountryCode" :: Maybe (CountryCode) , "ZipCode" :: Maybe (ZipCode) , "PhoneNumber" :: Maybe (ContactNumber) , "Email" :: Maybe (Email) , "Fax" :: Maybe (ContactNumber) , "ExtraParams" :: Maybe (ExtraParamList) } -> {"FirstName" :: Maybe (ContactName) , "LastName" :: Maybe (ContactName) , "ContactType" :: Maybe (ContactType) , "OrganizationName" :: Maybe (ContactName) , "AddressLine1" :: Maybe (AddressLine) , "AddressLine2" :: Maybe (AddressLine) , "City" :: Maybe (City) , "State" :: Maybe (State) , "CountryCode" :: Maybe (CountryCode) , "ZipCode" :: Maybe (ZipCode) , "PhoneNumber" :: Maybe (ContactNumber) , "Email" :: Maybe (Email) , "Fax" :: Maybe (ContactNumber) , "ExtraParams" :: Maybe (ExtraParamList) } ) -> ContactDetail
newContactDetail'  customize = (ContactDetail <<< customize) { "AddressLine1": Nothing, "AddressLine2": Nothing, "City": Nothing, "ContactType": Nothing, "CountryCode": Nothing, "Email": Nothing, "ExtraParams": Nothing, "Fax": Nothing, "FirstName": Nothing, "LastName": Nothing, "OrganizationName": Nothing, "PhoneNumber": Nothing, "State": Nothing, "ZipCode": Nothing }



newtype ContactName = ContactName String
derive instance newtypeContactName :: Newtype ContactName _
derive instance repGenericContactName :: Generic ContactName _
instance showContactName :: Show ContactName where show = genericShow
instance decodeContactName :: Decode ContactName where decode = genericDecode options
instance encodeContactName :: Encode ContactName where encode = genericEncode options



newtype ContactNumber = ContactNumber String
derive instance newtypeContactNumber :: Newtype ContactNumber _
derive instance repGenericContactNumber :: Generic ContactNumber _
instance showContactNumber :: Show ContactNumber where show = genericShow
instance decodeContactNumber :: Decode ContactNumber where decode = genericDecode options
instance encodeContactNumber :: Encode ContactNumber where encode = genericEncode options



newtype ContactType = ContactType String
derive instance newtypeContactType :: Newtype ContactType _
derive instance repGenericContactType :: Generic ContactType _
instance showContactType :: Show ContactType where show = genericShow
instance decodeContactType :: Decode ContactType where decode = genericDecode options
instance encodeContactType :: Encode ContactType where encode = genericEncode options



newtype CountryCode = CountryCode String
derive instance newtypeCountryCode :: Newtype CountryCode _
derive instance repGenericCountryCode :: Generic CountryCode _
instance showCountryCode :: Show CountryCode where show = genericShow
instance decodeCountryCode :: Decode CountryCode where decode = genericDecode options
instance encodeCountryCode :: Encode CountryCode where encode = genericEncode options



newtype CurrentExpiryYear = CurrentExpiryYear Int
derive instance newtypeCurrentExpiryYear :: Newtype CurrentExpiryYear _
derive instance repGenericCurrentExpiryYear :: Generic CurrentExpiryYear _
instance showCurrentExpiryYear :: Show CurrentExpiryYear where show = genericShow
instance decodeCurrentExpiryYear :: Decode CurrentExpiryYear where decode = genericDecode options
instance encodeCurrentExpiryYear :: Encode CurrentExpiryYear where encode = genericEncode options



newtype DNSSec = DNSSec String
derive instance newtypeDNSSec :: Newtype DNSSec _
derive instance repGenericDNSSec :: Generic DNSSec _
instance showDNSSec :: Show DNSSec where show = genericShow
instance decodeDNSSec :: Decode DNSSec where decode = genericDecode options
instance encodeDNSSec :: Encode DNSSec where encode = genericEncode options



-- | <p>The DeleteTagsForDomainRequest includes the following elements.</p>
newtype DeleteTagsForDomainRequest = DeleteTagsForDomainRequest 
  { "DomainName" :: (DomainName)
  , "TagsToDelete" :: (TagKeyList)
  }
derive instance newtypeDeleteTagsForDomainRequest :: Newtype DeleteTagsForDomainRequest _
derive instance repGenericDeleteTagsForDomainRequest :: Generic DeleteTagsForDomainRequest _
instance showDeleteTagsForDomainRequest :: Show DeleteTagsForDomainRequest where show = genericShow
instance decodeDeleteTagsForDomainRequest :: Decode DeleteTagsForDomainRequest where decode = genericDecode options
instance encodeDeleteTagsForDomainRequest :: Encode DeleteTagsForDomainRequest where encode = genericEncode options

-- | Constructs DeleteTagsForDomainRequest from required parameters
newDeleteTagsForDomainRequest :: DomainName -> TagKeyList -> DeleteTagsForDomainRequest
newDeleteTagsForDomainRequest _DomainName _TagsToDelete = DeleteTagsForDomainRequest { "DomainName": _DomainName, "TagsToDelete": _TagsToDelete }

-- | Constructs DeleteTagsForDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTagsForDomainRequest' :: DomainName -> TagKeyList -> ( { "DomainName" :: (DomainName) , "TagsToDelete" :: (TagKeyList) } -> {"DomainName" :: (DomainName) , "TagsToDelete" :: (TagKeyList) } ) -> DeleteTagsForDomainRequest
newDeleteTagsForDomainRequest' _DomainName _TagsToDelete customize = (DeleteTagsForDomainRequest <<< customize) { "DomainName": _DomainName, "TagsToDelete": _TagsToDelete }



newtype DeleteTagsForDomainResponse = DeleteTagsForDomainResponse Types.NoArguments
derive instance newtypeDeleteTagsForDomainResponse :: Newtype DeleteTagsForDomainResponse _
derive instance repGenericDeleteTagsForDomainResponse :: Generic DeleteTagsForDomainResponse _
instance showDeleteTagsForDomainResponse :: Show DeleteTagsForDomainResponse where show = genericShow
instance decodeDeleteTagsForDomainResponse :: Decode DeleteTagsForDomainResponse where decode = genericDecode options
instance encodeDeleteTagsForDomainResponse :: Encode DeleteTagsForDomainResponse where encode = genericEncode options



newtype DisableDomainAutoRenewRequest = DisableDomainAutoRenewRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeDisableDomainAutoRenewRequest :: Newtype DisableDomainAutoRenewRequest _
derive instance repGenericDisableDomainAutoRenewRequest :: Generic DisableDomainAutoRenewRequest _
instance showDisableDomainAutoRenewRequest :: Show DisableDomainAutoRenewRequest where show = genericShow
instance decodeDisableDomainAutoRenewRequest :: Decode DisableDomainAutoRenewRequest where decode = genericDecode options
instance encodeDisableDomainAutoRenewRequest :: Encode DisableDomainAutoRenewRequest where encode = genericEncode options

-- | Constructs DisableDomainAutoRenewRequest from required parameters
newDisableDomainAutoRenewRequest :: DomainName -> DisableDomainAutoRenewRequest
newDisableDomainAutoRenewRequest _DomainName = DisableDomainAutoRenewRequest { "DomainName": _DomainName }

-- | Constructs DisableDomainAutoRenewRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisableDomainAutoRenewRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> DisableDomainAutoRenewRequest
newDisableDomainAutoRenewRequest' _DomainName customize = (DisableDomainAutoRenewRequest <<< customize) { "DomainName": _DomainName }



newtype DisableDomainAutoRenewResponse = DisableDomainAutoRenewResponse Types.NoArguments
derive instance newtypeDisableDomainAutoRenewResponse :: Newtype DisableDomainAutoRenewResponse _
derive instance repGenericDisableDomainAutoRenewResponse :: Generic DisableDomainAutoRenewResponse _
instance showDisableDomainAutoRenewResponse :: Show DisableDomainAutoRenewResponse where show = genericShow
instance decodeDisableDomainAutoRenewResponse :: Decode DisableDomainAutoRenewResponse where decode = genericDecode options
instance encodeDisableDomainAutoRenewResponse :: Encode DisableDomainAutoRenewResponse where encode = genericEncode options



-- | <p>The DisableDomainTransferLock request includes the following element.</p>
newtype DisableDomainTransferLockRequest = DisableDomainTransferLockRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeDisableDomainTransferLockRequest :: Newtype DisableDomainTransferLockRequest _
derive instance repGenericDisableDomainTransferLockRequest :: Generic DisableDomainTransferLockRequest _
instance showDisableDomainTransferLockRequest :: Show DisableDomainTransferLockRequest where show = genericShow
instance decodeDisableDomainTransferLockRequest :: Decode DisableDomainTransferLockRequest where decode = genericDecode options
instance encodeDisableDomainTransferLockRequest :: Encode DisableDomainTransferLockRequest where encode = genericEncode options

-- | Constructs DisableDomainTransferLockRequest from required parameters
newDisableDomainTransferLockRequest :: DomainName -> DisableDomainTransferLockRequest
newDisableDomainTransferLockRequest _DomainName = DisableDomainTransferLockRequest { "DomainName": _DomainName }

-- | Constructs DisableDomainTransferLockRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisableDomainTransferLockRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> DisableDomainTransferLockRequest
newDisableDomainTransferLockRequest' _DomainName customize = (DisableDomainTransferLockRequest <<< customize) { "DomainName": _DomainName }



-- | <p>The DisableDomainTransferLock response includes the following element.</p>
newtype DisableDomainTransferLockResponse = DisableDomainTransferLockResponse 
  { "OperationId" :: (OperationId)
  }
derive instance newtypeDisableDomainTransferLockResponse :: Newtype DisableDomainTransferLockResponse _
derive instance repGenericDisableDomainTransferLockResponse :: Generic DisableDomainTransferLockResponse _
instance showDisableDomainTransferLockResponse :: Show DisableDomainTransferLockResponse where show = genericShow
instance decodeDisableDomainTransferLockResponse :: Decode DisableDomainTransferLockResponse where decode = genericDecode options
instance encodeDisableDomainTransferLockResponse :: Encode DisableDomainTransferLockResponse where encode = genericEncode options

-- | Constructs DisableDomainTransferLockResponse from required parameters
newDisableDomainTransferLockResponse :: OperationId -> DisableDomainTransferLockResponse
newDisableDomainTransferLockResponse _OperationId = DisableDomainTransferLockResponse { "OperationId": _OperationId }

-- | Constructs DisableDomainTransferLockResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisableDomainTransferLockResponse' :: OperationId -> ( { "OperationId" :: (OperationId) } -> {"OperationId" :: (OperationId) } ) -> DisableDomainTransferLockResponse
newDisableDomainTransferLockResponse' _OperationId customize = (DisableDomainTransferLockResponse <<< customize) { "OperationId": _OperationId }



newtype DomainAuthCode = DomainAuthCode String
derive instance newtypeDomainAuthCode :: Newtype DomainAuthCode _
derive instance repGenericDomainAuthCode :: Generic DomainAuthCode _
instance showDomainAuthCode :: Show DomainAuthCode where show = genericShow
instance decodeDomainAuthCode :: Decode DomainAuthCode where decode = genericDecode options
instance encodeDomainAuthCode :: Encode DomainAuthCode where encode = genericEncode options



newtype DomainAvailability = DomainAvailability String
derive instance newtypeDomainAvailability :: Newtype DomainAvailability _
derive instance repGenericDomainAvailability :: Generic DomainAvailability _
instance showDomainAvailability :: Show DomainAvailability where show = genericShow
instance decodeDomainAvailability :: Decode DomainAvailability where decode = genericDecode options
instance encodeDomainAvailability :: Encode DomainAvailability where encode = genericEncode options



-- | <p>The number of domains has exceeded the allowed threshold for the account.</p>
newtype DomainLimitExceeded = DomainLimitExceeded 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeDomainLimitExceeded :: Newtype DomainLimitExceeded _
derive instance repGenericDomainLimitExceeded :: Generic DomainLimitExceeded _
instance showDomainLimitExceeded :: Show DomainLimitExceeded where show = genericShow
instance decodeDomainLimitExceeded :: Decode DomainLimitExceeded where decode = genericDecode options
instance encodeDomainLimitExceeded :: Encode DomainLimitExceeded where encode = genericEncode options

-- | Constructs DomainLimitExceeded from required parameters
newDomainLimitExceeded :: DomainLimitExceeded
newDomainLimitExceeded  = DomainLimitExceeded { "message": Nothing }

-- | Constructs DomainLimitExceeded's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainLimitExceeded' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> DomainLimitExceeded
newDomainLimitExceeded'  customize = (DomainLimitExceeded <<< customize) { "message": Nothing }



newtype DomainName = DomainName String
derive instance newtypeDomainName :: Newtype DomainName _
derive instance repGenericDomainName :: Generic DomainName _
instance showDomainName :: Show DomainName where show = genericShow
instance decodeDomainName :: Decode DomainName where decode = genericDecode options
instance encodeDomainName :: Encode DomainName where encode = genericEncode options



newtype DomainStatus = DomainStatus String
derive instance newtypeDomainStatus :: Newtype DomainStatus _
derive instance repGenericDomainStatus :: Generic DomainStatus _
instance showDomainStatus :: Show DomainStatus where show = genericShow
instance decodeDomainStatus :: Decode DomainStatus where decode = genericDecode options
instance encodeDomainStatus :: Encode DomainStatus where encode = genericEncode options



newtype DomainStatusList = DomainStatusList (Array DomainStatus)
derive instance newtypeDomainStatusList :: Newtype DomainStatusList _
derive instance repGenericDomainStatusList :: Generic DomainStatusList _
instance showDomainStatusList :: Show DomainStatusList where show = genericShow
instance decodeDomainStatusList :: Decode DomainStatusList where decode = genericDecode options
instance encodeDomainStatusList :: Encode DomainStatusList where encode = genericEncode options



-- | <p>Information about one suggested domain name.</p>
newtype DomainSuggestion = DomainSuggestion 
  { "DomainName" :: Maybe (DomainName)
  , "Availability" :: Maybe (String)
  }
derive instance newtypeDomainSuggestion :: Newtype DomainSuggestion _
derive instance repGenericDomainSuggestion :: Generic DomainSuggestion _
instance showDomainSuggestion :: Show DomainSuggestion where show = genericShow
instance decodeDomainSuggestion :: Decode DomainSuggestion where decode = genericDecode options
instance encodeDomainSuggestion :: Encode DomainSuggestion where encode = genericEncode options

-- | Constructs DomainSuggestion from required parameters
newDomainSuggestion :: DomainSuggestion
newDomainSuggestion  = DomainSuggestion { "Availability": Nothing, "DomainName": Nothing }

-- | Constructs DomainSuggestion's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainSuggestion' :: ( { "DomainName" :: Maybe (DomainName) , "Availability" :: Maybe (String) } -> {"DomainName" :: Maybe (DomainName) , "Availability" :: Maybe (String) } ) -> DomainSuggestion
newDomainSuggestion'  customize = (DomainSuggestion <<< customize) { "Availability": Nothing, "DomainName": Nothing }



newtype DomainSuggestionsList = DomainSuggestionsList (Array DomainSuggestion)
derive instance newtypeDomainSuggestionsList :: Newtype DomainSuggestionsList _
derive instance repGenericDomainSuggestionsList :: Generic DomainSuggestionsList _
instance showDomainSuggestionsList :: Show DomainSuggestionsList where show = genericShow
instance decodeDomainSuggestionsList :: Decode DomainSuggestionsList where decode = genericDecode options
instance encodeDomainSuggestionsList :: Encode DomainSuggestionsList where encode = genericEncode options



-- | <p>Summary information about one domain.</p>
newtype DomainSummary = DomainSummary 
  { "DomainName" :: (DomainName)
  , "AutoRenew" :: Maybe (Boolean)
  , "TransferLock" :: Maybe (Boolean)
  , "Expiry" :: Maybe (Types.Timestamp)
  }
derive instance newtypeDomainSummary :: Newtype DomainSummary _
derive instance repGenericDomainSummary :: Generic DomainSummary _
instance showDomainSummary :: Show DomainSummary where show = genericShow
instance decodeDomainSummary :: Decode DomainSummary where decode = genericDecode options
instance encodeDomainSummary :: Encode DomainSummary where encode = genericEncode options

-- | Constructs DomainSummary from required parameters
newDomainSummary :: DomainName -> DomainSummary
newDomainSummary _DomainName = DomainSummary { "DomainName": _DomainName, "AutoRenew": Nothing, "Expiry": Nothing, "TransferLock": Nothing }

-- | Constructs DomainSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainSummary' :: DomainName -> ( { "DomainName" :: (DomainName) , "AutoRenew" :: Maybe (Boolean) , "TransferLock" :: Maybe (Boolean) , "Expiry" :: Maybe (Types.Timestamp) } -> {"DomainName" :: (DomainName) , "AutoRenew" :: Maybe (Boolean) , "TransferLock" :: Maybe (Boolean) , "Expiry" :: Maybe (Types.Timestamp) } ) -> DomainSummary
newDomainSummary' _DomainName customize = (DomainSummary <<< customize) { "DomainName": _DomainName, "AutoRenew": Nothing, "Expiry": Nothing, "TransferLock": Nothing }



newtype DomainSummaryList = DomainSummaryList (Array DomainSummary)
derive instance newtypeDomainSummaryList :: Newtype DomainSummaryList _
derive instance repGenericDomainSummaryList :: Generic DomainSummaryList _
instance showDomainSummaryList :: Show DomainSummaryList where show = genericShow
instance decodeDomainSummaryList :: Decode DomainSummaryList where decode = genericDecode options
instance encodeDomainSummaryList :: Encode DomainSummaryList where encode = genericEncode options



newtype DomainTransferability = DomainTransferability 
  { "Transferable" :: Maybe (Transferable)
  }
derive instance newtypeDomainTransferability :: Newtype DomainTransferability _
derive instance repGenericDomainTransferability :: Generic DomainTransferability _
instance showDomainTransferability :: Show DomainTransferability where show = genericShow
instance decodeDomainTransferability :: Decode DomainTransferability where decode = genericDecode options
instance encodeDomainTransferability :: Encode DomainTransferability where encode = genericEncode options

-- | Constructs DomainTransferability from required parameters
newDomainTransferability :: DomainTransferability
newDomainTransferability  = DomainTransferability { "Transferable": Nothing }

-- | Constructs DomainTransferability's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainTransferability' :: ( { "Transferable" :: Maybe (Transferable) } -> {"Transferable" :: Maybe (Transferable) } ) -> DomainTransferability
newDomainTransferability'  customize = (DomainTransferability <<< customize) { "Transferable": Nothing }



-- | <p>The request is already in progress for the domain.</p>
newtype DuplicateRequest = DuplicateRequest 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeDuplicateRequest :: Newtype DuplicateRequest _
derive instance repGenericDuplicateRequest :: Generic DuplicateRequest _
instance showDuplicateRequest :: Show DuplicateRequest where show = genericShow
instance decodeDuplicateRequest :: Decode DuplicateRequest where decode = genericDecode options
instance encodeDuplicateRequest :: Encode DuplicateRequest where encode = genericEncode options

-- | Constructs DuplicateRequest from required parameters
newDuplicateRequest :: DuplicateRequest
newDuplicateRequest  = DuplicateRequest { "message": Nothing }

-- | Constructs DuplicateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicateRequest' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> DuplicateRequest
newDuplicateRequest'  customize = (DuplicateRequest <<< customize) { "message": Nothing }



newtype DurationInYears = DurationInYears Int
derive instance newtypeDurationInYears :: Newtype DurationInYears _
derive instance repGenericDurationInYears :: Generic DurationInYears _
instance showDurationInYears :: Show DurationInYears where show = genericShow
instance decodeDurationInYears :: Decode DurationInYears where decode = genericDecode options
instance encodeDurationInYears :: Encode DurationInYears where encode = genericEncode options



newtype Email = Email String
derive instance newtypeEmail :: Newtype Email _
derive instance repGenericEmail :: Generic Email _
instance showEmail :: Show Email where show = genericShow
instance decodeEmail :: Decode Email where decode = genericDecode options
instance encodeEmail :: Encode Email where encode = genericEncode options



newtype EnableDomainAutoRenewRequest = EnableDomainAutoRenewRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeEnableDomainAutoRenewRequest :: Newtype EnableDomainAutoRenewRequest _
derive instance repGenericEnableDomainAutoRenewRequest :: Generic EnableDomainAutoRenewRequest _
instance showEnableDomainAutoRenewRequest :: Show EnableDomainAutoRenewRequest where show = genericShow
instance decodeEnableDomainAutoRenewRequest :: Decode EnableDomainAutoRenewRequest where decode = genericDecode options
instance encodeEnableDomainAutoRenewRequest :: Encode EnableDomainAutoRenewRequest where encode = genericEncode options

-- | Constructs EnableDomainAutoRenewRequest from required parameters
newEnableDomainAutoRenewRequest :: DomainName -> EnableDomainAutoRenewRequest
newEnableDomainAutoRenewRequest _DomainName = EnableDomainAutoRenewRequest { "DomainName": _DomainName }

-- | Constructs EnableDomainAutoRenewRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnableDomainAutoRenewRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> EnableDomainAutoRenewRequest
newEnableDomainAutoRenewRequest' _DomainName customize = (EnableDomainAutoRenewRequest <<< customize) { "DomainName": _DomainName }



newtype EnableDomainAutoRenewResponse = EnableDomainAutoRenewResponse Types.NoArguments
derive instance newtypeEnableDomainAutoRenewResponse :: Newtype EnableDomainAutoRenewResponse _
derive instance repGenericEnableDomainAutoRenewResponse :: Generic EnableDomainAutoRenewResponse _
instance showEnableDomainAutoRenewResponse :: Show EnableDomainAutoRenewResponse where show = genericShow
instance decodeEnableDomainAutoRenewResponse :: Decode EnableDomainAutoRenewResponse where decode = genericDecode options
instance encodeEnableDomainAutoRenewResponse :: Encode EnableDomainAutoRenewResponse where encode = genericEncode options



-- | <p>A request to set the transfer lock for the specified domain.</p>
newtype EnableDomainTransferLockRequest = EnableDomainTransferLockRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeEnableDomainTransferLockRequest :: Newtype EnableDomainTransferLockRequest _
derive instance repGenericEnableDomainTransferLockRequest :: Generic EnableDomainTransferLockRequest _
instance showEnableDomainTransferLockRequest :: Show EnableDomainTransferLockRequest where show = genericShow
instance decodeEnableDomainTransferLockRequest :: Decode EnableDomainTransferLockRequest where decode = genericDecode options
instance encodeEnableDomainTransferLockRequest :: Encode EnableDomainTransferLockRequest where encode = genericEncode options

-- | Constructs EnableDomainTransferLockRequest from required parameters
newEnableDomainTransferLockRequest :: DomainName -> EnableDomainTransferLockRequest
newEnableDomainTransferLockRequest _DomainName = EnableDomainTransferLockRequest { "DomainName": _DomainName }

-- | Constructs EnableDomainTransferLockRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnableDomainTransferLockRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> EnableDomainTransferLockRequest
newEnableDomainTransferLockRequest' _DomainName customize = (EnableDomainTransferLockRequest <<< customize) { "DomainName": _DomainName }



-- | <p>The EnableDomainTransferLock response includes the following elements.</p>
newtype EnableDomainTransferLockResponse = EnableDomainTransferLockResponse 
  { "OperationId" :: (OperationId)
  }
derive instance newtypeEnableDomainTransferLockResponse :: Newtype EnableDomainTransferLockResponse _
derive instance repGenericEnableDomainTransferLockResponse :: Generic EnableDomainTransferLockResponse _
instance showEnableDomainTransferLockResponse :: Show EnableDomainTransferLockResponse where show = genericShow
instance decodeEnableDomainTransferLockResponse :: Decode EnableDomainTransferLockResponse where decode = genericDecode options
instance encodeEnableDomainTransferLockResponse :: Encode EnableDomainTransferLockResponse where encode = genericEncode options

-- | Constructs EnableDomainTransferLockResponse from required parameters
newEnableDomainTransferLockResponse :: OperationId -> EnableDomainTransferLockResponse
newEnableDomainTransferLockResponse _OperationId = EnableDomainTransferLockResponse { "OperationId": _OperationId }

-- | Constructs EnableDomainTransferLockResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnableDomainTransferLockResponse' :: OperationId -> ( { "OperationId" :: (OperationId) } -> {"OperationId" :: (OperationId) } ) -> EnableDomainTransferLockResponse
newEnableDomainTransferLockResponse' _OperationId customize = (EnableDomainTransferLockResponse <<< customize) { "OperationId": _OperationId }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



-- | <p>ExtraParam includes the following elements.</p>
newtype ExtraParam = ExtraParam 
  { "Name" :: (ExtraParamName)
  , "Value" :: (ExtraParamValue)
  }
derive instance newtypeExtraParam :: Newtype ExtraParam _
derive instance repGenericExtraParam :: Generic ExtraParam _
instance showExtraParam :: Show ExtraParam where show = genericShow
instance decodeExtraParam :: Decode ExtraParam where decode = genericDecode options
instance encodeExtraParam :: Encode ExtraParam where encode = genericEncode options

-- | Constructs ExtraParam from required parameters
newExtraParam :: ExtraParamName -> ExtraParamValue -> ExtraParam
newExtraParam _Name _Value = ExtraParam { "Name": _Name, "Value": _Value }

-- | Constructs ExtraParam's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExtraParam' :: ExtraParamName -> ExtraParamValue -> ( { "Name" :: (ExtraParamName) , "Value" :: (ExtraParamValue) } -> {"Name" :: (ExtraParamName) , "Value" :: (ExtraParamValue) } ) -> ExtraParam
newExtraParam' _Name _Value customize = (ExtraParam <<< customize) { "Name": _Name, "Value": _Value }



newtype ExtraParamList = ExtraParamList (Array ExtraParam)
derive instance newtypeExtraParamList :: Newtype ExtraParamList _
derive instance repGenericExtraParamList :: Generic ExtraParamList _
instance showExtraParamList :: Show ExtraParamList where show = genericShow
instance decodeExtraParamList :: Decode ExtraParamList where decode = genericDecode options
instance encodeExtraParamList :: Encode ExtraParamList where encode = genericEncode options



newtype ExtraParamName = ExtraParamName String
derive instance newtypeExtraParamName :: Newtype ExtraParamName _
derive instance repGenericExtraParamName :: Generic ExtraParamName _
instance showExtraParamName :: Show ExtraParamName where show = genericShow
instance decodeExtraParamName :: Decode ExtraParamName where decode = genericDecode options
instance encodeExtraParamName :: Encode ExtraParamName where encode = genericEncode options



newtype ExtraParamValue = ExtraParamValue String
derive instance newtypeExtraParamValue :: Newtype ExtraParamValue _
derive instance repGenericExtraParamValue :: Generic ExtraParamValue _
instance showExtraParamValue :: Show ExtraParamValue where show = genericShow
instance decodeExtraParamValue :: Decode ExtraParamValue where decode = genericDecode options
instance encodeExtraParamValue :: Encode ExtraParamValue where encode = genericEncode options



newtype FIAuthKey = FIAuthKey String
derive instance newtypeFIAuthKey :: Newtype FIAuthKey _
derive instance repGenericFIAuthKey :: Generic FIAuthKey _
instance showFIAuthKey :: Show FIAuthKey where show = genericShow
instance decodeFIAuthKey :: Decode FIAuthKey where decode = genericDecode options
instance encodeFIAuthKey :: Encode FIAuthKey where encode = genericEncode options



newtype GetContactReachabilityStatusRequest = GetContactReachabilityStatusRequest 
  { "domainName" :: Maybe (DomainName)
  }
derive instance newtypeGetContactReachabilityStatusRequest :: Newtype GetContactReachabilityStatusRequest _
derive instance repGenericGetContactReachabilityStatusRequest :: Generic GetContactReachabilityStatusRequest _
instance showGetContactReachabilityStatusRequest :: Show GetContactReachabilityStatusRequest where show = genericShow
instance decodeGetContactReachabilityStatusRequest :: Decode GetContactReachabilityStatusRequest where decode = genericDecode options
instance encodeGetContactReachabilityStatusRequest :: Encode GetContactReachabilityStatusRequest where encode = genericEncode options

-- | Constructs GetContactReachabilityStatusRequest from required parameters
newGetContactReachabilityStatusRequest :: GetContactReachabilityStatusRequest
newGetContactReachabilityStatusRequest  = GetContactReachabilityStatusRequest { "domainName": Nothing }

-- | Constructs GetContactReachabilityStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetContactReachabilityStatusRequest' :: ( { "domainName" :: Maybe (DomainName) } -> {"domainName" :: Maybe (DomainName) } ) -> GetContactReachabilityStatusRequest
newGetContactReachabilityStatusRequest'  customize = (GetContactReachabilityStatusRequest <<< customize) { "domainName": Nothing }



newtype GetContactReachabilityStatusResponse = GetContactReachabilityStatusResponse 
  { "domainName" :: Maybe (DomainName)
  , "status" :: Maybe (ReachabilityStatus)
  }
derive instance newtypeGetContactReachabilityStatusResponse :: Newtype GetContactReachabilityStatusResponse _
derive instance repGenericGetContactReachabilityStatusResponse :: Generic GetContactReachabilityStatusResponse _
instance showGetContactReachabilityStatusResponse :: Show GetContactReachabilityStatusResponse where show = genericShow
instance decodeGetContactReachabilityStatusResponse :: Decode GetContactReachabilityStatusResponse where decode = genericDecode options
instance encodeGetContactReachabilityStatusResponse :: Encode GetContactReachabilityStatusResponse where encode = genericEncode options

-- | Constructs GetContactReachabilityStatusResponse from required parameters
newGetContactReachabilityStatusResponse :: GetContactReachabilityStatusResponse
newGetContactReachabilityStatusResponse  = GetContactReachabilityStatusResponse { "domainName": Nothing, "status": Nothing }

-- | Constructs GetContactReachabilityStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetContactReachabilityStatusResponse' :: ( { "domainName" :: Maybe (DomainName) , "status" :: Maybe (ReachabilityStatus) } -> {"domainName" :: Maybe (DomainName) , "status" :: Maybe (ReachabilityStatus) } ) -> GetContactReachabilityStatusResponse
newGetContactReachabilityStatusResponse'  customize = (GetContactReachabilityStatusResponse <<< customize) { "domainName": Nothing, "status": Nothing }



-- | <p>The GetDomainDetail request includes the following element.</p>
newtype GetDomainDetailRequest = GetDomainDetailRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeGetDomainDetailRequest :: Newtype GetDomainDetailRequest _
derive instance repGenericGetDomainDetailRequest :: Generic GetDomainDetailRequest _
instance showGetDomainDetailRequest :: Show GetDomainDetailRequest where show = genericShow
instance decodeGetDomainDetailRequest :: Decode GetDomainDetailRequest where decode = genericDecode options
instance encodeGetDomainDetailRequest :: Encode GetDomainDetailRequest where encode = genericEncode options

-- | Constructs GetDomainDetailRequest from required parameters
newGetDomainDetailRequest :: DomainName -> GetDomainDetailRequest
newGetDomainDetailRequest _DomainName = GetDomainDetailRequest { "DomainName": _DomainName }

-- | Constructs GetDomainDetailRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDomainDetailRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> GetDomainDetailRequest
newGetDomainDetailRequest' _DomainName customize = (GetDomainDetailRequest <<< customize) { "DomainName": _DomainName }



-- | <p>The GetDomainDetail response includes the following elements.</p>
newtype GetDomainDetailResponse = GetDomainDetailResponse 
  { "DomainName" :: (DomainName)
  , "Nameservers" :: (NameserverList)
  , "AutoRenew" :: Maybe (Boolean)
  , "AdminContact" :: (ContactDetail)
  , "RegistrantContact" :: (ContactDetail)
  , "TechContact" :: (ContactDetail)
  , "AdminPrivacy" :: Maybe (Boolean)
  , "RegistrantPrivacy" :: Maybe (Boolean)
  , "TechPrivacy" :: Maybe (Boolean)
  , "RegistrarName" :: Maybe (RegistrarName)
  , "WhoIsServer" :: Maybe (RegistrarWhoIsServer)
  , "RegistrarUrl" :: Maybe (RegistrarUrl)
  , "AbuseContactEmail" :: Maybe (Email)
  , "AbuseContactPhone" :: Maybe (ContactNumber)
  , "RegistryDomainId" :: Maybe (RegistryDomainId)
  , "CreationDate" :: Maybe (Types.Timestamp)
  , "UpdatedDate" :: Maybe (Types.Timestamp)
  , "ExpirationDate" :: Maybe (Types.Timestamp)
  , "Reseller" :: Maybe (Reseller)
  , "DnsSec" :: Maybe (DNSSec)
  , "StatusList" :: Maybe (DomainStatusList)
  }
derive instance newtypeGetDomainDetailResponse :: Newtype GetDomainDetailResponse _
derive instance repGenericGetDomainDetailResponse :: Generic GetDomainDetailResponse _
instance showGetDomainDetailResponse :: Show GetDomainDetailResponse where show = genericShow
instance decodeGetDomainDetailResponse :: Decode GetDomainDetailResponse where decode = genericDecode options
instance encodeGetDomainDetailResponse :: Encode GetDomainDetailResponse where encode = genericEncode options

-- | Constructs GetDomainDetailResponse from required parameters
newGetDomainDetailResponse :: ContactDetail -> DomainName -> NameserverList -> ContactDetail -> ContactDetail -> GetDomainDetailResponse
newGetDomainDetailResponse _AdminContact _DomainName _Nameservers _RegistrantContact _TechContact = GetDomainDetailResponse { "AdminContact": _AdminContact, "DomainName": _DomainName, "Nameservers": _Nameservers, "RegistrantContact": _RegistrantContact, "TechContact": _TechContact, "AbuseContactEmail": Nothing, "AbuseContactPhone": Nothing, "AdminPrivacy": Nothing, "AutoRenew": Nothing, "CreationDate": Nothing, "DnsSec": Nothing, "ExpirationDate": Nothing, "RegistrantPrivacy": Nothing, "RegistrarName": Nothing, "RegistrarUrl": Nothing, "RegistryDomainId": Nothing, "Reseller": Nothing, "StatusList": Nothing, "TechPrivacy": Nothing, "UpdatedDate": Nothing, "WhoIsServer": Nothing }

-- | Constructs GetDomainDetailResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDomainDetailResponse' :: ContactDetail -> DomainName -> NameserverList -> ContactDetail -> ContactDetail -> ( { "DomainName" :: (DomainName) , "Nameservers" :: (NameserverList) , "AutoRenew" :: Maybe (Boolean) , "AdminContact" :: (ContactDetail) , "RegistrantContact" :: (ContactDetail) , "TechContact" :: (ContactDetail) , "AdminPrivacy" :: Maybe (Boolean) , "RegistrantPrivacy" :: Maybe (Boolean) , "TechPrivacy" :: Maybe (Boolean) , "RegistrarName" :: Maybe (RegistrarName) , "WhoIsServer" :: Maybe (RegistrarWhoIsServer) , "RegistrarUrl" :: Maybe (RegistrarUrl) , "AbuseContactEmail" :: Maybe (Email) , "AbuseContactPhone" :: Maybe (ContactNumber) , "RegistryDomainId" :: Maybe (RegistryDomainId) , "CreationDate" :: Maybe (Types.Timestamp) , "UpdatedDate" :: Maybe (Types.Timestamp) , "ExpirationDate" :: Maybe (Types.Timestamp) , "Reseller" :: Maybe (Reseller) , "DnsSec" :: Maybe (DNSSec) , "StatusList" :: Maybe (DomainStatusList) } -> {"DomainName" :: (DomainName) , "Nameservers" :: (NameserverList) , "AutoRenew" :: Maybe (Boolean) , "AdminContact" :: (ContactDetail) , "RegistrantContact" :: (ContactDetail) , "TechContact" :: (ContactDetail) , "AdminPrivacy" :: Maybe (Boolean) , "RegistrantPrivacy" :: Maybe (Boolean) , "TechPrivacy" :: Maybe (Boolean) , "RegistrarName" :: Maybe (RegistrarName) , "WhoIsServer" :: Maybe (RegistrarWhoIsServer) , "RegistrarUrl" :: Maybe (RegistrarUrl) , "AbuseContactEmail" :: Maybe (Email) , "AbuseContactPhone" :: Maybe (ContactNumber) , "RegistryDomainId" :: Maybe (RegistryDomainId) , "CreationDate" :: Maybe (Types.Timestamp) , "UpdatedDate" :: Maybe (Types.Timestamp) , "ExpirationDate" :: Maybe (Types.Timestamp) , "Reseller" :: Maybe (Reseller) , "DnsSec" :: Maybe (DNSSec) , "StatusList" :: Maybe (DomainStatusList) } ) -> GetDomainDetailResponse
newGetDomainDetailResponse' _AdminContact _DomainName _Nameservers _RegistrantContact _TechContact customize = (GetDomainDetailResponse <<< customize) { "AdminContact": _AdminContact, "DomainName": _DomainName, "Nameservers": _Nameservers, "RegistrantContact": _RegistrantContact, "TechContact": _TechContact, "AbuseContactEmail": Nothing, "AbuseContactPhone": Nothing, "AdminPrivacy": Nothing, "AutoRenew": Nothing, "CreationDate": Nothing, "DnsSec": Nothing, "ExpirationDate": Nothing, "RegistrantPrivacy": Nothing, "RegistrarName": Nothing, "RegistrarUrl": Nothing, "RegistryDomainId": Nothing, "Reseller": Nothing, "StatusList": Nothing, "TechPrivacy": Nothing, "UpdatedDate": Nothing, "WhoIsServer": Nothing }



newtype GetDomainSuggestionsRequest = GetDomainSuggestionsRequest 
  { "DomainName" :: (DomainName)
  , "SuggestionCount" :: (Int)
  , "OnlyAvailable" :: (Boolean)
  }
derive instance newtypeGetDomainSuggestionsRequest :: Newtype GetDomainSuggestionsRequest _
derive instance repGenericGetDomainSuggestionsRequest :: Generic GetDomainSuggestionsRequest _
instance showGetDomainSuggestionsRequest :: Show GetDomainSuggestionsRequest where show = genericShow
instance decodeGetDomainSuggestionsRequest :: Decode GetDomainSuggestionsRequest where decode = genericDecode options
instance encodeGetDomainSuggestionsRequest :: Encode GetDomainSuggestionsRequest where encode = genericEncode options

-- | Constructs GetDomainSuggestionsRequest from required parameters
newGetDomainSuggestionsRequest :: DomainName -> Boolean -> Int -> GetDomainSuggestionsRequest
newGetDomainSuggestionsRequest _DomainName _OnlyAvailable _SuggestionCount = GetDomainSuggestionsRequest { "DomainName": _DomainName, "OnlyAvailable": _OnlyAvailable, "SuggestionCount": _SuggestionCount }

-- | Constructs GetDomainSuggestionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDomainSuggestionsRequest' :: DomainName -> Boolean -> Int -> ( { "DomainName" :: (DomainName) , "SuggestionCount" :: (Int) , "OnlyAvailable" :: (Boolean) } -> {"DomainName" :: (DomainName) , "SuggestionCount" :: (Int) , "OnlyAvailable" :: (Boolean) } ) -> GetDomainSuggestionsRequest
newGetDomainSuggestionsRequest' _DomainName _OnlyAvailable _SuggestionCount customize = (GetDomainSuggestionsRequest <<< customize) { "DomainName": _DomainName, "OnlyAvailable": _OnlyAvailable, "SuggestionCount": _SuggestionCount }



newtype GetDomainSuggestionsResponse = GetDomainSuggestionsResponse 
  { "SuggestionsList" :: Maybe (DomainSuggestionsList)
  }
derive instance newtypeGetDomainSuggestionsResponse :: Newtype GetDomainSuggestionsResponse _
derive instance repGenericGetDomainSuggestionsResponse :: Generic GetDomainSuggestionsResponse _
instance showGetDomainSuggestionsResponse :: Show GetDomainSuggestionsResponse where show = genericShow
instance decodeGetDomainSuggestionsResponse :: Decode GetDomainSuggestionsResponse where decode = genericDecode options
instance encodeGetDomainSuggestionsResponse :: Encode GetDomainSuggestionsResponse where encode = genericEncode options

-- | Constructs GetDomainSuggestionsResponse from required parameters
newGetDomainSuggestionsResponse :: GetDomainSuggestionsResponse
newGetDomainSuggestionsResponse  = GetDomainSuggestionsResponse { "SuggestionsList": Nothing }

-- | Constructs GetDomainSuggestionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDomainSuggestionsResponse' :: ( { "SuggestionsList" :: Maybe (DomainSuggestionsList) } -> {"SuggestionsList" :: Maybe (DomainSuggestionsList) } ) -> GetDomainSuggestionsResponse
newGetDomainSuggestionsResponse'  customize = (GetDomainSuggestionsResponse <<< customize) { "SuggestionsList": Nothing }



-- | <p>The <a>GetOperationDetail</a> request includes the following element.</p>
newtype GetOperationDetailRequest = GetOperationDetailRequest 
  { "OperationId" :: (OperationId)
  }
derive instance newtypeGetOperationDetailRequest :: Newtype GetOperationDetailRequest _
derive instance repGenericGetOperationDetailRequest :: Generic GetOperationDetailRequest _
instance showGetOperationDetailRequest :: Show GetOperationDetailRequest where show = genericShow
instance decodeGetOperationDetailRequest :: Decode GetOperationDetailRequest where decode = genericDecode options
instance encodeGetOperationDetailRequest :: Encode GetOperationDetailRequest where encode = genericEncode options

-- | Constructs GetOperationDetailRequest from required parameters
newGetOperationDetailRequest :: OperationId -> GetOperationDetailRequest
newGetOperationDetailRequest _OperationId = GetOperationDetailRequest { "OperationId": _OperationId }

-- | Constructs GetOperationDetailRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOperationDetailRequest' :: OperationId -> ( { "OperationId" :: (OperationId) } -> {"OperationId" :: (OperationId) } ) -> GetOperationDetailRequest
newGetOperationDetailRequest' _OperationId customize = (GetOperationDetailRequest <<< customize) { "OperationId": _OperationId }



-- | <p>The GetOperationDetail response includes the following elements.</p>
newtype GetOperationDetailResponse = GetOperationDetailResponse 
  { "OperationId" :: Maybe (OperationId)
  , "Status" :: Maybe (OperationStatus)
  , "Message" :: Maybe (ErrorMessage)
  , "DomainName" :: Maybe (DomainName)
  , "Type" :: Maybe (OperationType)
  , "SubmittedDate" :: Maybe (Types.Timestamp)
  }
derive instance newtypeGetOperationDetailResponse :: Newtype GetOperationDetailResponse _
derive instance repGenericGetOperationDetailResponse :: Generic GetOperationDetailResponse _
instance showGetOperationDetailResponse :: Show GetOperationDetailResponse where show = genericShow
instance decodeGetOperationDetailResponse :: Decode GetOperationDetailResponse where decode = genericDecode options
instance encodeGetOperationDetailResponse :: Encode GetOperationDetailResponse where encode = genericEncode options

-- | Constructs GetOperationDetailResponse from required parameters
newGetOperationDetailResponse :: GetOperationDetailResponse
newGetOperationDetailResponse  = GetOperationDetailResponse { "DomainName": Nothing, "Message": Nothing, "OperationId": Nothing, "Status": Nothing, "SubmittedDate": Nothing, "Type": Nothing }

-- | Constructs GetOperationDetailResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOperationDetailResponse' :: ( { "OperationId" :: Maybe (OperationId) , "Status" :: Maybe (OperationStatus) , "Message" :: Maybe (ErrorMessage) , "DomainName" :: Maybe (DomainName) , "Type" :: Maybe (OperationType) , "SubmittedDate" :: Maybe (Types.Timestamp) } -> {"OperationId" :: Maybe (OperationId) , "Status" :: Maybe (OperationStatus) , "Message" :: Maybe (ErrorMessage) , "DomainName" :: Maybe (DomainName) , "Type" :: Maybe (OperationType) , "SubmittedDate" :: Maybe (Types.Timestamp) } ) -> GetOperationDetailResponse
newGetOperationDetailResponse'  customize = (GetOperationDetailResponse <<< customize) { "DomainName": Nothing, "Message": Nothing, "OperationId": Nothing, "Status": Nothing, "SubmittedDate": Nothing, "Type": Nothing }



newtype GlueIp = GlueIp String
derive instance newtypeGlueIp :: Newtype GlueIp _
derive instance repGenericGlueIp :: Generic GlueIp _
instance showGlueIp :: Show GlueIp where show = genericShow
instance decodeGlueIp :: Decode GlueIp where decode = genericDecode options
instance encodeGlueIp :: Encode GlueIp where encode = genericEncode options



newtype GlueIpList = GlueIpList (Array GlueIp)
derive instance newtypeGlueIpList :: Newtype GlueIpList _
derive instance repGenericGlueIpList :: Generic GlueIpList _
instance showGlueIpList :: Show GlueIpList where show = genericShow
instance decodeGlueIpList :: Decode GlueIpList where decode = genericDecode options
instance encodeGlueIpList :: Encode GlueIpList where encode = genericEncode options



newtype HostName = HostName String
derive instance newtypeHostName :: Newtype HostName _
derive instance repGenericHostName :: Generic HostName _
instance showHostName :: Show HostName where show = genericShow
instance decodeHostName :: Decode HostName where decode = genericDecode options
instance encodeHostName :: Encode HostName where encode = genericEncode options



-- | <p>The requested item is not acceptable. For example, for an OperationId it might refer to the ID of an operation that is already completed. For a domain name, it might not be a valid domain name or belong to the requester account.</p>
newtype InvalidInput = InvalidInput 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidInput :: Newtype InvalidInput _
derive instance repGenericInvalidInput :: Generic InvalidInput _
instance showInvalidInput :: Show InvalidInput where show = genericShow
instance decodeInvalidInput :: Decode InvalidInput where decode = genericDecode options
instance encodeInvalidInput :: Encode InvalidInput where encode = genericEncode options

-- | Constructs InvalidInput from required parameters
newInvalidInput :: InvalidInput
newInvalidInput  = InvalidInput { "message": Nothing }

-- | Constructs InvalidInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidInput' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InvalidInput
newInvalidInput'  customize = (InvalidInput <<< customize) { "message": Nothing }



newtype InvoiceId = InvoiceId String
derive instance newtypeInvoiceId :: Newtype InvoiceId _
derive instance repGenericInvoiceId :: Generic InvoiceId _
instance showInvoiceId :: Show InvoiceId where show = genericShow
instance decodeInvoiceId :: Decode InvoiceId where decode = genericDecode options
instance encodeInvoiceId :: Encode InvoiceId where encode = genericEncode options



newtype LangCode = LangCode String
derive instance newtypeLangCode :: Newtype LangCode _
derive instance repGenericLangCode :: Generic LangCode _
instance showLangCode :: Show LangCode where show = genericShow
instance decodeLangCode :: Decode LangCode where decode = genericDecode options
instance encodeLangCode :: Encode LangCode where encode = genericEncode options



-- | <p>The ListDomains request includes the following elements.</p>
newtype ListDomainsRequest = ListDomainsRequest 
  { "Marker" :: Maybe (PageMarker)
  , "MaxItems" :: Maybe (PageMaxItems)
  }
derive instance newtypeListDomainsRequest :: Newtype ListDomainsRequest _
derive instance repGenericListDomainsRequest :: Generic ListDomainsRequest _
instance showListDomainsRequest :: Show ListDomainsRequest where show = genericShow
instance decodeListDomainsRequest :: Decode ListDomainsRequest where decode = genericDecode options
instance encodeListDomainsRequest :: Encode ListDomainsRequest where encode = genericEncode options

-- | Constructs ListDomainsRequest from required parameters
newListDomainsRequest :: ListDomainsRequest
newListDomainsRequest  = ListDomainsRequest { "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListDomainsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDomainsRequest' :: ( { "Marker" :: Maybe (PageMarker) , "MaxItems" :: Maybe (PageMaxItems) } -> {"Marker" :: Maybe (PageMarker) , "MaxItems" :: Maybe (PageMaxItems) } ) -> ListDomainsRequest
newListDomainsRequest'  customize = (ListDomainsRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing }



-- | <p>The ListDomains response includes the following elements.</p>
newtype ListDomainsResponse = ListDomainsResponse 
  { "Domains" :: (DomainSummaryList)
  , "NextPageMarker" :: Maybe (PageMarker)
  }
derive instance newtypeListDomainsResponse :: Newtype ListDomainsResponse _
derive instance repGenericListDomainsResponse :: Generic ListDomainsResponse _
instance showListDomainsResponse :: Show ListDomainsResponse where show = genericShow
instance decodeListDomainsResponse :: Decode ListDomainsResponse where decode = genericDecode options
instance encodeListDomainsResponse :: Encode ListDomainsResponse where encode = genericEncode options

-- | Constructs ListDomainsResponse from required parameters
newListDomainsResponse :: DomainSummaryList -> ListDomainsResponse
newListDomainsResponse _Domains = ListDomainsResponse { "Domains": _Domains, "NextPageMarker": Nothing }

-- | Constructs ListDomainsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDomainsResponse' :: DomainSummaryList -> ( { "Domains" :: (DomainSummaryList) , "NextPageMarker" :: Maybe (PageMarker) } -> {"Domains" :: (DomainSummaryList) , "NextPageMarker" :: Maybe (PageMarker) } ) -> ListDomainsResponse
newListDomainsResponse' _Domains customize = (ListDomainsResponse <<< customize) { "Domains": _Domains, "NextPageMarker": Nothing }



-- | <p>The ListOperations request includes the following elements.</p>
newtype ListOperationsRequest = ListOperationsRequest 
  { "Marker" :: Maybe (PageMarker)
  , "MaxItems" :: Maybe (PageMaxItems)
  }
derive instance newtypeListOperationsRequest :: Newtype ListOperationsRequest _
derive instance repGenericListOperationsRequest :: Generic ListOperationsRequest _
instance showListOperationsRequest :: Show ListOperationsRequest where show = genericShow
instance decodeListOperationsRequest :: Decode ListOperationsRequest where decode = genericDecode options
instance encodeListOperationsRequest :: Encode ListOperationsRequest where encode = genericEncode options

-- | Constructs ListOperationsRequest from required parameters
newListOperationsRequest :: ListOperationsRequest
newListOperationsRequest  = ListOperationsRequest { "Marker": Nothing, "MaxItems": Nothing }

-- | Constructs ListOperationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOperationsRequest' :: ( { "Marker" :: Maybe (PageMarker) , "MaxItems" :: Maybe (PageMaxItems) } -> {"Marker" :: Maybe (PageMarker) , "MaxItems" :: Maybe (PageMaxItems) } ) -> ListOperationsRequest
newListOperationsRequest'  customize = (ListOperationsRequest <<< customize) { "Marker": Nothing, "MaxItems": Nothing }



-- | <p>The ListOperations response includes the following elements.</p>
newtype ListOperationsResponse = ListOperationsResponse 
  { "Operations" :: (OperationSummaryList)
  , "NextPageMarker" :: Maybe (PageMarker)
  }
derive instance newtypeListOperationsResponse :: Newtype ListOperationsResponse _
derive instance repGenericListOperationsResponse :: Generic ListOperationsResponse _
instance showListOperationsResponse :: Show ListOperationsResponse where show = genericShow
instance decodeListOperationsResponse :: Decode ListOperationsResponse where decode = genericDecode options
instance encodeListOperationsResponse :: Encode ListOperationsResponse where encode = genericEncode options

-- | Constructs ListOperationsResponse from required parameters
newListOperationsResponse :: OperationSummaryList -> ListOperationsResponse
newListOperationsResponse _Operations = ListOperationsResponse { "Operations": _Operations, "NextPageMarker": Nothing }

-- | Constructs ListOperationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOperationsResponse' :: OperationSummaryList -> ( { "Operations" :: (OperationSummaryList) , "NextPageMarker" :: Maybe (PageMarker) } -> {"Operations" :: (OperationSummaryList) , "NextPageMarker" :: Maybe (PageMarker) } ) -> ListOperationsResponse
newListOperationsResponse' _Operations customize = (ListOperationsResponse <<< customize) { "Operations": _Operations, "NextPageMarker": Nothing }



-- | <p>The ListTagsForDomainRequest includes the following elements.</p>
newtype ListTagsForDomainRequest = ListTagsForDomainRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeListTagsForDomainRequest :: Newtype ListTagsForDomainRequest _
derive instance repGenericListTagsForDomainRequest :: Generic ListTagsForDomainRequest _
instance showListTagsForDomainRequest :: Show ListTagsForDomainRequest where show = genericShow
instance decodeListTagsForDomainRequest :: Decode ListTagsForDomainRequest where decode = genericDecode options
instance encodeListTagsForDomainRequest :: Encode ListTagsForDomainRequest where encode = genericEncode options

-- | Constructs ListTagsForDomainRequest from required parameters
newListTagsForDomainRequest :: DomainName -> ListTagsForDomainRequest
newListTagsForDomainRequest _DomainName = ListTagsForDomainRequest { "DomainName": _DomainName }

-- | Constructs ListTagsForDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForDomainRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> ListTagsForDomainRequest
newListTagsForDomainRequest' _DomainName customize = (ListTagsForDomainRequest <<< customize) { "DomainName": _DomainName }



-- | <p>The ListTagsForDomain response includes the following elements.</p>
newtype ListTagsForDomainResponse = ListTagsForDomainResponse 
  { "TagList" :: (TagList)
  }
derive instance newtypeListTagsForDomainResponse :: Newtype ListTagsForDomainResponse _
derive instance repGenericListTagsForDomainResponse :: Generic ListTagsForDomainResponse _
instance showListTagsForDomainResponse :: Show ListTagsForDomainResponse where show = genericShow
instance decodeListTagsForDomainResponse :: Decode ListTagsForDomainResponse where decode = genericDecode options
instance encodeListTagsForDomainResponse :: Encode ListTagsForDomainResponse where encode = genericEncode options

-- | Constructs ListTagsForDomainResponse from required parameters
newListTagsForDomainResponse :: TagList -> ListTagsForDomainResponse
newListTagsForDomainResponse _TagList = ListTagsForDomainResponse { "TagList": _TagList }

-- | Constructs ListTagsForDomainResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForDomainResponse' :: TagList -> ( { "TagList" :: (TagList) } -> {"TagList" :: (TagList) } ) -> ListTagsForDomainResponse
newListTagsForDomainResponse' _TagList customize = (ListTagsForDomainResponse <<< customize) { "TagList": _TagList }



-- | <p>Nameserver includes the following elements.</p>
newtype Nameserver = Nameserver 
  { "Name" :: (HostName)
  , "GlueIps" :: Maybe (GlueIpList)
  }
derive instance newtypeNameserver :: Newtype Nameserver _
derive instance repGenericNameserver :: Generic Nameserver _
instance showNameserver :: Show Nameserver where show = genericShow
instance decodeNameserver :: Decode Nameserver where decode = genericDecode options
instance encodeNameserver :: Encode Nameserver where encode = genericEncode options

-- | Constructs Nameserver from required parameters
newNameserver :: HostName -> Nameserver
newNameserver _Name = Nameserver { "Name": _Name, "GlueIps": Nothing }

-- | Constructs Nameserver's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNameserver' :: HostName -> ( { "Name" :: (HostName) , "GlueIps" :: Maybe (GlueIpList) } -> {"Name" :: (HostName) , "GlueIps" :: Maybe (GlueIpList) } ) -> Nameserver
newNameserver' _Name customize = (Nameserver <<< customize) { "Name": _Name, "GlueIps": Nothing }



newtype NameserverList = NameserverList (Array Nameserver)
derive instance newtypeNameserverList :: Newtype NameserverList _
derive instance repGenericNameserverList :: Generic NameserverList _
instance showNameserverList :: Show NameserverList where show = genericShow
instance decodeNameserverList :: Decode NameserverList where decode = genericDecode options
instance encodeNameserverList :: Encode NameserverList where encode = genericEncode options



newtype OperationId = OperationId String
derive instance newtypeOperationId :: Newtype OperationId _
derive instance repGenericOperationId :: Generic OperationId _
instance showOperationId :: Show OperationId where show = genericShow
instance decodeOperationId :: Decode OperationId where decode = genericDecode options
instance encodeOperationId :: Encode OperationId where encode = genericEncode options



-- | <p>The number of operations or jobs running exceeded the allowed threshold for the account.</p>
newtype OperationLimitExceeded = OperationLimitExceeded 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeOperationLimitExceeded :: Newtype OperationLimitExceeded _
derive instance repGenericOperationLimitExceeded :: Generic OperationLimitExceeded _
instance showOperationLimitExceeded :: Show OperationLimitExceeded where show = genericShow
instance decodeOperationLimitExceeded :: Decode OperationLimitExceeded where decode = genericDecode options
instance encodeOperationLimitExceeded :: Encode OperationLimitExceeded where encode = genericEncode options

-- | Constructs OperationLimitExceeded from required parameters
newOperationLimitExceeded :: OperationLimitExceeded
newOperationLimitExceeded  = OperationLimitExceeded { "message": Nothing }

-- | Constructs OperationLimitExceeded's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperationLimitExceeded' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> OperationLimitExceeded
newOperationLimitExceeded'  customize = (OperationLimitExceeded <<< customize) { "message": Nothing }



newtype OperationStatus = OperationStatus String
derive instance newtypeOperationStatus :: Newtype OperationStatus _
derive instance repGenericOperationStatus :: Generic OperationStatus _
instance showOperationStatus :: Show OperationStatus where show = genericShow
instance decodeOperationStatus :: Decode OperationStatus where decode = genericDecode options
instance encodeOperationStatus :: Encode OperationStatus where encode = genericEncode options



-- | <p>OperationSummary includes the following elements.</p>
newtype OperationSummary = OperationSummary 
  { "OperationId" :: (OperationId)
  , "Status" :: (OperationStatus)
  , "Type" :: (OperationType)
  , "SubmittedDate" :: (Types.Timestamp)
  }
derive instance newtypeOperationSummary :: Newtype OperationSummary _
derive instance repGenericOperationSummary :: Generic OperationSummary _
instance showOperationSummary :: Show OperationSummary where show = genericShow
instance decodeOperationSummary :: Decode OperationSummary where decode = genericDecode options
instance encodeOperationSummary :: Encode OperationSummary where encode = genericEncode options

-- | Constructs OperationSummary from required parameters
newOperationSummary :: OperationId -> OperationStatus -> Types.Timestamp -> OperationType -> OperationSummary
newOperationSummary _OperationId _Status _SubmittedDate _Type = OperationSummary { "OperationId": _OperationId, "Status": _Status, "SubmittedDate": _SubmittedDate, "Type": _Type }

-- | Constructs OperationSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperationSummary' :: OperationId -> OperationStatus -> Types.Timestamp -> OperationType -> ( { "OperationId" :: (OperationId) , "Status" :: (OperationStatus) , "Type" :: (OperationType) , "SubmittedDate" :: (Types.Timestamp) } -> {"OperationId" :: (OperationId) , "Status" :: (OperationStatus) , "Type" :: (OperationType) , "SubmittedDate" :: (Types.Timestamp) } ) -> OperationSummary
newOperationSummary' _OperationId _Status _SubmittedDate _Type customize = (OperationSummary <<< customize) { "OperationId": _OperationId, "Status": _Status, "SubmittedDate": _SubmittedDate, "Type": _Type }



newtype OperationSummaryList = OperationSummaryList (Array OperationSummary)
derive instance newtypeOperationSummaryList :: Newtype OperationSummaryList _
derive instance repGenericOperationSummaryList :: Generic OperationSummaryList _
instance showOperationSummaryList :: Show OperationSummaryList where show = genericShow
instance decodeOperationSummaryList :: Decode OperationSummaryList where decode = genericDecode options
instance encodeOperationSummaryList :: Encode OperationSummaryList where encode = genericEncode options



newtype OperationType = OperationType String
derive instance newtypeOperationType :: Newtype OperationType _
derive instance repGenericOperationType :: Generic OperationType _
instance showOperationType :: Show OperationType where show = genericShow
instance decodeOperationType :: Decode OperationType where decode = genericDecode options
instance encodeOperationType :: Encode OperationType where encode = genericEncode options



newtype PageMarker = PageMarker String
derive instance newtypePageMarker :: Newtype PageMarker _
derive instance repGenericPageMarker :: Generic PageMarker _
instance showPageMarker :: Show PageMarker where show = genericShow
instance decodePageMarker :: Decode PageMarker where decode = genericDecode options
instance encodePageMarker :: Encode PageMarker where encode = genericEncode options



newtype PageMaxItems = PageMaxItems Int
derive instance newtypePageMaxItems :: Newtype PageMaxItems _
derive instance repGenericPageMaxItems :: Generic PageMaxItems _
instance showPageMaxItems :: Show PageMaxItems where show = genericShow
instance decodePageMaxItems :: Decode PageMaxItems where decode = genericDecode options
instance encodePageMaxItems :: Encode PageMaxItems where encode = genericEncode options



newtype Price = Price Number
derive instance newtypePrice :: Newtype Price _
derive instance repGenericPrice :: Generic Price _
instance showPrice :: Show Price where show = genericShow
instance decodePrice :: Decode Price where decode = genericDecode options
instance encodePrice :: Encode Price where encode = genericEncode options



newtype ReachabilityStatus = ReachabilityStatus String
derive instance newtypeReachabilityStatus :: Newtype ReachabilityStatus _
derive instance repGenericReachabilityStatus :: Generic ReachabilityStatus _
instance showReachabilityStatus :: Show ReachabilityStatus where show = genericShow
instance decodeReachabilityStatus :: Decode ReachabilityStatus where decode = genericDecode options
instance encodeReachabilityStatus :: Encode ReachabilityStatus where encode = genericEncode options



-- | <p>The RegisterDomain request includes the following elements.</p>
newtype RegisterDomainRequest = RegisterDomainRequest 
  { "DomainName" :: (DomainName)
  , "IdnLangCode" :: Maybe (LangCode)
  , "DurationInYears" :: (DurationInYears)
  , "AutoRenew" :: Maybe (Boolean)
  , "AdminContact" :: (ContactDetail)
  , "RegistrantContact" :: (ContactDetail)
  , "TechContact" :: (ContactDetail)
  , "PrivacyProtectAdminContact" :: Maybe (Boolean)
  , "PrivacyProtectRegistrantContact" :: Maybe (Boolean)
  , "PrivacyProtectTechContact" :: Maybe (Boolean)
  }
derive instance newtypeRegisterDomainRequest :: Newtype RegisterDomainRequest _
derive instance repGenericRegisterDomainRequest :: Generic RegisterDomainRequest _
instance showRegisterDomainRequest :: Show RegisterDomainRequest where show = genericShow
instance decodeRegisterDomainRequest :: Decode RegisterDomainRequest where decode = genericDecode options
instance encodeRegisterDomainRequest :: Encode RegisterDomainRequest where encode = genericEncode options

-- | Constructs RegisterDomainRequest from required parameters
newRegisterDomainRequest :: ContactDetail -> DomainName -> DurationInYears -> ContactDetail -> ContactDetail -> RegisterDomainRequest
newRegisterDomainRequest _AdminContact _DomainName _DurationInYears _RegistrantContact _TechContact = RegisterDomainRequest { "AdminContact": _AdminContact, "DomainName": _DomainName, "DurationInYears": _DurationInYears, "RegistrantContact": _RegistrantContact, "TechContact": _TechContact, "AutoRenew": Nothing, "IdnLangCode": Nothing, "PrivacyProtectAdminContact": Nothing, "PrivacyProtectRegistrantContact": Nothing, "PrivacyProtectTechContact": Nothing }

-- | Constructs RegisterDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterDomainRequest' :: ContactDetail -> DomainName -> DurationInYears -> ContactDetail -> ContactDetail -> ( { "DomainName" :: (DomainName) , "IdnLangCode" :: Maybe (LangCode) , "DurationInYears" :: (DurationInYears) , "AutoRenew" :: Maybe (Boolean) , "AdminContact" :: (ContactDetail) , "RegistrantContact" :: (ContactDetail) , "TechContact" :: (ContactDetail) , "PrivacyProtectAdminContact" :: Maybe (Boolean) , "PrivacyProtectRegistrantContact" :: Maybe (Boolean) , "PrivacyProtectTechContact" :: Maybe (Boolean) } -> {"DomainName" :: (DomainName) , "IdnLangCode" :: Maybe (LangCode) , "DurationInYears" :: (DurationInYears) , "AutoRenew" :: Maybe (Boolean) , "AdminContact" :: (ContactDetail) , "RegistrantContact" :: (ContactDetail) , "TechContact" :: (ContactDetail) , "PrivacyProtectAdminContact" :: Maybe (Boolean) , "PrivacyProtectRegistrantContact" :: Maybe (Boolean) , "PrivacyProtectTechContact" :: Maybe (Boolean) } ) -> RegisterDomainRequest
newRegisterDomainRequest' _AdminContact _DomainName _DurationInYears _RegistrantContact _TechContact customize = (RegisterDomainRequest <<< customize) { "AdminContact": _AdminContact, "DomainName": _DomainName, "DurationInYears": _DurationInYears, "RegistrantContact": _RegistrantContact, "TechContact": _TechContact, "AutoRenew": Nothing, "IdnLangCode": Nothing, "PrivacyProtectAdminContact": Nothing, "PrivacyProtectRegistrantContact": Nothing, "PrivacyProtectTechContact": Nothing }



-- | <p>The RegisterDomain response includes the following element.</p>
newtype RegisterDomainResponse = RegisterDomainResponse 
  { "OperationId" :: (OperationId)
  }
derive instance newtypeRegisterDomainResponse :: Newtype RegisterDomainResponse _
derive instance repGenericRegisterDomainResponse :: Generic RegisterDomainResponse _
instance showRegisterDomainResponse :: Show RegisterDomainResponse where show = genericShow
instance decodeRegisterDomainResponse :: Decode RegisterDomainResponse where decode = genericDecode options
instance encodeRegisterDomainResponse :: Encode RegisterDomainResponse where encode = genericEncode options

-- | Constructs RegisterDomainResponse from required parameters
newRegisterDomainResponse :: OperationId -> RegisterDomainResponse
newRegisterDomainResponse _OperationId = RegisterDomainResponse { "OperationId": _OperationId }

-- | Constructs RegisterDomainResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterDomainResponse' :: OperationId -> ( { "OperationId" :: (OperationId) } -> {"OperationId" :: (OperationId) } ) -> RegisterDomainResponse
newRegisterDomainResponse' _OperationId customize = (RegisterDomainResponse <<< customize) { "OperationId": _OperationId }



newtype RegistrarName = RegistrarName String
derive instance newtypeRegistrarName :: Newtype RegistrarName _
derive instance repGenericRegistrarName :: Generic RegistrarName _
instance showRegistrarName :: Show RegistrarName where show = genericShow
instance decodeRegistrarName :: Decode RegistrarName where decode = genericDecode options
instance encodeRegistrarName :: Encode RegistrarName where encode = genericEncode options



newtype RegistrarUrl = RegistrarUrl String
derive instance newtypeRegistrarUrl :: Newtype RegistrarUrl _
derive instance repGenericRegistrarUrl :: Generic RegistrarUrl _
instance showRegistrarUrl :: Show RegistrarUrl where show = genericShow
instance decodeRegistrarUrl :: Decode RegistrarUrl where decode = genericDecode options
instance encodeRegistrarUrl :: Encode RegistrarUrl where encode = genericEncode options



newtype RegistrarWhoIsServer = RegistrarWhoIsServer String
derive instance newtypeRegistrarWhoIsServer :: Newtype RegistrarWhoIsServer _
derive instance repGenericRegistrarWhoIsServer :: Generic RegistrarWhoIsServer _
instance showRegistrarWhoIsServer :: Show RegistrarWhoIsServer where show = genericShow
instance decodeRegistrarWhoIsServer :: Decode RegistrarWhoIsServer where decode = genericDecode options
instance encodeRegistrarWhoIsServer :: Encode RegistrarWhoIsServer where encode = genericEncode options



newtype RegistryDomainId = RegistryDomainId String
derive instance newtypeRegistryDomainId :: Newtype RegistryDomainId _
derive instance repGenericRegistryDomainId :: Generic RegistryDomainId _
instance showRegistryDomainId :: Show RegistryDomainId where show = genericShow
instance decodeRegistryDomainId :: Decode RegistryDomainId where decode = genericDecode options
instance encodeRegistryDomainId :: Encode RegistryDomainId where encode = genericEncode options



-- | <p>A <code>RenewDomain</code> request includes the number of years that you want to renew for and the current expiration year.</p>
newtype RenewDomainRequest = RenewDomainRequest 
  { "DomainName" :: (DomainName)
  , "DurationInYears" :: Maybe (DurationInYears)
  , "CurrentExpiryYear" :: (CurrentExpiryYear)
  }
derive instance newtypeRenewDomainRequest :: Newtype RenewDomainRequest _
derive instance repGenericRenewDomainRequest :: Generic RenewDomainRequest _
instance showRenewDomainRequest :: Show RenewDomainRequest where show = genericShow
instance decodeRenewDomainRequest :: Decode RenewDomainRequest where decode = genericDecode options
instance encodeRenewDomainRequest :: Encode RenewDomainRequest where encode = genericEncode options

-- | Constructs RenewDomainRequest from required parameters
newRenewDomainRequest :: CurrentExpiryYear -> DomainName -> RenewDomainRequest
newRenewDomainRequest _CurrentExpiryYear _DomainName = RenewDomainRequest { "CurrentExpiryYear": _CurrentExpiryYear, "DomainName": _DomainName, "DurationInYears": Nothing }

-- | Constructs RenewDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRenewDomainRequest' :: CurrentExpiryYear -> DomainName -> ( { "DomainName" :: (DomainName) , "DurationInYears" :: Maybe (DurationInYears) , "CurrentExpiryYear" :: (CurrentExpiryYear) } -> {"DomainName" :: (DomainName) , "DurationInYears" :: Maybe (DurationInYears) , "CurrentExpiryYear" :: (CurrentExpiryYear) } ) -> RenewDomainRequest
newRenewDomainRequest' _CurrentExpiryYear _DomainName customize = (RenewDomainRequest <<< customize) { "CurrentExpiryYear": _CurrentExpiryYear, "DomainName": _DomainName, "DurationInYears": Nothing }



newtype RenewDomainResponse = RenewDomainResponse 
  { "OperationId" :: (OperationId)
  }
derive instance newtypeRenewDomainResponse :: Newtype RenewDomainResponse _
derive instance repGenericRenewDomainResponse :: Generic RenewDomainResponse _
instance showRenewDomainResponse :: Show RenewDomainResponse where show = genericShow
instance decodeRenewDomainResponse :: Decode RenewDomainResponse where decode = genericDecode options
instance encodeRenewDomainResponse :: Encode RenewDomainResponse where encode = genericEncode options

-- | Constructs RenewDomainResponse from required parameters
newRenewDomainResponse :: OperationId -> RenewDomainResponse
newRenewDomainResponse _OperationId = RenewDomainResponse { "OperationId": _OperationId }

-- | Constructs RenewDomainResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRenewDomainResponse' :: OperationId -> ( { "OperationId" :: (OperationId) } -> {"OperationId" :: (OperationId) } ) -> RenewDomainResponse
newRenewDomainResponse' _OperationId customize = (RenewDomainResponse <<< customize) { "OperationId": _OperationId }



newtype Reseller = Reseller String
derive instance newtypeReseller :: Newtype Reseller _
derive instance repGenericReseller :: Generic Reseller _
instance showReseller :: Show Reseller where show = genericShow
instance decodeReseller :: Decode Reseller where decode = genericDecode options
instance encodeReseller :: Encode Reseller where encode = genericEncode options



newtype ResendContactReachabilityEmailRequest = ResendContactReachabilityEmailRequest 
  { "domainName" :: Maybe (DomainName)
  }
derive instance newtypeResendContactReachabilityEmailRequest :: Newtype ResendContactReachabilityEmailRequest _
derive instance repGenericResendContactReachabilityEmailRequest :: Generic ResendContactReachabilityEmailRequest _
instance showResendContactReachabilityEmailRequest :: Show ResendContactReachabilityEmailRequest where show = genericShow
instance decodeResendContactReachabilityEmailRequest :: Decode ResendContactReachabilityEmailRequest where decode = genericDecode options
instance encodeResendContactReachabilityEmailRequest :: Encode ResendContactReachabilityEmailRequest where encode = genericEncode options

-- | Constructs ResendContactReachabilityEmailRequest from required parameters
newResendContactReachabilityEmailRequest :: ResendContactReachabilityEmailRequest
newResendContactReachabilityEmailRequest  = ResendContactReachabilityEmailRequest { "domainName": Nothing }

-- | Constructs ResendContactReachabilityEmailRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResendContactReachabilityEmailRequest' :: ( { "domainName" :: Maybe (DomainName) } -> {"domainName" :: Maybe (DomainName) } ) -> ResendContactReachabilityEmailRequest
newResendContactReachabilityEmailRequest'  customize = (ResendContactReachabilityEmailRequest <<< customize) { "domainName": Nothing }



newtype ResendContactReachabilityEmailResponse = ResendContactReachabilityEmailResponse 
  { "domainName" :: Maybe (DomainName)
  , "emailAddress" :: Maybe (Email)
  , "isAlreadyVerified" :: Maybe (Boolean)
  }
derive instance newtypeResendContactReachabilityEmailResponse :: Newtype ResendContactReachabilityEmailResponse _
derive instance repGenericResendContactReachabilityEmailResponse :: Generic ResendContactReachabilityEmailResponse _
instance showResendContactReachabilityEmailResponse :: Show ResendContactReachabilityEmailResponse where show = genericShow
instance decodeResendContactReachabilityEmailResponse :: Decode ResendContactReachabilityEmailResponse where decode = genericDecode options
instance encodeResendContactReachabilityEmailResponse :: Encode ResendContactReachabilityEmailResponse where encode = genericEncode options

-- | Constructs ResendContactReachabilityEmailResponse from required parameters
newResendContactReachabilityEmailResponse :: ResendContactReachabilityEmailResponse
newResendContactReachabilityEmailResponse  = ResendContactReachabilityEmailResponse { "domainName": Nothing, "emailAddress": Nothing, "isAlreadyVerified": Nothing }

-- | Constructs ResendContactReachabilityEmailResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResendContactReachabilityEmailResponse' :: ( { "domainName" :: Maybe (DomainName) , "emailAddress" :: Maybe (Email) , "isAlreadyVerified" :: Maybe (Boolean) } -> {"domainName" :: Maybe (DomainName) , "emailAddress" :: Maybe (Email) , "isAlreadyVerified" :: Maybe (Boolean) } ) -> ResendContactReachabilityEmailResponse
newResendContactReachabilityEmailResponse'  customize = (ResendContactReachabilityEmailResponse <<< customize) { "domainName": Nothing, "emailAddress": Nothing, "isAlreadyVerified": Nothing }



-- | <p>A request for the authorization code for the specified domain. To transfer a domain to another registrar, you provide this value to the new registrar.</p>
newtype RetrieveDomainAuthCodeRequest = RetrieveDomainAuthCodeRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeRetrieveDomainAuthCodeRequest :: Newtype RetrieveDomainAuthCodeRequest _
derive instance repGenericRetrieveDomainAuthCodeRequest :: Generic RetrieveDomainAuthCodeRequest _
instance showRetrieveDomainAuthCodeRequest :: Show RetrieveDomainAuthCodeRequest where show = genericShow
instance decodeRetrieveDomainAuthCodeRequest :: Decode RetrieveDomainAuthCodeRequest where decode = genericDecode options
instance encodeRetrieveDomainAuthCodeRequest :: Encode RetrieveDomainAuthCodeRequest where encode = genericEncode options

-- | Constructs RetrieveDomainAuthCodeRequest from required parameters
newRetrieveDomainAuthCodeRequest :: DomainName -> RetrieveDomainAuthCodeRequest
newRetrieveDomainAuthCodeRequest _DomainName = RetrieveDomainAuthCodeRequest { "DomainName": _DomainName }

-- | Constructs RetrieveDomainAuthCodeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRetrieveDomainAuthCodeRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> RetrieveDomainAuthCodeRequest
newRetrieveDomainAuthCodeRequest' _DomainName customize = (RetrieveDomainAuthCodeRequest <<< customize) { "DomainName": _DomainName }



-- | <p>The RetrieveDomainAuthCode response includes the following element.</p>
newtype RetrieveDomainAuthCodeResponse = RetrieveDomainAuthCodeResponse 
  { "AuthCode" :: (DomainAuthCode)
  }
derive instance newtypeRetrieveDomainAuthCodeResponse :: Newtype RetrieveDomainAuthCodeResponse _
derive instance repGenericRetrieveDomainAuthCodeResponse :: Generic RetrieveDomainAuthCodeResponse _
instance showRetrieveDomainAuthCodeResponse :: Show RetrieveDomainAuthCodeResponse where show = genericShow
instance decodeRetrieveDomainAuthCodeResponse :: Decode RetrieveDomainAuthCodeResponse where decode = genericDecode options
instance encodeRetrieveDomainAuthCodeResponse :: Encode RetrieveDomainAuthCodeResponse where encode = genericEncode options

-- | Constructs RetrieveDomainAuthCodeResponse from required parameters
newRetrieveDomainAuthCodeResponse :: DomainAuthCode -> RetrieveDomainAuthCodeResponse
newRetrieveDomainAuthCodeResponse _AuthCode = RetrieveDomainAuthCodeResponse { "AuthCode": _AuthCode }

-- | Constructs RetrieveDomainAuthCodeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRetrieveDomainAuthCodeResponse' :: DomainAuthCode -> ( { "AuthCode" :: (DomainAuthCode) } -> {"AuthCode" :: (DomainAuthCode) } ) -> RetrieveDomainAuthCodeResponse
newRetrieveDomainAuthCodeResponse' _AuthCode customize = (RetrieveDomainAuthCodeResponse <<< customize) { "AuthCode": _AuthCode }



newtype State = State String
derive instance newtypeState :: Newtype State _
derive instance repGenericState :: Generic State _
instance showState :: Show State where show = genericShow
instance decodeState :: Decode State where decode = genericDecode options
instance encodeState :: Encode State where encode = genericEncode options



-- | <p>The top-level domain does not support this operation.</p>
newtype TLDRulesViolation = TLDRulesViolation 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeTLDRulesViolation :: Newtype TLDRulesViolation _
derive instance repGenericTLDRulesViolation :: Generic TLDRulesViolation _
instance showTLDRulesViolation :: Show TLDRulesViolation where show = genericShow
instance decodeTLDRulesViolation :: Decode TLDRulesViolation where decode = genericDecode options
instance encodeTLDRulesViolation :: Encode TLDRulesViolation where encode = genericEncode options

-- | Constructs TLDRulesViolation from required parameters
newTLDRulesViolation :: TLDRulesViolation
newTLDRulesViolation  = TLDRulesViolation { "message": Nothing }

-- | Constructs TLDRulesViolation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTLDRulesViolation' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> TLDRulesViolation
newTLDRulesViolation'  customize = (TLDRulesViolation <<< customize) { "message": Nothing }



-- | <p>Each tag includes the following elements.</p>
newtype Tag = Tag 
  { "Key" :: Maybe (TagKey)
  , "Value" :: Maybe (TagValue)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: Tag
newTag  = Tag { "Key": Nothing, "Value": Nothing }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: ( { "Key" :: Maybe (TagKey) , "Value" :: Maybe (TagValue) } -> {"Key" :: Maybe (TagKey) , "Value" :: Maybe (TagValue) } ) -> Tag
newTag'  customize = (Tag <<< customize) { "Key": Nothing, "Value": Nothing }



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagKeyList = TagKeyList (Array TagKey)
derive instance newtypeTagKeyList :: Newtype TagKeyList _
derive instance repGenericTagKeyList :: Generic TagKeyList _
instance showTagKeyList :: Show TagKeyList where show = genericShow
instance decodeTagKeyList :: Decode TagKeyList where decode = genericDecode options
instance encodeTagKeyList :: Encode TagKeyList where encode = genericEncode options



newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where show = genericShow
instance decodeTagList :: Decode TagList where decode = genericDecode options
instance encodeTagList :: Encode TagList where encode = genericEncode options



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



-- | <p>The TransferDomain request includes the following elements.</p>
newtype TransferDomainRequest = TransferDomainRequest 
  { "DomainName" :: (DomainName)
  , "IdnLangCode" :: Maybe (LangCode)
  , "DurationInYears" :: (DurationInYears)
  , "Nameservers" :: Maybe (NameserverList)
  , "AuthCode" :: Maybe (DomainAuthCode)
  , "AutoRenew" :: Maybe (Boolean)
  , "AdminContact" :: (ContactDetail)
  , "RegistrantContact" :: (ContactDetail)
  , "TechContact" :: (ContactDetail)
  , "PrivacyProtectAdminContact" :: Maybe (Boolean)
  , "PrivacyProtectRegistrantContact" :: Maybe (Boolean)
  , "PrivacyProtectTechContact" :: Maybe (Boolean)
  }
derive instance newtypeTransferDomainRequest :: Newtype TransferDomainRequest _
derive instance repGenericTransferDomainRequest :: Generic TransferDomainRequest _
instance showTransferDomainRequest :: Show TransferDomainRequest where show = genericShow
instance decodeTransferDomainRequest :: Decode TransferDomainRequest where decode = genericDecode options
instance encodeTransferDomainRequest :: Encode TransferDomainRequest where encode = genericEncode options

-- | Constructs TransferDomainRequest from required parameters
newTransferDomainRequest :: ContactDetail -> DomainName -> DurationInYears -> ContactDetail -> ContactDetail -> TransferDomainRequest
newTransferDomainRequest _AdminContact _DomainName _DurationInYears _RegistrantContact _TechContact = TransferDomainRequest { "AdminContact": _AdminContact, "DomainName": _DomainName, "DurationInYears": _DurationInYears, "RegistrantContact": _RegistrantContact, "TechContact": _TechContact, "AuthCode": Nothing, "AutoRenew": Nothing, "IdnLangCode": Nothing, "Nameservers": Nothing, "PrivacyProtectAdminContact": Nothing, "PrivacyProtectRegistrantContact": Nothing, "PrivacyProtectTechContact": Nothing }

-- | Constructs TransferDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTransferDomainRequest' :: ContactDetail -> DomainName -> DurationInYears -> ContactDetail -> ContactDetail -> ( { "DomainName" :: (DomainName) , "IdnLangCode" :: Maybe (LangCode) , "DurationInYears" :: (DurationInYears) , "Nameservers" :: Maybe (NameserverList) , "AuthCode" :: Maybe (DomainAuthCode) , "AutoRenew" :: Maybe (Boolean) , "AdminContact" :: (ContactDetail) , "RegistrantContact" :: (ContactDetail) , "TechContact" :: (ContactDetail) , "PrivacyProtectAdminContact" :: Maybe (Boolean) , "PrivacyProtectRegistrantContact" :: Maybe (Boolean) , "PrivacyProtectTechContact" :: Maybe (Boolean) } -> {"DomainName" :: (DomainName) , "IdnLangCode" :: Maybe (LangCode) , "DurationInYears" :: (DurationInYears) , "Nameservers" :: Maybe (NameserverList) , "AuthCode" :: Maybe (DomainAuthCode) , "AutoRenew" :: Maybe (Boolean) , "AdminContact" :: (ContactDetail) , "RegistrantContact" :: (ContactDetail) , "TechContact" :: (ContactDetail) , "PrivacyProtectAdminContact" :: Maybe (Boolean) , "PrivacyProtectRegistrantContact" :: Maybe (Boolean) , "PrivacyProtectTechContact" :: Maybe (Boolean) } ) -> TransferDomainRequest
newTransferDomainRequest' _AdminContact _DomainName _DurationInYears _RegistrantContact _TechContact customize = (TransferDomainRequest <<< customize) { "AdminContact": _AdminContact, "DomainName": _DomainName, "DurationInYears": _DurationInYears, "RegistrantContact": _RegistrantContact, "TechContact": _TechContact, "AuthCode": Nothing, "AutoRenew": Nothing, "IdnLangCode": Nothing, "Nameservers": Nothing, "PrivacyProtectAdminContact": Nothing, "PrivacyProtectRegistrantContact": Nothing, "PrivacyProtectTechContact": Nothing }



-- | <p>The TranserDomain response includes the following element.</p>
newtype TransferDomainResponse = TransferDomainResponse 
  { "OperationId" :: (OperationId)
  }
derive instance newtypeTransferDomainResponse :: Newtype TransferDomainResponse _
derive instance repGenericTransferDomainResponse :: Generic TransferDomainResponse _
instance showTransferDomainResponse :: Show TransferDomainResponse where show = genericShow
instance decodeTransferDomainResponse :: Decode TransferDomainResponse where decode = genericDecode options
instance encodeTransferDomainResponse :: Encode TransferDomainResponse where encode = genericEncode options

-- | Constructs TransferDomainResponse from required parameters
newTransferDomainResponse :: OperationId -> TransferDomainResponse
newTransferDomainResponse _OperationId = TransferDomainResponse { "OperationId": _OperationId }

-- | Constructs TransferDomainResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTransferDomainResponse' :: OperationId -> ( { "OperationId" :: (OperationId) } -> {"OperationId" :: (OperationId) } ) -> TransferDomainResponse
newTransferDomainResponse' _OperationId customize = (TransferDomainResponse <<< customize) { "OperationId": _OperationId }



-- | <p>Whether the domain name can be transferred to Amazon Route 53.</p> <note> <p>You can transfer only domains that have a value of <code>TRANSFERABLE</code> for <code>Transferable</code>.</p> </note> <p>Valid values:</p> <dl> <dt>TRANSFERABLE</dt> <dd> <p>The domain name can be transferred to Amazon Route 53.</p> </dd> <dt>UNTRANSFERRABLE</dt> <dd> <p>The domain name can't be transferred to Amazon Route 53.</p> </dd> <dt>DONT_KNOW</dt> <dd> <p>Reserved for future use.</p> </dd> </dl>
newtype Transferable = Transferable String
derive instance newtypeTransferable :: Newtype Transferable _
derive instance repGenericTransferable :: Generic Transferable _
instance showTransferable :: Show Transferable where show = genericShow
instance decodeTransferable :: Decode Transferable where decode = genericDecode options
instance encodeTransferable :: Encode Transferable where encode = genericEncode options



-- | <p>Amazon Route 53 does not support this top-level domain (TLD).</p>
newtype UnsupportedTLD = UnsupportedTLD 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeUnsupportedTLD :: Newtype UnsupportedTLD _
derive instance repGenericUnsupportedTLD :: Generic UnsupportedTLD _
instance showUnsupportedTLD :: Show UnsupportedTLD where show = genericShow
instance decodeUnsupportedTLD :: Decode UnsupportedTLD where decode = genericDecode options
instance encodeUnsupportedTLD :: Encode UnsupportedTLD where encode = genericEncode options

-- | Constructs UnsupportedTLD from required parameters
newUnsupportedTLD :: UnsupportedTLD
newUnsupportedTLD  = UnsupportedTLD { "message": Nothing }

-- | Constructs UnsupportedTLD's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsupportedTLD' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> UnsupportedTLD
newUnsupportedTLD'  customize = (UnsupportedTLD <<< customize) { "message": Nothing }



-- | <p>The UpdateDomainContactPrivacy request includes the following elements.</p>
newtype UpdateDomainContactPrivacyRequest = UpdateDomainContactPrivacyRequest 
  { "DomainName" :: (DomainName)
  , "AdminPrivacy" :: Maybe (Boolean)
  , "RegistrantPrivacy" :: Maybe (Boolean)
  , "TechPrivacy" :: Maybe (Boolean)
  }
derive instance newtypeUpdateDomainContactPrivacyRequest :: Newtype UpdateDomainContactPrivacyRequest _
derive instance repGenericUpdateDomainContactPrivacyRequest :: Generic UpdateDomainContactPrivacyRequest _
instance showUpdateDomainContactPrivacyRequest :: Show UpdateDomainContactPrivacyRequest where show = genericShow
instance decodeUpdateDomainContactPrivacyRequest :: Decode UpdateDomainContactPrivacyRequest where decode = genericDecode options
instance encodeUpdateDomainContactPrivacyRequest :: Encode UpdateDomainContactPrivacyRequest where encode = genericEncode options

-- | Constructs UpdateDomainContactPrivacyRequest from required parameters
newUpdateDomainContactPrivacyRequest :: DomainName -> UpdateDomainContactPrivacyRequest
newUpdateDomainContactPrivacyRequest _DomainName = UpdateDomainContactPrivacyRequest { "DomainName": _DomainName, "AdminPrivacy": Nothing, "RegistrantPrivacy": Nothing, "TechPrivacy": Nothing }

-- | Constructs UpdateDomainContactPrivacyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDomainContactPrivacyRequest' :: DomainName -> ( { "DomainName" :: (DomainName) , "AdminPrivacy" :: Maybe (Boolean) , "RegistrantPrivacy" :: Maybe (Boolean) , "TechPrivacy" :: Maybe (Boolean) } -> {"DomainName" :: (DomainName) , "AdminPrivacy" :: Maybe (Boolean) , "RegistrantPrivacy" :: Maybe (Boolean) , "TechPrivacy" :: Maybe (Boolean) } ) -> UpdateDomainContactPrivacyRequest
newUpdateDomainContactPrivacyRequest' _DomainName customize = (UpdateDomainContactPrivacyRequest <<< customize) { "DomainName": _DomainName, "AdminPrivacy": Nothing, "RegistrantPrivacy": Nothing, "TechPrivacy": Nothing }



-- | <p>The UpdateDomainContactPrivacy response includes the following element.</p>
newtype UpdateDomainContactPrivacyResponse = UpdateDomainContactPrivacyResponse 
  { "OperationId" :: (OperationId)
  }
derive instance newtypeUpdateDomainContactPrivacyResponse :: Newtype UpdateDomainContactPrivacyResponse _
derive instance repGenericUpdateDomainContactPrivacyResponse :: Generic UpdateDomainContactPrivacyResponse _
instance showUpdateDomainContactPrivacyResponse :: Show UpdateDomainContactPrivacyResponse where show = genericShow
instance decodeUpdateDomainContactPrivacyResponse :: Decode UpdateDomainContactPrivacyResponse where decode = genericDecode options
instance encodeUpdateDomainContactPrivacyResponse :: Encode UpdateDomainContactPrivacyResponse where encode = genericEncode options

-- | Constructs UpdateDomainContactPrivacyResponse from required parameters
newUpdateDomainContactPrivacyResponse :: OperationId -> UpdateDomainContactPrivacyResponse
newUpdateDomainContactPrivacyResponse _OperationId = UpdateDomainContactPrivacyResponse { "OperationId": _OperationId }

-- | Constructs UpdateDomainContactPrivacyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDomainContactPrivacyResponse' :: OperationId -> ( { "OperationId" :: (OperationId) } -> {"OperationId" :: (OperationId) } ) -> UpdateDomainContactPrivacyResponse
newUpdateDomainContactPrivacyResponse' _OperationId customize = (UpdateDomainContactPrivacyResponse <<< customize) { "OperationId": _OperationId }



-- | <p>The UpdateDomainContact request includes the following elements.</p>
newtype UpdateDomainContactRequest = UpdateDomainContactRequest 
  { "DomainName" :: (DomainName)
  , "AdminContact" :: Maybe (ContactDetail)
  , "RegistrantContact" :: Maybe (ContactDetail)
  , "TechContact" :: Maybe (ContactDetail)
  }
derive instance newtypeUpdateDomainContactRequest :: Newtype UpdateDomainContactRequest _
derive instance repGenericUpdateDomainContactRequest :: Generic UpdateDomainContactRequest _
instance showUpdateDomainContactRequest :: Show UpdateDomainContactRequest where show = genericShow
instance decodeUpdateDomainContactRequest :: Decode UpdateDomainContactRequest where decode = genericDecode options
instance encodeUpdateDomainContactRequest :: Encode UpdateDomainContactRequest where encode = genericEncode options

-- | Constructs UpdateDomainContactRequest from required parameters
newUpdateDomainContactRequest :: DomainName -> UpdateDomainContactRequest
newUpdateDomainContactRequest _DomainName = UpdateDomainContactRequest { "DomainName": _DomainName, "AdminContact": Nothing, "RegistrantContact": Nothing, "TechContact": Nothing }

-- | Constructs UpdateDomainContactRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDomainContactRequest' :: DomainName -> ( { "DomainName" :: (DomainName) , "AdminContact" :: Maybe (ContactDetail) , "RegistrantContact" :: Maybe (ContactDetail) , "TechContact" :: Maybe (ContactDetail) } -> {"DomainName" :: (DomainName) , "AdminContact" :: Maybe (ContactDetail) , "RegistrantContact" :: Maybe (ContactDetail) , "TechContact" :: Maybe (ContactDetail) } ) -> UpdateDomainContactRequest
newUpdateDomainContactRequest' _DomainName customize = (UpdateDomainContactRequest <<< customize) { "DomainName": _DomainName, "AdminContact": Nothing, "RegistrantContact": Nothing, "TechContact": Nothing }



-- | <p>The UpdateDomainContact response includes the following element.</p>
newtype UpdateDomainContactResponse = UpdateDomainContactResponse 
  { "OperationId" :: (OperationId)
  }
derive instance newtypeUpdateDomainContactResponse :: Newtype UpdateDomainContactResponse _
derive instance repGenericUpdateDomainContactResponse :: Generic UpdateDomainContactResponse _
instance showUpdateDomainContactResponse :: Show UpdateDomainContactResponse where show = genericShow
instance decodeUpdateDomainContactResponse :: Decode UpdateDomainContactResponse where decode = genericDecode options
instance encodeUpdateDomainContactResponse :: Encode UpdateDomainContactResponse where encode = genericEncode options

-- | Constructs UpdateDomainContactResponse from required parameters
newUpdateDomainContactResponse :: OperationId -> UpdateDomainContactResponse
newUpdateDomainContactResponse _OperationId = UpdateDomainContactResponse { "OperationId": _OperationId }

-- | Constructs UpdateDomainContactResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDomainContactResponse' :: OperationId -> ( { "OperationId" :: (OperationId) } -> {"OperationId" :: (OperationId) } ) -> UpdateDomainContactResponse
newUpdateDomainContactResponse' _OperationId customize = (UpdateDomainContactResponse <<< customize) { "OperationId": _OperationId }



-- | <p>Replaces the current set of name servers for the domain with the specified set of name servers. If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain.</p> <p>If successful, this operation returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email. </p>
newtype UpdateDomainNameserversRequest = UpdateDomainNameserversRequest 
  { "DomainName" :: (DomainName)
  , "FIAuthKey" :: Maybe (FIAuthKey)
  , "Nameservers" :: (NameserverList)
  }
derive instance newtypeUpdateDomainNameserversRequest :: Newtype UpdateDomainNameserversRequest _
derive instance repGenericUpdateDomainNameserversRequest :: Generic UpdateDomainNameserversRequest _
instance showUpdateDomainNameserversRequest :: Show UpdateDomainNameserversRequest where show = genericShow
instance decodeUpdateDomainNameserversRequest :: Decode UpdateDomainNameserversRequest where decode = genericDecode options
instance encodeUpdateDomainNameserversRequest :: Encode UpdateDomainNameserversRequest where encode = genericEncode options

-- | Constructs UpdateDomainNameserversRequest from required parameters
newUpdateDomainNameserversRequest :: DomainName -> NameserverList -> UpdateDomainNameserversRequest
newUpdateDomainNameserversRequest _DomainName _Nameservers = UpdateDomainNameserversRequest { "DomainName": _DomainName, "Nameservers": _Nameservers, "FIAuthKey": Nothing }

-- | Constructs UpdateDomainNameserversRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDomainNameserversRequest' :: DomainName -> NameserverList -> ( { "DomainName" :: (DomainName) , "FIAuthKey" :: Maybe (FIAuthKey) , "Nameservers" :: (NameserverList) } -> {"DomainName" :: (DomainName) , "FIAuthKey" :: Maybe (FIAuthKey) , "Nameservers" :: (NameserverList) } ) -> UpdateDomainNameserversRequest
newUpdateDomainNameserversRequest' _DomainName _Nameservers customize = (UpdateDomainNameserversRequest <<< customize) { "DomainName": _DomainName, "Nameservers": _Nameservers, "FIAuthKey": Nothing }



-- | <p>The UpdateDomainNameservers response includes the following element.</p>
newtype UpdateDomainNameserversResponse = UpdateDomainNameserversResponse 
  { "OperationId" :: (OperationId)
  }
derive instance newtypeUpdateDomainNameserversResponse :: Newtype UpdateDomainNameserversResponse _
derive instance repGenericUpdateDomainNameserversResponse :: Generic UpdateDomainNameserversResponse _
instance showUpdateDomainNameserversResponse :: Show UpdateDomainNameserversResponse where show = genericShow
instance decodeUpdateDomainNameserversResponse :: Decode UpdateDomainNameserversResponse where decode = genericDecode options
instance encodeUpdateDomainNameserversResponse :: Encode UpdateDomainNameserversResponse where encode = genericEncode options

-- | Constructs UpdateDomainNameserversResponse from required parameters
newUpdateDomainNameserversResponse :: OperationId -> UpdateDomainNameserversResponse
newUpdateDomainNameserversResponse _OperationId = UpdateDomainNameserversResponse { "OperationId": _OperationId }

-- | Constructs UpdateDomainNameserversResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDomainNameserversResponse' :: OperationId -> ( { "OperationId" :: (OperationId) } -> {"OperationId" :: (OperationId) } ) -> UpdateDomainNameserversResponse
newUpdateDomainNameserversResponse' _OperationId customize = (UpdateDomainNameserversResponse <<< customize) { "OperationId": _OperationId }



-- | <p>The UpdateTagsForDomainRequest includes the following elements.</p>
newtype UpdateTagsForDomainRequest = UpdateTagsForDomainRequest 
  { "DomainName" :: (DomainName)
  , "TagsToUpdate" :: Maybe (TagList)
  }
derive instance newtypeUpdateTagsForDomainRequest :: Newtype UpdateTagsForDomainRequest _
derive instance repGenericUpdateTagsForDomainRequest :: Generic UpdateTagsForDomainRequest _
instance showUpdateTagsForDomainRequest :: Show UpdateTagsForDomainRequest where show = genericShow
instance decodeUpdateTagsForDomainRequest :: Decode UpdateTagsForDomainRequest where decode = genericDecode options
instance encodeUpdateTagsForDomainRequest :: Encode UpdateTagsForDomainRequest where encode = genericEncode options

-- | Constructs UpdateTagsForDomainRequest from required parameters
newUpdateTagsForDomainRequest :: DomainName -> UpdateTagsForDomainRequest
newUpdateTagsForDomainRequest _DomainName = UpdateTagsForDomainRequest { "DomainName": _DomainName, "TagsToUpdate": Nothing }

-- | Constructs UpdateTagsForDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateTagsForDomainRequest' :: DomainName -> ( { "DomainName" :: (DomainName) , "TagsToUpdate" :: Maybe (TagList) } -> {"DomainName" :: (DomainName) , "TagsToUpdate" :: Maybe (TagList) } ) -> UpdateTagsForDomainRequest
newUpdateTagsForDomainRequest' _DomainName customize = (UpdateTagsForDomainRequest <<< customize) { "DomainName": _DomainName, "TagsToUpdate": Nothing }



newtype UpdateTagsForDomainResponse = UpdateTagsForDomainResponse Types.NoArguments
derive instance newtypeUpdateTagsForDomainResponse :: Newtype UpdateTagsForDomainResponse _
derive instance repGenericUpdateTagsForDomainResponse :: Generic UpdateTagsForDomainResponse _
instance showUpdateTagsForDomainResponse :: Show UpdateTagsForDomainResponse where show = genericShow
instance decodeUpdateTagsForDomainResponse :: Decode UpdateTagsForDomainResponse where decode = genericDecode options
instance encodeUpdateTagsForDomainResponse :: Encode UpdateTagsForDomainResponse where encode = genericEncode options



-- | <p>The ViewBilling request includes the following elements.</p>
newtype ViewBillingRequest = ViewBillingRequest 
  { "Start" :: Maybe (Types.Timestamp)
  , "End" :: Maybe (Types.Timestamp)
  , "Marker" :: Maybe (PageMarker)
  , "MaxItems" :: Maybe (PageMaxItems)
  }
derive instance newtypeViewBillingRequest :: Newtype ViewBillingRequest _
derive instance repGenericViewBillingRequest :: Generic ViewBillingRequest _
instance showViewBillingRequest :: Show ViewBillingRequest where show = genericShow
instance decodeViewBillingRequest :: Decode ViewBillingRequest where decode = genericDecode options
instance encodeViewBillingRequest :: Encode ViewBillingRequest where encode = genericEncode options

-- | Constructs ViewBillingRequest from required parameters
newViewBillingRequest :: ViewBillingRequest
newViewBillingRequest  = ViewBillingRequest { "End": Nothing, "Marker": Nothing, "MaxItems": Nothing, "Start": Nothing }

-- | Constructs ViewBillingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newViewBillingRequest' :: ( { "Start" :: Maybe (Types.Timestamp) , "End" :: Maybe (Types.Timestamp) , "Marker" :: Maybe (PageMarker) , "MaxItems" :: Maybe (PageMaxItems) } -> {"Start" :: Maybe (Types.Timestamp) , "End" :: Maybe (Types.Timestamp) , "Marker" :: Maybe (PageMarker) , "MaxItems" :: Maybe (PageMaxItems) } ) -> ViewBillingRequest
newViewBillingRequest'  customize = (ViewBillingRequest <<< customize) { "End": Nothing, "Marker": Nothing, "MaxItems": Nothing, "Start": Nothing }



-- | <p>The ViewBilling response includes the following elements.</p>
newtype ViewBillingResponse = ViewBillingResponse 
  { "NextPageMarker" :: Maybe (PageMarker)
  , "BillingRecords" :: Maybe (BillingRecords)
  }
derive instance newtypeViewBillingResponse :: Newtype ViewBillingResponse _
derive instance repGenericViewBillingResponse :: Generic ViewBillingResponse _
instance showViewBillingResponse :: Show ViewBillingResponse where show = genericShow
instance decodeViewBillingResponse :: Decode ViewBillingResponse where decode = genericDecode options
instance encodeViewBillingResponse :: Encode ViewBillingResponse where encode = genericEncode options

-- | Constructs ViewBillingResponse from required parameters
newViewBillingResponse :: ViewBillingResponse
newViewBillingResponse  = ViewBillingResponse { "BillingRecords": Nothing, "NextPageMarker": Nothing }

-- | Constructs ViewBillingResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newViewBillingResponse' :: ( { "NextPageMarker" :: Maybe (PageMarker) , "BillingRecords" :: Maybe (BillingRecords) } -> {"NextPageMarker" :: Maybe (PageMarker) , "BillingRecords" :: Maybe (BillingRecords) } ) -> ViewBillingResponse
newViewBillingResponse'  customize = (ViewBillingResponse <<< customize) { "BillingRecords": Nothing, "NextPageMarker": Nothing }



newtype ZipCode = ZipCode String
derive instance newtypeZipCode :: Newtype ZipCode _
derive instance repGenericZipCode :: Generic ZipCode _
instance showZipCode :: Show ZipCode where show = genericShow
instance decodeZipCode :: Decode ZipCode where decode = genericDecode options
instance encodeZipCode :: Encode ZipCode where encode = genericEncode options

