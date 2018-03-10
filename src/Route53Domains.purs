

-- | <p>Amazon Route 53 API actions let you register domain names and perform related operations.</p>
module AWS.Route53Domains where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "Route53Domains" :: String


-- | <p>This operation checks the availability of one domain name. Note that if the availability status of a domain is pending, you must submit another request to determine the availability of the domain name.</p>
checkDomainAvailability :: forall eff. CheckDomainAvailabilityRequest -> Aff (exception :: EXCEPTION | eff) CheckDomainAvailabilityResponse
checkDomainAvailability = Request.request serviceName "checkDomainAvailability" 


-- | <p>Checks whether a domain name can be transferred to Amazon Route 53. </p>
checkDomainTransferability :: forall eff. CheckDomainTransferabilityRequest -> Aff (exception :: EXCEPTION | eff) CheckDomainTransferabilityResponse
checkDomainTransferability = Request.request serviceName "checkDomainTransferability" 


-- | <p>This operation deletes the specified tags for a domain.</p> <p>All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.</p>
deleteTagsForDomain :: forall eff. DeleteTagsForDomainRequest -> Aff (exception :: EXCEPTION | eff) DeleteTagsForDomainResponse
deleteTagsForDomain = Request.request serviceName "deleteTagsForDomain" 


-- | <p>This operation disables automatic renewal of domain registration for the specified domain.</p>
disableDomainAutoRenew :: forall eff. DisableDomainAutoRenewRequest -> Aff (exception :: EXCEPTION | eff) DisableDomainAutoRenewResponse
disableDomainAutoRenew = Request.request serviceName "disableDomainAutoRenew" 


-- | <p>This operation removes the transfer lock on the domain (specifically the <code>clientTransferProhibited</code> status) to allow domain transfers. We recommend you refrain from performing this action unless you intend to transfer the domain to a different registrar. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>
disableDomainTransferLock :: forall eff. DisableDomainTransferLockRequest -> Aff (exception :: EXCEPTION | eff) DisableDomainTransferLockResponse
disableDomainTransferLock = Request.request serviceName "disableDomainTransferLock" 


-- | <p>This operation configures Amazon Route 53 to automatically renew the specified domain before the domain registration expires. The cost of renewing your domain registration is billed to your AWS account.</p> <p>The period during which you can renew a domain name varies by TLD. For a list of TLDs and their renewal policies, see <a href="http://wiki.gandi.net/en/domains/renew#renewal_restoration_and_deletion_times">"Renewal, restoration, and deletion times"</a> on the website for our registrar partner, Gandi. Route 53 requires that you renew before the end of the renewal period that is listed on the Gandi website so we can complete processing before the deadline.</p>
enableDomainAutoRenew :: forall eff. EnableDomainAutoRenewRequest -> Aff (exception :: EXCEPTION | eff) EnableDomainAutoRenewResponse
enableDomainAutoRenew = Request.request serviceName "enableDomainAutoRenew" 


-- | <p>This operation sets the transfer lock on the domain (specifically the <code>clientTransferProhibited</code> status) to prevent domain transfers. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>
enableDomainTransferLock :: forall eff. EnableDomainTransferLockRequest -> Aff (exception :: EXCEPTION | eff) EnableDomainTransferLockResponse
enableDomainTransferLock = Request.request serviceName "enableDomainTransferLock" 


-- | <p>For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation returns information about whether the registrant contact has responded.</p> <p>If you want us to resend the email, use the <code>ResendContactReachabilityEmail</code> operation.</p>
getContactReachabilityStatus :: forall eff. GetContactReachabilityStatusRequest -> Aff (exception :: EXCEPTION | eff) GetContactReachabilityStatusResponse
getContactReachabilityStatus = Request.request serviceName "getContactReachabilityStatus" 


-- | <p>This operation returns detailed information about a specified domain that is associated with the current AWS account. Contact information for the domain is also returned as part of the output.</p>
getDomainDetail :: forall eff. GetDomainDetailRequest -> Aff (exception :: EXCEPTION | eff) GetDomainDetailResponse
getDomainDetail = Request.request serviceName "getDomainDetail" 


-- | <p>The GetDomainSuggestions operation returns a list of suggested domain names given a string, which can either be a domain name or simply a word or phrase (without spaces).</p>
getDomainSuggestions :: forall eff. GetDomainSuggestionsRequest -> Aff (exception :: EXCEPTION | eff) GetDomainSuggestionsResponse
getDomainSuggestions = Request.request serviceName "getDomainSuggestions" 


-- | <p>This operation returns the current status of an operation that is not completed.</p>
getOperationDetail :: forall eff. GetOperationDetailRequest -> Aff (exception :: EXCEPTION | eff) GetOperationDetailResponse
getOperationDetail = Request.request serviceName "getOperationDetail" 


-- | <p>This operation returns all the domain names registered with Amazon Route 53 for the current AWS account.</p>
listDomains :: forall eff. ListDomainsRequest -> Aff (exception :: EXCEPTION | eff) ListDomainsResponse
listDomains = Request.request serviceName "listDomains" 


-- | <p>This operation returns the operation IDs of operations that are not yet complete.</p>
listOperations :: forall eff. ListOperationsRequest -> Aff (exception :: EXCEPTION | eff) ListOperationsResponse
listOperations = Request.request serviceName "listOperations" 


-- | <p>This operation returns all of the tags that are associated with the specified domain.</p> <p>All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.</p>
listTagsForDomain :: forall eff. ListTagsForDomainRequest -> Aff (exception :: EXCEPTION | eff) ListTagsForDomainResponse
listTagsForDomain = Request.request serviceName "listTagsForDomain" 


-- | <p>This operation registers a domain. Domains are registered by the AWS registrar partner, Gandi. For some top-level domains (TLDs), this operation requires extra parameters.</p> <p>When you register a domain, Amazon Route 53 does the following:</p> <ul> <li> <p>Creates a Amazon Route 53 hosted zone that has the same name as the domain. Amazon Route 53 assigns four name servers to your hosted zone and automatically updates your domain registration with the names of these name servers.</p> </li> <li> <p>Enables autorenew, so your domain registration will renew automatically each year. We'll notify you in advance of the renewal date so you can choose whether to renew the registration.</p> </li> <li> <p>Optionally enables privacy protection, so WHOIS queries return contact information for our registrar partner, Gandi, instead of the information you entered for registrant, admin, and tech contacts.</p> </li> <li> <p>If registration is successful, returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant is notified by email.</p> </li> <li> <p>Charges your AWS account an amount based on the top-level domain. For more information, see <a href="http://aws.amazon.com/route53/pricing/">Amazon Route 53 Pricing</a>.</p> </li> </ul>
registerDomain :: forall eff. RegisterDomainRequest -> Aff (exception :: EXCEPTION | eff) RegisterDomainResponse
registerDomain = Request.request serviceName "registerDomain" 


-- | <p>This operation renews a domain for the specified number of years. The cost of renewing your domain is billed to your AWS account.</p> <p>We recommend that you renew your domain several weeks before the expiration date. Some TLD registries delete domains before the expiration date if you haven't renewed far enough in advance. For more information about renewing domain registration, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html">Renewing Registration for a Domain</a> in the Amazon Route 53 Developer Guide.</p>
renewDomain :: forall eff. RenewDomainRequest -> Aff (exception :: EXCEPTION | eff) RenewDomainResponse
renewDomain = Request.request serviceName "renewDomain" 


-- | <p>For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact.</p>
resendContactReachabilityEmail :: forall eff. ResendContactReachabilityEmailRequest -> Aff (exception :: EXCEPTION | eff) ResendContactReachabilityEmailResponse
resendContactReachabilityEmail = Request.request serviceName "resendContactReachabilityEmail" 


-- | <p>This operation returns the AuthCode for the domain. To transfer a domain to another registrar, you provide this value to the new registrar.</p>
retrieveDomainAuthCode :: forall eff. RetrieveDomainAuthCodeRequest -> Aff (exception :: EXCEPTION | eff) RetrieveDomainAuthCodeResponse
retrieveDomainAuthCode = Request.request serviceName "retrieveDomainAuthCode" 


-- | <p>This operation transfers a domain from another registrar to Amazon Route 53. When the transfer is complete, the domain is registered with the AWS registrar partner, Gandi.</p> <p>For transfer requirements, a detailed procedure, and information about viewing the status of a domain transfer, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html">Transferring Registration for a Domain to Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>If the registrar for your domain is also the DNS service provider for the domain, we highly recommend that you consider transferring your DNS service to Amazon Route 53 or to another DNS service provider before you transfer your registration. Some registrars provide free DNS service when you purchase a domain registration. When you transfer the registration, the previous registrar will not renew your domain registration and could end your DNS service at any time.</p> <important> <p>If the registrar for your domain is also the DNS service provider for the domain and you don't transfer DNS service to another provider, your website, email, and the web applications associated with the domain might become unavailable.</p> </important> <p>If the transfer is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the transfer doesn't complete successfully, the domain registrant will be notified by email.</p>
transferDomain :: forall eff. TransferDomainRequest -> Aff (exception :: EXCEPTION | eff) TransferDomainResponse
transferDomain = Request.request serviceName "transferDomain" 


-- | <p>This operation updates the contact information for a particular domain. Information for at least one contact (registrant, administrator, or technical) must be supplied for update.</p> <p>If the update is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>
updateDomainContact :: forall eff. UpdateDomainContactRequest -> Aff (exception :: EXCEPTION | eff) UpdateDomainContactResponse
updateDomainContact = Request.request serviceName "updateDomainContact" 


-- | <p>This operation updates the specified domain contact's privacy setting. When the privacy option is enabled, personal information such as postal or email address is hidden from the results of a public WHOIS query. The privacy services are provided by the AWS registrar, Gandi. For more information, see the <a href="http://www.gandi.net/domain/whois/?currency=USD&amp;amp;lang=en">Gandi privacy features</a>.</p> <p>This operation only affects the privacy of the specified contact type (registrant, administrator, or tech). Successful acceptance returns an operation ID that you can use with <a>GetOperationDetail</a> to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>
updateDomainContactPrivacy :: forall eff. UpdateDomainContactPrivacyRequest -> Aff (exception :: EXCEPTION | eff) UpdateDomainContactPrivacyResponse
updateDomainContactPrivacy = Request.request serviceName "updateDomainContactPrivacy" 


-- | <p>This operation replaces the current set of name servers for the domain with the specified set of name servers. If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain.</p> <p>If successful, this operation returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>
updateDomainNameservers :: forall eff. UpdateDomainNameserversRequest -> Aff (exception :: EXCEPTION | eff) UpdateDomainNameserversResponse
updateDomainNameservers = Request.request serviceName "updateDomainNameservers" 


-- | <p>This operation adds or updates tags for a specified domain.</p> <p>All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.</p>
updateTagsForDomain :: forall eff. UpdateTagsForDomainRequest -> Aff (exception :: EXCEPTION | eff) UpdateTagsForDomainResponse
updateTagsForDomain = Request.request serviceName "updateTagsForDomain" 


-- | <p>Returns all the domain-related billing records for the current AWS account for a specified period</p>
viewBilling :: forall eff. ViewBillingRequest -> Aff (exception :: EXCEPTION | eff) ViewBillingResponse
viewBilling = Request.request serviceName "viewBilling" 


newtype AddressLine = AddressLine String
derive instance newtypeAddressLine :: Newtype AddressLine _
derive instance repGenericAddressLine :: Generic AddressLine _
instance showAddressLine :: Show AddressLine where
  show = genericShow
instance decodeAddressLine :: Decode AddressLine where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAddressLine :: Encode AddressLine where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Information for one billing record.</p>
newtype BillingRecord = BillingRecord 
  { "DomainName" :: NullOrUndefined.NullOrUndefined (DomainName)
  , "Operation" :: NullOrUndefined.NullOrUndefined (OperationType)
  , "InvoiceId" :: NullOrUndefined.NullOrUndefined (InvoiceId)
  , "BillDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "Price" :: NullOrUndefined.NullOrUndefined (Price)
  }
derive instance newtypeBillingRecord :: Newtype BillingRecord _
derive instance repGenericBillingRecord :: Generic BillingRecord _
instance showBillingRecord :: Show BillingRecord where
  show = genericShow
instance decodeBillingRecord :: Decode BillingRecord where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBillingRecord :: Encode BillingRecord where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BillingRecord from required parameters
newBillingRecord :: BillingRecord
newBillingRecord  = BillingRecord { "BillDate": (NullOrUndefined Nothing), "DomainName": (NullOrUndefined Nothing), "InvoiceId": (NullOrUndefined Nothing), "Operation": (NullOrUndefined Nothing), "Price": (NullOrUndefined Nothing) }

-- | Constructs BillingRecord's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBillingRecord' :: ( { "DomainName" :: NullOrUndefined.NullOrUndefined (DomainName) , "Operation" :: NullOrUndefined.NullOrUndefined (OperationType) , "InvoiceId" :: NullOrUndefined.NullOrUndefined (InvoiceId) , "BillDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Price" :: NullOrUndefined.NullOrUndefined (Price) } -> {"DomainName" :: NullOrUndefined.NullOrUndefined (DomainName) , "Operation" :: NullOrUndefined.NullOrUndefined (OperationType) , "InvoiceId" :: NullOrUndefined.NullOrUndefined (InvoiceId) , "BillDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Price" :: NullOrUndefined.NullOrUndefined (Price) } ) -> BillingRecord
newBillingRecord'  customize = (BillingRecord <<< customize) { "BillDate": (NullOrUndefined Nothing), "DomainName": (NullOrUndefined Nothing), "InvoiceId": (NullOrUndefined Nothing), "Operation": (NullOrUndefined Nothing), "Price": (NullOrUndefined Nothing) }



newtype BillingRecords = BillingRecords (Array BillingRecord)
derive instance newtypeBillingRecords :: Newtype BillingRecords _
derive instance repGenericBillingRecords :: Generic BillingRecords _
instance showBillingRecords :: Show BillingRecords where
  show = genericShow
instance decodeBillingRecords :: Decode BillingRecords where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBillingRecords :: Encode BillingRecords where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The CheckDomainAvailability request contains the following elements.</p>
newtype CheckDomainAvailabilityRequest = CheckDomainAvailabilityRequest 
  { "DomainName" :: (DomainName)
  , "IdnLangCode" :: NullOrUndefined.NullOrUndefined (LangCode)
  }
derive instance newtypeCheckDomainAvailabilityRequest :: Newtype CheckDomainAvailabilityRequest _
derive instance repGenericCheckDomainAvailabilityRequest :: Generic CheckDomainAvailabilityRequest _
instance showCheckDomainAvailabilityRequest :: Show CheckDomainAvailabilityRequest where
  show = genericShow
instance decodeCheckDomainAvailabilityRequest :: Decode CheckDomainAvailabilityRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCheckDomainAvailabilityRequest :: Encode CheckDomainAvailabilityRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CheckDomainAvailabilityRequest from required parameters
newCheckDomainAvailabilityRequest :: DomainName -> CheckDomainAvailabilityRequest
newCheckDomainAvailabilityRequest _DomainName = CheckDomainAvailabilityRequest { "DomainName": _DomainName, "IdnLangCode": (NullOrUndefined Nothing) }

-- | Constructs CheckDomainAvailabilityRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCheckDomainAvailabilityRequest' :: DomainName -> ( { "DomainName" :: (DomainName) , "IdnLangCode" :: NullOrUndefined.NullOrUndefined (LangCode) } -> {"DomainName" :: (DomainName) , "IdnLangCode" :: NullOrUndefined.NullOrUndefined (LangCode) } ) -> CheckDomainAvailabilityRequest
newCheckDomainAvailabilityRequest' _DomainName customize = (CheckDomainAvailabilityRequest <<< customize) { "DomainName": _DomainName, "IdnLangCode": (NullOrUndefined Nothing) }



-- | <p>The CheckDomainAvailability response includes the following elements.</p>
newtype CheckDomainAvailabilityResponse = CheckDomainAvailabilityResponse 
  { "Availability" :: (DomainAvailability)
  }
derive instance newtypeCheckDomainAvailabilityResponse :: Newtype CheckDomainAvailabilityResponse _
derive instance repGenericCheckDomainAvailabilityResponse :: Generic CheckDomainAvailabilityResponse _
instance showCheckDomainAvailabilityResponse :: Show CheckDomainAvailabilityResponse where
  show = genericShow
instance decodeCheckDomainAvailabilityResponse :: Decode CheckDomainAvailabilityResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCheckDomainAvailabilityResponse :: Encode CheckDomainAvailabilityResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
  , "AuthCode" :: NullOrUndefined.NullOrUndefined (DomainAuthCode)
  }
derive instance newtypeCheckDomainTransferabilityRequest :: Newtype CheckDomainTransferabilityRequest _
derive instance repGenericCheckDomainTransferabilityRequest :: Generic CheckDomainTransferabilityRequest _
instance showCheckDomainTransferabilityRequest :: Show CheckDomainTransferabilityRequest where
  show = genericShow
instance decodeCheckDomainTransferabilityRequest :: Decode CheckDomainTransferabilityRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCheckDomainTransferabilityRequest :: Encode CheckDomainTransferabilityRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CheckDomainTransferabilityRequest from required parameters
newCheckDomainTransferabilityRequest :: DomainName -> CheckDomainTransferabilityRequest
newCheckDomainTransferabilityRequest _DomainName = CheckDomainTransferabilityRequest { "DomainName": _DomainName, "AuthCode": (NullOrUndefined Nothing) }

-- | Constructs CheckDomainTransferabilityRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCheckDomainTransferabilityRequest' :: DomainName -> ( { "DomainName" :: (DomainName) , "AuthCode" :: NullOrUndefined.NullOrUndefined (DomainAuthCode) } -> {"DomainName" :: (DomainName) , "AuthCode" :: NullOrUndefined.NullOrUndefined (DomainAuthCode) } ) -> CheckDomainTransferabilityRequest
newCheckDomainTransferabilityRequest' _DomainName customize = (CheckDomainTransferabilityRequest <<< customize) { "DomainName": _DomainName, "AuthCode": (NullOrUndefined Nothing) }



-- | <p>The CheckDomainTransferability response includes the following elements.</p>
newtype CheckDomainTransferabilityResponse = CheckDomainTransferabilityResponse 
  { "Transferability" :: (DomainTransferability)
  }
derive instance newtypeCheckDomainTransferabilityResponse :: Newtype CheckDomainTransferabilityResponse _
derive instance repGenericCheckDomainTransferabilityResponse :: Generic CheckDomainTransferabilityResponse _
instance showCheckDomainTransferabilityResponse :: Show CheckDomainTransferabilityResponse where
  show = genericShow
instance decodeCheckDomainTransferabilityResponse :: Decode CheckDomainTransferabilityResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCheckDomainTransferabilityResponse :: Encode CheckDomainTransferabilityResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showCity :: Show City where
  show = genericShow
instance decodeCity :: Decode City where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCity :: Encode City where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>ContactDetail includes the following elements.</p>
newtype ContactDetail = ContactDetail 
  { "FirstName" :: NullOrUndefined.NullOrUndefined (ContactName)
  , "LastName" :: NullOrUndefined.NullOrUndefined (ContactName)
  , "ContactType" :: NullOrUndefined.NullOrUndefined (ContactType)
  , "OrganizationName" :: NullOrUndefined.NullOrUndefined (ContactName)
  , "AddressLine1" :: NullOrUndefined.NullOrUndefined (AddressLine)
  , "AddressLine2" :: NullOrUndefined.NullOrUndefined (AddressLine)
  , "City" :: NullOrUndefined.NullOrUndefined (City)
  , "State" :: NullOrUndefined.NullOrUndefined (State)
  , "CountryCode" :: NullOrUndefined.NullOrUndefined (CountryCode)
  , "ZipCode" :: NullOrUndefined.NullOrUndefined (ZipCode)
  , "PhoneNumber" :: NullOrUndefined.NullOrUndefined (ContactNumber)
  , "Email" :: NullOrUndefined.NullOrUndefined (Email)
  , "Fax" :: NullOrUndefined.NullOrUndefined (ContactNumber)
  , "ExtraParams" :: NullOrUndefined.NullOrUndefined (ExtraParamList)
  }
derive instance newtypeContactDetail :: Newtype ContactDetail _
derive instance repGenericContactDetail :: Generic ContactDetail _
instance showContactDetail :: Show ContactDetail where
  show = genericShow
instance decodeContactDetail :: Decode ContactDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContactDetail :: Encode ContactDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ContactDetail from required parameters
newContactDetail :: ContactDetail
newContactDetail  = ContactDetail { "AddressLine1": (NullOrUndefined Nothing), "AddressLine2": (NullOrUndefined Nothing), "City": (NullOrUndefined Nothing), "ContactType": (NullOrUndefined Nothing), "CountryCode": (NullOrUndefined Nothing), "Email": (NullOrUndefined Nothing), "ExtraParams": (NullOrUndefined Nothing), "Fax": (NullOrUndefined Nothing), "FirstName": (NullOrUndefined Nothing), "LastName": (NullOrUndefined Nothing), "OrganizationName": (NullOrUndefined Nothing), "PhoneNumber": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing), "ZipCode": (NullOrUndefined Nothing) }

-- | Constructs ContactDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContactDetail' :: ( { "FirstName" :: NullOrUndefined.NullOrUndefined (ContactName) , "LastName" :: NullOrUndefined.NullOrUndefined (ContactName) , "ContactType" :: NullOrUndefined.NullOrUndefined (ContactType) , "OrganizationName" :: NullOrUndefined.NullOrUndefined (ContactName) , "AddressLine1" :: NullOrUndefined.NullOrUndefined (AddressLine) , "AddressLine2" :: NullOrUndefined.NullOrUndefined (AddressLine) , "City" :: NullOrUndefined.NullOrUndefined (City) , "State" :: NullOrUndefined.NullOrUndefined (State) , "CountryCode" :: NullOrUndefined.NullOrUndefined (CountryCode) , "ZipCode" :: NullOrUndefined.NullOrUndefined (ZipCode) , "PhoneNumber" :: NullOrUndefined.NullOrUndefined (ContactNumber) , "Email" :: NullOrUndefined.NullOrUndefined (Email) , "Fax" :: NullOrUndefined.NullOrUndefined (ContactNumber) , "ExtraParams" :: NullOrUndefined.NullOrUndefined (ExtraParamList) } -> {"FirstName" :: NullOrUndefined.NullOrUndefined (ContactName) , "LastName" :: NullOrUndefined.NullOrUndefined (ContactName) , "ContactType" :: NullOrUndefined.NullOrUndefined (ContactType) , "OrganizationName" :: NullOrUndefined.NullOrUndefined (ContactName) , "AddressLine1" :: NullOrUndefined.NullOrUndefined (AddressLine) , "AddressLine2" :: NullOrUndefined.NullOrUndefined (AddressLine) , "City" :: NullOrUndefined.NullOrUndefined (City) , "State" :: NullOrUndefined.NullOrUndefined (State) , "CountryCode" :: NullOrUndefined.NullOrUndefined (CountryCode) , "ZipCode" :: NullOrUndefined.NullOrUndefined (ZipCode) , "PhoneNumber" :: NullOrUndefined.NullOrUndefined (ContactNumber) , "Email" :: NullOrUndefined.NullOrUndefined (Email) , "Fax" :: NullOrUndefined.NullOrUndefined (ContactNumber) , "ExtraParams" :: NullOrUndefined.NullOrUndefined (ExtraParamList) } ) -> ContactDetail
newContactDetail'  customize = (ContactDetail <<< customize) { "AddressLine1": (NullOrUndefined Nothing), "AddressLine2": (NullOrUndefined Nothing), "City": (NullOrUndefined Nothing), "ContactType": (NullOrUndefined Nothing), "CountryCode": (NullOrUndefined Nothing), "Email": (NullOrUndefined Nothing), "ExtraParams": (NullOrUndefined Nothing), "Fax": (NullOrUndefined Nothing), "FirstName": (NullOrUndefined Nothing), "LastName": (NullOrUndefined Nothing), "OrganizationName": (NullOrUndefined Nothing), "PhoneNumber": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing), "ZipCode": (NullOrUndefined Nothing) }



newtype ContactName = ContactName String
derive instance newtypeContactName :: Newtype ContactName _
derive instance repGenericContactName :: Generic ContactName _
instance showContactName :: Show ContactName where
  show = genericShow
instance decodeContactName :: Decode ContactName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContactName :: Encode ContactName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ContactNumber = ContactNumber String
derive instance newtypeContactNumber :: Newtype ContactNumber _
derive instance repGenericContactNumber :: Generic ContactNumber _
instance showContactNumber :: Show ContactNumber where
  show = genericShow
instance decodeContactNumber :: Decode ContactNumber where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContactNumber :: Encode ContactNumber where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ContactType = ContactType String
derive instance newtypeContactType :: Newtype ContactType _
derive instance repGenericContactType :: Generic ContactType _
instance showContactType :: Show ContactType where
  show = genericShow
instance decodeContactType :: Decode ContactType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContactType :: Encode ContactType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CountryCode = CountryCode String
derive instance newtypeCountryCode :: Newtype CountryCode _
derive instance repGenericCountryCode :: Generic CountryCode _
instance showCountryCode :: Show CountryCode where
  show = genericShow
instance decodeCountryCode :: Decode CountryCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCountryCode :: Encode CountryCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CurrentExpiryYear = CurrentExpiryYear Int
derive instance newtypeCurrentExpiryYear :: Newtype CurrentExpiryYear _
derive instance repGenericCurrentExpiryYear :: Generic CurrentExpiryYear _
instance showCurrentExpiryYear :: Show CurrentExpiryYear where
  show = genericShow
instance decodeCurrentExpiryYear :: Decode CurrentExpiryYear where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCurrentExpiryYear :: Encode CurrentExpiryYear where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DNSSec = DNSSec String
derive instance newtypeDNSSec :: Newtype DNSSec _
derive instance repGenericDNSSec :: Generic DNSSec _
instance showDNSSec :: Show DNSSec where
  show = genericShow
instance decodeDNSSec :: Decode DNSSec where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDNSSec :: Encode DNSSec where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The DeleteTagsForDomainRequest includes the following elements.</p>
newtype DeleteTagsForDomainRequest = DeleteTagsForDomainRequest 
  { "DomainName" :: (DomainName)
  , "TagsToDelete" :: (TagKeyList)
  }
derive instance newtypeDeleteTagsForDomainRequest :: Newtype DeleteTagsForDomainRequest _
derive instance repGenericDeleteTagsForDomainRequest :: Generic DeleteTagsForDomainRequest _
instance showDeleteTagsForDomainRequest :: Show DeleteTagsForDomainRequest where
  show = genericShow
instance decodeDeleteTagsForDomainRequest :: Decode DeleteTagsForDomainRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteTagsForDomainRequest :: Encode DeleteTagsForDomainRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDeleteTagsForDomainResponse :: Show DeleteTagsForDomainResponse where
  show = genericShow
instance decodeDeleteTagsForDomainResponse :: Decode DeleteTagsForDomainResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteTagsForDomainResponse :: Encode DeleteTagsForDomainResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DisableDomainAutoRenewRequest = DisableDomainAutoRenewRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeDisableDomainAutoRenewRequest :: Newtype DisableDomainAutoRenewRequest _
derive instance repGenericDisableDomainAutoRenewRequest :: Generic DisableDomainAutoRenewRequest _
instance showDisableDomainAutoRenewRequest :: Show DisableDomainAutoRenewRequest where
  show = genericShow
instance decodeDisableDomainAutoRenewRequest :: Decode DisableDomainAutoRenewRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisableDomainAutoRenewRequest :: Encode DisableDomainAutoRenewRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDisableDomainAutoRenewResponse :: Show DisableDomainAutoRenewResponse where
  show = genericShow
instance decodeDisableDomainAutoRenewResponse :: Decode DisableDomainAutoRenewResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisableDomainAutoRenewResponse :: Encode DisableDomainAutoRenewResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The DisableDomainTransferLock request includes the following element.</p>
newtype DisableDomainTransferLockRequest = DisableDomainTransferLockRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeDisableDomainTransferLockRequest :: Newtype DisableDomainTransferLockRequest _
derive instance repGenericDisableDomainTransferLockRequest :: Generic DisableDomainTransferLockRequest _
instance showDisableDomainTransferLockRequest :: Show DisableDomainTransferLockRequest where
  show = genericShow
instance decodeDisableDomainTransferLockRequest :: Decode DisableDomainTransferLockRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisableDomainTransferLockRequest :: Encode DisableDomainTransferLockRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDisableDomainTransferLockResponse :: Show DisableDomainTransferLockResponse where
  show = genericShow
instance decodeDisableDomainTransferLockResponse :: Decode DisableDomainTransferLockResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisableDomainTransferLockResponse :: Encode DisableDomainTransferLockResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDomainAuthCode :: Show DomainAuthCode where
  show = genericShow
instance decodeDomainAuthCode :: Decode DomainAuthCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDomainAuthCode :: Encode DomainAuthCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DomainAvailability = DomainAvailability String
derive instance newtypeDomainAvailability :: Newtype DomainAvailability _
derive instance repGenericDomainAvailability :: Generic DomainAvailability _
instance showDomainAvailability :: Show DomainAvailability where
  show = genericShow
instance decodeDomainAvailability :: Decode DomainAvailability where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDomainAvailability :: Encode DomainAvailability where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The number of domains has exceeded the allowed threshold for the account.</p>
newtype DomainLimitExceeded = DomainLimitExceeded 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeDomainLimitExceeded :: Newtype DomainLimitExceeded _
derive instance repGenericDomainLimitExceeded :: Generic DomainLimitExceeded _
instance showDomainLimitExceeded :: Show DomainLimitExceeded where
  show = genericShow
instance decodeDomainLimitExceeded :: Decode DomainLimitExceeded where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDomainLimitExceeded :: Encode DomainLimitExceeded where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DomainLimitExceeded from required parameters
newDomainLimitExceeded :: DomainLimitExceeded
newDomainLimitExceeded  = DomainLimitExceeded { "message": (NullOrUndefined Nothing) }

-- | Constructs DomainLimitExceeded's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainLimitExceeded' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> DomainLimitExceeded
newDomainLimitExceeded'  customize = (DomainLimitExceeded <<< customize) { "message": (NullOrUndefined Nothing) }



newtype DomainName = DomainName String
derive instance newtypeDomainName :: Newtype DomainName _
derive instance repGenericDomainName :: Generic DomainName _
instance showDomainName :: Show DomainName where
  show = genericShow
instance decodeDomainName :: Decode DomainName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDomainName :: Encode DomainName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DomainStatus = DomainStatus String
derive instance newtypeDomainStatus :: Newtype DomainStatus _
derive instance repGenericDomainStatus :: Generic DomainStatus _
instance showDomainStatus :: Show DomainStatus where
  show = genericShow
instance decodeDomainStatus :: Decode DomainStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDomainStatus :: Encode DomainStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DomainStatusList = DomainStatusList (Array DomainStatus)
derive instance newtypeDomainStatusList :: Newtype DomainStatusList _
derive instance repGenericDomainStatusList :: Generic DomainStatusList _
instance showDomainStatusList :: Show DomainStatusList where
  show = genericShow
instance decodeDomainStatusList :: Decode DomainStatusList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDomainStatusList :: Encode DomainStatusList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Information about one suggested domain name.</p>
newtype DomainSuggestion = DomainSuggestion 
  { "DomainName" :: NullOrUndefined.NullOrUndefined (DomainName)
  , "Availability" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDomainSuggestion :: Newtype DomainSuggestion _
derive instance repGenericDomainSuggestion :: Generic DomainSuggestion _
instance showDomainSuggestion :: Show DomainSuggestion where
  show = genericShow
instance decodeDomainSuggestion :: Decode DomainSuggestion where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDomainSuggestion :: Encode DomainSuggestion where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DomainSuggestion from required parameters
newDomainSuggestion :: DomainSuggestion
newDomainSuggestion  = DomainSuggestion { "Availability": (NullOrUndefined Nothing), "DomainName": (NullOrUndefined Nothing) }

-- | Constructs DomainSuggestion's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainSuggestion' :: ( { "DomainName" :: NullOrUndefined.NullOrUndefined (DomainName) , "Availability" :: NullOrUndefined.NullOrUndefined (String) } -> {"DomainName" :: NullOrUndefined.NullOrUndefined (DomainName) , "Availability" :: NullOrUndefined.NullOrUndefined (String) } ) -> DomainSuggestion
newDomainSuggestion'  customize = (DomainSuggestion <<< customize) { "Availability": (NullOrUndefined Nothing), "DomainName": (NullOrUndefined Nothing) }



newtype DomainSuggestionsList = DomainSuggestionsList (Array DomainSuggestion)
derive instance newtypeDomainSuggestionsList :: Newtype DomainSuggestionsList _
derive instance repGenericDomainSuggestionsList :: Generic DomainSuggestionsList _
instance showDomainSuggestionsList :: Show DomainSuggestionsList where
  show = genericShow
instance decodeDomainSuggestionsList :: Decode DomainSuggestionsList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDomainSuggestionsList :: Encode DomainSuggestionsList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Summary information about one domain.</p>
newtype DomainSummary = DomainSummary 
  { "DomainName" :: (DomainName)
  , "AutoRenew" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "TransferLock" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "Expiry" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeDomainSummary :: Newtype DomainSummary _
derive instance repGenericDomainSummary :: Generic DomainSummary _
instance showDomainSummary :: Show DomainSummary where
  show = genericShow
instance decodeDomainSummary :: Decode DomainSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDomainSummary :: Encode DomainSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DomainSummary from required parameters
newDomainSummary :: DomainName -> DomainSummary
newDomainSummary _DomainName = DomainSummary { "DomainName": _DomainName, "AutoRenew": (NullOrUndefined Nothing), "Expiry": (NullOrUndefined Nothing), "TransferLock": (NullOrUndefined Nothing) }

-- | Constructs DomainSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainSummary' :: DomainName -> ( { "DomainName" :: (DomainName) , "AutoRenew" :: NullOrUndefined.NullOrUndefined (Boolean) , "TransferLock" :: NullOrUndefined.NullOrUndefined (Boolean) , "Expiry" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } -> {"DomainName" :: (DomainName) , "AutoRenew" :: NullOrUndefined.NullOrUndefined (Boolean) , "TransferLock" :: NullOrUndefined.NullOrUndefined (Boolean) , "Expiry" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } ) -> DomainSummary
newDomainSummary' _DomainName customize = (DomainSummary <<< customize) { "DomainName": _DomainName, "AutoRenew": (NullOrUndefined Nothing), "Expiry": (NullOrUndefined Nothing), "TransferLock": (NullOrUndefined Nothing) }



newtype DomainSummaryList = DomainSummaryList (Array DomainSummary)
derive instance newtypeDomainSummaryList :: Newtype DomainSummaryList _
derive instance repGenericDomainSummaryList :: Generic DomainSummaryList _
instance showDomainSummaryList :: Show DomainSummaryList where
  show = genericShow
instance decodeDomainSummaryList :: Decode DomainSummaryList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDomainSummaryList :: Encode DomainSummaryList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DomainTransferability = DomainTransferability 
  { "Transferable" :: NullOrUndefined.NullOrUndefined (Transferable)
  }
derive instance newtypeDomainTransferability :: Newtype DomainTransferability _
derive instance repGenericDomainTransferability :: Generic DomainTransferability _
instance showDomainTransferability :: Show DomainTransferability where
  show = genericShow
instance decodeDomainTransferability :: Decode DomainTransferability where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDomainTransferability :: Encode DomainTransferability where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DomainTransferability from required parameters
newDomainTransferability :: DomainTransferability
newDomainTransferability  = DomainTransferability { "Transferable": (NullOrUndefined Nothing) }

-- | Constructs DomainTransferability's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainTransferability' :: ( { "Transferable" :: NullOrUndefined.NullOrUndefined (Transferable) } -> {"Transferable" :: NullOrUndefined.NullOrUndefined (Transferable) } ) -> DomainTransferability
newDomainTransferability'  customize = (DomainTransferability <<< customize) { "Transferable": (NullOrUndefined Nothing) }



-- | <p>The request is already in progress for the domain.</p>
newtype DuplicateRequest = DuplicateRequest 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeDuplicateRequest :: Newtype DuplicateRequest _
derive instance repGenericDuplicateRequest :: Generic DuplicateRequest _
instance showDuplicateRequest :: Show DuplicateRequest where
  show = genericShow
instance decodeDuplicateRequest :: Decode DuplicateRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDuplicateRequest :: Encode DuplicateRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DuplicateRequest from required parameters
newDuplicateRequest :: DuplicateRequest
newDuplicateRequest  = DuplicateRequest { "message": (NullOrUndefined Nothing) }

-- | Constructs DuplicateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicateRequest' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> DuplicateRequest
newDuplicateRequest'  customize = (DuplicateRequest <<< customize) { "message": (NullOrUndefined Nothing) }



newtype DurationInYears = DurationInYears Int
derive instance newtypeDurationInYears :: Newtype DurationInYears _
derive instance repGenericDurationInYears :: Generic DurationInYears _
instance showDurationInYears :: Show DurationInYears where
  show = genericShow
instance decodeDurationInYears :: Decode DurationInYears where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDurationInYears :: Encode DurationInYears where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Email = Email String
derive instance newtypeEmail :: Newtype Email _
derive instance repGenericEmail :: Generic Email _
instance showEmail :: Show Email where
  show = genericShow
instance decodeEmail :: Decode Email where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEmail :: Encode Email where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EnableDomainAutoRenewRequest = EnableDomainAutoRenewRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeEnableDomainAutoRenewRequest :: Newtype EnableDomainAutoRenewRequest _
derive instance repGenericEnableDomainAutoRenewRequest :: Generic EnableDomainAutoRenewRequest _
instance showEnableDomainAutoRenewRequest :: Show EnableDomainAutoRenewRequest where
  show = genericShow
instance decodeEnableDomainAutoRenewRequest :: Decode EnableDomainAutoRenewRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnableDomainAutoRenewRequest :: Encode EnableDomainAutoRenewRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showEnableDomainAutoRenewResponse :: Show EnableDomainAutoRenewResponse where
  show = genericShow
instance decodeEnableDomainAutoRenewResponse :: Decode EnableDomainAutoRenewResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnableDomainAutoRenewResponse :: Encode EnableDomainAutoRenewResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A request to set the transfer lock for the specified domain.</p>
newtype EnableDomainTransferLockRequest = EnableDomainTransferLockRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeEnableDomainTransferLockRequest :: Newtype EnableDomainTransferLockRequest _
derive instance repGenericEnableDomainTransferLockRequest :: Generic EnableDomainTransferLockRequest _
instance showEnableDomainTransferLockRequest :: Show EnableDomainTransferLockRequest where
  show = genericShow
instance decodeEnableDomainTransferLockRequest :: Decode EnableDomainTransferLockRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnableDomainTransferLockRequest :: Encode EnableDomainTransferLockRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showEnableDomainTransferLockResponse :: Show EnableDomainTransferLockResponse where
  show = genericShow
instance decodeEnableDomainTransferLockResponse :: Decode EnableDomainTransferLockResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnableDomainTransferLockResponse :: Encode EnableDomainTransferLockResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showErrorMessage :: Show ErrorMessage where
  show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage :: Encode ErrorMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>ExtraParam includes the following elements.</p>
newtype ExtraParam = ExtraParam 
  { "Name" :: (ExtraParamName)
  , "Value" :: (ExtraParamValue)
  }
derive instance newtypeExtraParam :: Newtype ExtraParam _
derive instance repGenericExtraParam :: Generic ExtraParam _
instance showExtraParam :: Show ExtraParam where
  show = genericShow
instance decodeExtraParam :: Decode ExtraParam where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExtraParam :: Encode ExtraParam where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showExtraParamList :: Show ExtraParamList where
  show = genericShow
instance decodeExtraParamList :: Decode ExtraParamList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExtraParamList :: Encode ExtraParamList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ExtraParamName = ExtraParamName String
derive instance newtypeExtraParamName :: Newtype ExtraParamName _
derive instance repGenericExtraParamName :: Generic ExtraParamName _
instance showExtraParamName :: Show ExtraParamName where
  show = genericShow
instance decodeExtraParamName :: Decode ExtraParamName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExtraParamName :: Encode ExtraParamName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ExtraParamValue = ExtraParamValue String
derive instance newtypeExtraParamValue :: Newtype ExtraParamValue _
derive instance repGenericExtraParamValue :: Generic ExtraParamValue _
instance showExtraParamValue :: Show ExtraParamValue where
  show = genericShow
instance decodeExtraParamValue :: Decode ExtraParamValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExtraParamValue :: Encode ExtraParamValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype FIAuthKey = FIAuthKey String
derive instance newtypeFIAuthKey :: Newtype FIAuthKey _
derive instance repGenericFIAuthKey :: Generic FIAuthKey _
instance showFIAuthKey :: Show FIAuthKey where
  show = genericShow
instance decodeFIAuthKey :: Decode FIAuthKey where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFIAuthKey :: Encode FIAuthKey where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetContactReachabilityStatusRequest = GetContactReachabilityStatusRequest 
  { "domainName" :: NullOrUndefined.NullOrUndefined (DomainName)
  }
derive instance newtypeGetContactReachabilityStatusRequest :: Newtype GetContactReachabilityStatusRequest _
derive instance repGenericGetContactReachabilityStatusRequest :: Generic GetContactReachabilityStatusRequest _
instance showGetContactReachabilityStatusRequest :: Show GetContactReachabilityStatusRequest where
  show = genericShow
instance decodeGetContactReachabilityStatusRequest :: Decode GetContactReachabilityStatusRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetContactReachabilityStatusRequest :: Encode GetContactReachabilityStatusRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetContactReachabilityStatusRequest from required parameters
newGetContactReachabilityStatusRequest :: GetContactReachabilityStatusRequest
newGetContactReachabilityStatusRequest  = GetContactReachabilityStatusRequest { "domainName": (NullOrUndefined Nothing) }

-- | Constructs GetContactReachabilityStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetContactReachabilityStatusRequest' :: ( { "domainName" :: NullOrUndefined.NullOrUndefined (DomainName) } -> {"domainName" :: NullOrUndefined.NullOrUndefined (DomainName) } ) -> GetContactReachabilityStatusRequest
newGetContactReachabilityStatusRequest'  customize = (GetContactReachabilityStatusRequest <<< customize) { "domainName": (NullOrUndefined Nothing) }



newtype GetContactReachabilityStatusResponse = GetContactReachabilityStatusResponse 
  { "domainName" :: NullOrUndefined.NullOrUndefined (DomainName)
  , "status" :: NullOrUndefined.NullOrUndefined (ReachabilityStatus)
  }
derive instance newtypeGetContactReachabilityStatusResponse :: Newtype GetContactReachabilityStatusResponse _
derive instance repGenericGetContactReachabilityStatusResponse :: Generic GetContactReachabilityStatusResponse _
instance showGetContactReachabilityStatusResponse :: Show GetContactReachabilityStatusResponse where
  show = genericShow
instance decodeGetContactReachabilityStatusResponse :: Decode GetContactReachabilityStatusResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetContactReachabilityStatusResponse :: Encode GetContactReachabilityStatusResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetContactReachabilityStatusResponse from required parameters
newGetContactReachabilityStatusResponse :: GetContactReachabilityStatusResponse
newGetContactReachabilityStatusResponse  = GetContactReachabilityStatusResponse { "domainName": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs GetContactReachabilityStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetContactReachabilityStatusResponse' :: ( { "domainName" :: NullOrUndefined.NullOrUndefined (DomainName) , "status" :: NullOrUndefined.NullOrUndefined (ReachabilityStatus) } -> {"domainName" :: NullOrUndefined.NullOrUndefined (DomainName) , "status" :: NullOrUndefined.NullOrUndefined (ReachabilityStatus) } ) -> GetContactReachabilityStatusResponse
newGetContactReachabilityStatusResponse'  customize = (GetContactReachabilityStatusResponse <<< customize) { "domainName": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



-- | <p>The GetDomainDetail request includes the following element.</p>
newtype GetDomainDetailRequest = GetDomainDetailRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeGetDomainDetailRequest :: Newtype GetDomainDetailRequest _
derive instance repGenericGetDomainDetailRequest :: Generic GetDomainDetailRequest _
instance showGetDomainDetailRequest :: Show GetDomainDetailRequest where
  show = genericShow
instance decodeGetDomainDetailRequest :: Decode GetDomainDetailRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetDomainDetailRequest :: Encode GetDomainDetailRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
  , "AutoRenew" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AdminContact" :: (ContactDetail)
  , "RegistrantContact" :: (ContactDetail)
  , "TechContact" :: (ContactDetail)
  , "AdminPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "RegistrantPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "TechPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "RegistrarName" :: NullOrUndefined.NullOrUndefined (RegistrarName)
  , "WhoIsServer" :: NullOrUndefined.NullOrUndefined (RegistrarWhoIsServer)
  , "RegistrarUrl" :: NullOrUndefined.NullOrUndefined (RegistrarUrl)
  , "AbuseContactEmail" :: NullOrUndefined.NullOrUndefined (Email)
  , "AbuseContactPhone" :: NullOrUndefined.NullOrUndefined (ContactNumber)
  , "RegistryDomainId" :: NullOrUndefined.NullOrUndefined (RegistryDomainId)
  , "CreationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "UpdatedDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "ExpirationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "Reseller" :: NullOrUndefined.NullOrUndefined (Reseller)
  , "DnsSec" :: NullOrUndefined.NullOrUndefined (DNSSec)
  , "StatusList" :: NullOrUndefined.NullOrUndefined (DomainStatusList)
  }
derive instance newtypeGetDomainDetailResponse :: Newtype GetDomainDetailResponse _
derive instance repGenericGetDomainDetailResponse :: Generic GetDomainDetailResponse _
instance showGetDomainDetailResponse :: Show GetDomainDetailResponse where
  show = genericShow
instance decodeGetDomainDetailResponse :: Decode GetDomainDetailResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetDomainDetailResponse :: Encode GetDomainDetailResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetDomainDetailResponse from required parameters
newGetDomainDetailResponse :: ContactDetail -> DomainName -> NameserverList -> ContactDetail -> ContactDetail -> GetDomainDetailResponse
newGetDomainDetailResponse _AdminContact _DomainName _Nameservers _RegistrantContact _TechContact = GetDomainDetailResponse { "AdminContact": _AdminContact, "DomainName": _DomainName, "Nameservers": _Nameservers, "RegistrantContact": _RegistrantContact, "TechContact": _TechContact, "AbuseContactEmail": (NullOrUndefined Nothing), "AbuseContactPhone": (NullOrUndefined Nothing), "AdminPrivacy": (NullOrUndefined Nothing), "AutoRenew": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "DnsSec": (NullOrUndefined Nothing), "ExpirationDate": (NullOrUndefined Nothing), "RegistrantPrivacy": (NullOrUndefined Nothing), "RegistrarName": (NullOrUndefined Nothing), "RegistrarUrl": (NullOrUndefined Nothing), "RegistryDomainId": (NullOrUndefined Nothing), "Reseller": (NullOrUndefined Nothing), "StatusList": (NullOrUndefined Nothing), "TechPrivacy": (NullOrUndefined Nothing), "UpdatedDate": (NullOrUndefined Nothing), "WhoIsServer": (NullOrUndefined Nothing) }

-- | Constructs GetDomainDetailResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDomainDetailResponse' :: ContactDetail -> DomainName -> NameserverList -> ContactDetail -> ContactDetail -> ( { "DomainName" :: (DomainName) , "Nameservers" :: (NameserverList) , "AutoRenew" :: NullOrUndefined.NullOrUndefined (Boolean) , "AdminContact" :: (ContactDetail) , "RegistrantContact" :: (ContactDetail) , "TechContact" :: (ContactDetail) , "AdminPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean) , "RegistrantPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean) , "TechPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean) , "RegistrarName" :: NullOrUndefined.NullOrUndefined (RegistrarName) , "WhoIsServer" :: NullOrUndefined.NullOrUndefined (RegistrarWhoIsServer) , "RegistrarUrl" :: NullOrUndefined.NullOrUndefined (RegistrarUrl) , "AbuseContactEmail" :: NullOrUndefined.NullOrUndefined (Email) , "AbuseContactPhone" :: NullOrUndefined.NullOrUndefined (ContactNumber) , "RegistryDomainId" :: NullOrUndefined.NullOrUndefined (RegistryDomainId) , "CreationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "UpdatedDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "ExpirationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Reseller" :: NullOrUndefined.NullOrUndefined (Reseller) , "DnsSec" :: NullOrUndefined.NullOrUndefined (DNSSec) , "StatusList" :: NullOrUndefined.NullOrUndefined (DomainStatusList) } -> {"DomainName" :: (DomainName) , "Nameservers" :: (NameserverList) , "AutoRenew" :: NullOrUndefined.NullOrUndefined (Boolean) , "AdminContact" :: (ContactDetail) , "RegistrantContact" :: (ContactDetail) , "TechContact" :: (ContactDetail) , "AdminPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean) , "RegistrantPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean) , "TechPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean) , "RegistrarName" :: NullOrUndefined.NullOrUndefined (RegistrarName) , "WhoIsServer" :: NullOrUndefined.NullOrUndefined (RegistrarWhoIsServer) , "RegistrarUrl" :: NullOrUndefined.NullOrUndefined (RegistrarUrl) , "AbuseContactEmail" :: NullOrUndefined.NullOrUndefined (Email) , "AbuseContactPhone" :: NullOrUndefined.NullOrUndefined (ContactNumber) , "RegistryDomainId" :: NullOrUndefined.NullOrUndefined (RegistryDomainId) , "CreationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "UpdatedDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "ExpirationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Reseller" :: NullOrUndefined.NullOrUndefined (Reseller) , "DnsSec" :: NullOrUndefined.NullOrUndefined (DNSSec) , "StatusList" :: NullOrUndefined.NullOrUndefined (DomainStatusList) } ) -> GetDomainDetailResponse
newGetDomainDetailResponse' _AdminContact _DomainName _Nameservers _RegistrantContact _TechContact customize = (GetDomainDetailResponse <<< customize) { "AdminContact": _AdminContact, "DomainName": _DomainName, "Nameservers": _Nameservers, "RegistrantContact": _RegistrantContact, "TechContact": _TechContact, "AbuseContactEmail": (NullOrUndefined Nothing), "AbuseContactPhone": (NullOrUndefined Nothing), "AdminPrivacy": (NullOrUndefined Nothing), "AutoRenew": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "DnsSec": (NullOrUndefined Nothing), "ExpirationDate": (NullOrUndefined Nothing), "RegistrantPrivacy": (NullOrUndefined Nothing), "RegistrarName": (NullOrUndefined Nothing), "RegistrarUrl": (NullOrUndefined Nothing), "RegistryDomainId": (NullOrUndefined Nothing), "Reseller": (NullOrUndefined Nothing), "StatusList": (NullOrUndefined Nothing), "TechPrivacy": (NullOrUndefined Nothing), "UpdatedDate": (NullOrUndefined Nothing), "WhoIsServer": (NullOrUndefined Nothing) }



newtype GetDomainSuggestionsRequest = GetDomainSuggestionsRequest 
  { "DomainName" :: (DomainName)
  , "SuggestionCount" :: (Int)
  , "OnlyAvailable" :: (Boolean)
  }
derive instance newtypeGetDomainSuggestionsRequest :: Newtype GetDomainSuggestionsRequest _
derive instance repGenericGetDomainSuggestionsRequest :: Generic GetDomainSuggestionsRequest _
instance showGetDomainSuggestionsRequest :: Show GetDomainSuggestionsRequest where
  show = genericShow
instance decodeGetDomainSuggestionsRequest :: Decode GetDomainSuggestionsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetDomainSuggestionsRequest :: Encode GetDomainSuggestionsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetDomainSuggestionsRequest from required parameters
newGetDomainSuggestionsRequest :: DomainName -> Boolean -> Int -> GetDomainSuggestionsRequest
newGetDomainSuggestionsRequest _DomainName _OnlyAvailable _SuggestionCount = GetDomainSuggestionsRequest { "DomainName": _DomainName, "OnlyAvailable": _OnlyAvailable, "SuggestionCount": _SuggestionCount }

-- | Constructs GetDomainSuggestionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDomainSuggestionsRequest' :: DomainName -> Boolean -> Int -> ( { "DomainName" :: (DomainName) , "SuggestionCount" :: (Int) , "OnlyAvailable" :: (Boolean) } -> {"DomainName" :: (DomainName) , "SuggestionCount" :: (Int) , "OnlyAvailable" :: (Boolean) } ) -> GetDomainSuggestionsRequest
newGetDomainSuggestionsRequest' _DomainName _OnlyAvailable _SuggestionCount customize = (GetDomainSuggestionsRequest <<< customize) { "DomainName": _DomainName, "OnlyAvailable": _OnlyAvailable, "SuggestionCount": _SuggestionCount }



newtype GetDomainSuggestionsResponse = GetDomainSuggestionsResponse 
  { "SuggestionsList" :: NullOrUndefined.NullOrUndefined (DomainSuggestionsList)
  }
derive instance newtypeGetDomainSuggestionsResponse :: Newtype GetDomainSuggestionsResponse _
derive instance repGenericGetDomainSuggestionsResponse :: Generic GetDomainSuggestionsResponse _
instance showGetDomainSuggestionsResponse :: Show GetDomainSuggestionsResponse where
  show = genericShow
instance decodeGetDomainSuggestionsResponse :: Decode GetDomainSuggestionsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetDomainSuggestionsResponse :: Encode GetDomainSuggestionsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetDomainSuggestionsResponse from required parameters
newGetDomainSuggestionsResponse :: GetDomainSuggestionsResponse
newGetDomainSuggestionsResponse  = GetDomainSuggestionsResponse { "SuggestionsList": (NullOrUndefined Nothing) }

-- | Constructs GetDomainSuggestionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDomainSuggestionsResponse' :: ( { "SuggestionsList" :: NullOrUndefined.NullOrUndefined (DomainSuggestionsList) } -> {"SuggestionsList" :: NullOrUndefined.NullOrUndefined (DomainSuggestionsList) } ) -> GetDomainSuggestionsResponse
newGetDomainSuggestionsResponse'  customize = (GetDomainSuggestionsResponse <<< customize) { "SuggestionsList": (NullOrUndefined Nothing) }



-- | <p>The <a>GetOperationDetail</a> request includes the following element.</p>
newtype GetOperationDetailRequest = GetOperationDetailRequest 
  { "OperationId" :: (OperationId)
  }
derive instance newtypeGetOperationDetailRequest :: Newtype GetOperationDetailRequest _
derive instance repGenericGetOperationDetailRequest :: Generic GetOperationDetailRequest _
instance showGetOperationDetailRequest :: Show GetOperationDetailRequest where
  show = genericShow
instance decodeGetOperationDetailRequest :: Decode GetOperationDetailRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetOperationDetailRequest :: Encode GetOperationDetailRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetOperationDetailRequest from required parameters
newGetOperationDetailRequest :: OperationId -> GetOperationDetailRequest
newGetOperationDetailRequest _OperationId = GetOperationDetailRequest { "OperationId": _OperationId }

-- | Constructs GetOperationDetailRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOperationDetailRequest' :: OperationId -> ( { "OperationId" :: (OperationId) } -> {"OperationId" :: (OperationId) } ) -> GetOperationDetailRequest
newGetOperationDetailRequest' _OperationId customize = (GetOperationDetailRequest <<< customize) { "OperationId": _OperationId }



-- | <p>The GetOperationDetail response includes the following elements.</p>
newtype GetOperationDetailResponse = GetOperationDetailResponse 
  { "OperationId" :: NullOrUndefined.NullOrUndefined (OperationId)
  , "Status" :: NullOrUndefined.NullOrUndefined (OperationStatus)
  , "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  , "DomainName" :: NullOrUndefined.NullOrUndefined (DomainName)
  , "Type" :: NullOrUndefined.NullOrUndefined (OperationType)
  , "SubmittedDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeGetOperationDetailResponse :: Newtype GetOperationDetailResponse _
derive instance repGenericGetOperationDetailResponse :: Generic GetOperationDetailResponse _
instance showGetOperationDetailResponse :: Show GetOperationDetailResponse where
  show = genericShow
instance decodeGetOperationDetailResponse :: Decode GetOperationDetailResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetOperationDetailResponse :: Encode GetOperationDetailResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetOperationDetailResponse from required parameters
newGetOperationDetailResponse :: GetOperationDetailResponse
newGetOperationDetailResponse  = GetOperationDetailResponse { "DomainName": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "OperationId": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "SubmittedDate": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs GetOperationDetailResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOperationDetailResponse' :: ( { "OperationId" :: NullOrUndefined.NullOrUndefined (OperationId) , "Status" :: NullOrUndefined.NullOrUndefined (OperationStatus) , "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) , "DomainName" :: NullOrUndefined.NullOrUndefined (DomainName) , "Type" :: NullOrUndefined.NullOrUndefined (OperationType) , "SubmittedDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } -> {"OperationId" :: NullOrUndefined.NullOrUndefined (OperationId) , "Status" :: NullOrUndefined.NullOrUndefined (OperationStatus) , "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) , "DomainName" :: NullOrUndefined.NullOrUndefined (DomainName) , "Type" :: NullOrUndefined.NullOrUndefined (OperationType) , "SubmittedDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } ) -> GetOperationDetailResponse
newGetOperationDetailResponse'  customize = (GetOperationDetailResponse <<< customize) { "DomainName": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "OperationId": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "SubmittedDate": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype GlueIp = GlueIp String
derive instance newtypeGlueIp :: Newtype GlueIp _
derive instance repGenericGlueIp :: Generic GlueIp _
instance showGlueIp :: Show GlueIp where
  show = genericShow
instance decodeGlueIp :: Decode GlueIp where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGlueIp :: Encode GlueIp where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GlueIpList = GlueIpList (Array GlueIp)
derive instance newtypeGlueIpList :: Newtype GlueIpList _
derive instance repGenericGlueIpList :: Generic GlueIpList _
instance showGlueIpList :: Show GlueIpList where
  show = genericShow
instance decodeGlueIpList :: Decode GlueIpList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGlueIpList :: Encode GlueIpList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype HostName = HostName String
derive instance newtypeHostName :: Newtype HostName _
derive instance repGenericHostName :: Generic HostName _
instance showHostName :: Show HostName where
  show = genericShow
instance decodeHostName :: Decode HostName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHostName :: Encode HostName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The requested item is not acceptable. For example, for an OperationId it might refer to the ID of an operation that is already completed. For a domain name, it might not be a valid domain name or belong to the requester account.</p>
newtype InvalidInput = InvalidInput 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidInput :: Newtype InvalidInput _
derive instance repGenericInvalidInput :: Generic InvalidInput _
instance showInvalidInput :: Show InvalidInput where
  show = genericShow
instance decodeInvalidInput :: Decode InvalidInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidInput :: Encode InvalidInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidInput from required parameters
newInvalidInput :: InvalidInput
newInvalidInput  = InvalidInput { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidInput' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InvalidInput
newInvalidInput'  customize = (InvalidInput <<< customize) { "message": (NullOrUndefined Nothing) }



newtype InvoiceId = InvoiceId String
derive instance newtypeInvoiceId :: Newtype InvoiceId _
derive instance repGenericInvoiceId :: Generic InvoiceId _
instance showInvoiceId :: Show InvoiceId where
  show = genericShow
instance decodeInvoiceId :: Decode InvoiceId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvoiceId :: Encode InvoiceId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype LangCode = LangCode String
derive instance newtypeLangCode :: Newtype LangCode _
derive instance repGenericLangCode :: Generic LangCode _
instance showLangCode :: Show LangCode where
  show = genericShow
instance decodeLangCode :: Decode LangCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLangCode :: Encode LangCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The ListDomains request includes the following elements.</p>
newtype ListDomainsRequest = ListDomainsRequest 
  { "Marker" :: NullOrUndefined.NullOrUndefined (PageMarker)
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (PageMaxItems)
  }
derive instance newtypeListDomainsRequest :: Newtype ListDomainsRequest _
derive instance repGenericListDomainsRequest :: Generic ListDomainsRequest _
instance showListDomainsRequest :: Show ListDomainsRequest where
  show = genericShow
instance decodeListDomainsRequest :: Decode ListDomainsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListDomainsRequest :: Encode ListDomainsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListDomainsRequest from required parameters
newListDomainsRequest :: ListDomainsRequest
newListDomainsRequest  = ListDomainsRequest { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }

-- | Constructs ListDomainsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDomainsRequest' :: ( { "Marker" :: NullOrUndefined.NullOrUndefined (PageMarker) , "MaxItems" :: NullOrUndefined.NullOrUndefined (PageMaxItems) } -> {"Marker" :: NullOrUndefined.NullOrUndefined (PageMarker) , "MaxItems" :: NullOrUndefined.NullOrUndefined (PageMaxItems) } ) -> ListDomainsRequest
newListDomainsRequest'  customize = (ListDomainsRequest <<< customize) { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }



-- | <p>The ListDomains response includes the following elements.</p>
newtype ListDomainsResponse = ListDomainsResponse 
  { "Domains" :: (DomainSummaryList)
  , "NextPageMarker" :: NullOrUndefined.NullOrUndefined (PageMarker)
  }
derive instance newtypeListDomainsResponse :: Newtype ListDomainsResponse _
derive instance repGenericListDomainsResponse :: Generic ListDomainsResponse _
instance showListDomainsResponse :: Show ListDomainsResponse where
  show = genericShow
instance decodeListDomainsResponse :: Decode ListDomainsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListDomainsResponse :: Encode ListDomainsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListDomainsResponse from required parameters
newListDomainsResponse :: DomainSummaryList -> ListDomainsResponse
newListDomainsResponse _Domains = ListDomainsResponse { "Domains": _Domains, "NextPageMarker": (NullOrUndefined Nothing) }

-- | Constructs ListDomainsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDomainsResponse' :: DomainSummaryList -> ( { "Domains" :: (DomainSummaryList) , "NextPageMarker" :: NullOrUndefined.NullOrUndefined (PageMarker) } -> {"Domains" :: (DomainSummaryList) , "NextPageMarker" :: NullOrUndefined.NullOrUndefined (PageMarker) } ) -> ListDomainsResponse
newListDomainsResponse' _Domains customize = (ListDomainsResponse <<< customize) { "Domains": _Domains, "NextPageMarker": (NullOrUndefined Nothing) }



-- | <p>The ListOperations request includes the following elements.</p>
newtype ListOperationsRequest = ListOperationsRequest 
  { "Marker" :: NullOrUndefined.NullOrUndefined (PageMarker)
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (PageMaxItems)
  }
derive instance newtypeListOperationsRequest :: Newtype ListOperationsRequest _
derive instance repGenericListOperationsRequest :: Generic ListOperationsRequest _
instance showListOperationsRequest :: Show ListOperationsRequest where
  show = genericShow
instance decodeListOperationsRequest :: Decode ListOperationsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOperationsRequest :: Encode ListOperationsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListOperationsRequest from required parameters
newListOperationsRequest :: ListOperationsRequest
newListOperationsRequest  = ListOperationsRequest { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }

-- | Constructs ListOperationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOperationsRequest' :: ( { "Marker" :: NullOrUndefined.NullOrUndefined (PageMarker) , "MaxItems" :: NullOrUndefined.NullOrUndefined (PageMaxItems) } -> {"Marker" :: NullOrUndefined.NullOrUndefined (PageMarker) , "MaxItems" :: NullOrUndefined.NullOrUndefined (PageMaxItems) } ) -> ListOperationsRequest
newListOperationsRequest'  customize = (ListOperationsRequest <<< customize) { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }



-- | <p>The ListOperations response includes the following elements.</p>
newtype ListOperationsResponse = ListOperationsResponse 
  { "Operations" :: (OperationSummaryList)
  , "NextPageMarker" :: NullOrUndefined.NullOrUndefined (PageMarker)
  }
derive instance newtypeListOperationsResponse :: Newtype ListOperationsResponse _
derive instance repGenericListOperationsResponse :: Generic ListOperationsResponse _
instance showListOperationsResponse :: Show ListOperationsResponse where
  show = genericShow
instance decodeListOperationsResponse :: Decode ListOperationsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOperationsResponse :: Encode ListOperationsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListOperationsResponse from required parameters
newListOperationsResponse :: OperationSummaryList -> ListOperationsResponse
newListOperationsResponse _Operations = ListOperationsResponse { "Operations": _Operations, "NextPageMarker": (NullOrUndefined Nothing) }

-- | Constructs ListOperationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOperationsResponse' :: OperationSummaryList -> ( { "Operations" :: (OperationSummaryList) , "NextPageMarker" :: NullOrUndefined.NullOrUndefined (PageMarker) } -> {"Operations" :: (OperationSummaryList) , "NextPageMarker" :: NullOrUndefined.NullOrUndefined (PageMarker) } ) -> ListOperationsResponse
newListOperationsResponse' _Operations customize = (ListOperationsResponse <<< customize) { "Operations": _Operations, "NextPageMarker": (NullOrUndefined Nothing) }



-- | <p>The ListTagsForDomainRequest includes the following elements.</p>
newtype ListTagsForDomainRequest = ListTagsForDomainRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeListTagsForDomainRequest :: Newtype ListTagsForDomainRequest _
derive instance repGenericListTagsForDomainRequest :: Generic ListTagsForDomainRequest _
instance showListTagsForDomainRequest :: Show ListTagsForDomainRequest where
  show = genericShow
instance decodeListTagsForDomainRequest :: Decode ListTagsForDomainRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListTagsForDomainRequest :: Encode ListTagsForDomainRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showListTagsForDomainResponse :: Show ListTagsForDomainResponse where
  show = genericShow
instance decodeListTagsForDomainResponse :: Decode ListTagsForDomainResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListTagsForDomainResponse :: Encode ListTagsForDomainResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
  , "GlueIps" :: NullOrUndefined.NullOrUndefined (GlueIpList)
  }
derive instance newtypeNameserver :: Newtype Nameserver _
derive instance repGenericNameserver :: Generic Nameserver _
instance showNameserver :: Show Nameserver where
  show = genericShow
instance decodeNameserver :: Decode Nameserver where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNameserver :: Encode Nameserver where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Nameserver from required parameters
newNameserver :: HostName -> Nameserver
newNameserver _Name = Nameserver { "Name": _Name, "GlueIps": (NullOrUndefined Nothing) }

-- | Constructs Nameserver's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNameserver' :: HostName -> ( { "Name" :: (HostName) , "GlueIps" :: NullOrUndefined.NullOrUndefined (GlueIpList) } -> {"Name" :: (HostName) , "GlueIps" :: NullOrUndefined.NullOrUndefined (GlueIpList) } ) -> Nameserver
newNameserver' _Name customize = (Nameserver <<< customize) { "Name": _Name, "GlueIps": (NullOrUndefined Nothing) }



newtype NameserverList = NameserverList (Array Nameserver)
derive instance newtypeNameserverList :: Newtype NameserverList _
derive instance repGenericNameserverList :: Generic NameserverList _
instance showNameserverList :: Show NameserverList where
  show = genericShow
instance decodeNameserverList :: Decode NameserverList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNameserverList :: Encode NameserverList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype OperationId = OperationId String
derive instance newtypeOperationId :: Newtype OperationId _
derive instance repGenericOperationId :: Generic OperationId _
instance showOperationId :: Show OperationId where
  show = genericShow
instance decodeOperationId :: Decode OperationId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationId :: Encode OperationId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The number of operations or jobs running exceeded the allowed threshold for the account.</p>
newtype OperationLimitExceeded = OperationLimitExceeded 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeOperationLimitExceeded :: Newtype OperationLimitExceeded _
derive instance repGenericOperationLimitExceeded :: Generic OperationLimitExceeded _
instance showOperationLimitExceeded :: Show OperationLimitExceeded where
  show = genericShow
instance decodeOperationLimitExceeded :: Decode OperationLimitExceeded where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationLimitExceeded :: Encode OperationLimitExceeded where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OperationLimitExceeded from required parameters
newOperationLimitExceeded :: OperationLimitExceeded
newOperationLimitExceeded  = OperationLimitExceeded { "message": (NullOrUndefined Nothing) }

-- | Constructs OperationLimitExceeded's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperationLimitExceeded' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> OperationLimitExceeded
newOperationLimitExceeded'  customize = (OperationLimitExceeded <<< customize) { "message": (NullOrUndefined Nothing) }



newtype OperationStatus = OperationStatus String
derive instance newtypeOperationStatus :: Newtype OperationStatus _
derive instance repGenericOperationStatus :: Generic OperationStatus _
instance showOperationStatus :: Show OperationStatus where
  show = genericShow
instance decodeOperationStatus :: Decode OperationStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationStatus :: Encode OperationStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>OperationSummary includes the following elements.</p>
newtype OperationSummary = OperationSummary 
  { "OperationId" :: (OperationId)
  , "Status" :: (OperationStatus)
  , "Type" :: (OperationType)
  , "SubmittedDate" :: (Types.Timestamp)
  }
derive instance newtypeOperationSummary :: Newtype OperationSummary _
derive instance repGenericOperationSummary :: Generic OperationSummary _
instance showOperationSummary :: Show OperationSummary where
  show = genericShow
instance decodeOperationSummary :: Decode OperationSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationSummary :: Encode OperationSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showOperationSummaryList :: Show OperationSummaryList where
  show = genericShow
instance decodeOperationSummaryList :: Decode OperationSummaryList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationSummaryList :: Encode OperationSummaryList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype OperationType = OperationType String
derive instance newtypeOperationType :: Newtype OperationType _
derive instance repGenericOperationType :: Generic OperationType _
instance showOperationType :: Show OperationType where
  show = genericShow
instance decodeOperationType :: Decode OperationType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationType :: Encode OperationType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PageMarker = PageMarker String
derive instance newtypePageMarker :: Newtype PageMarker _
derive instance repGenericPageMarker :: Generic PageMarker _
instance showPageMarker :: Show PageMarker where
  show = genericShow
instance decodePageMarker :: Decode PageMarker where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePageMarker :: Encode PageMarker where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PageMaxItems = PageMaxItems Int
derive instance newtypePageMaxItems :: Newtype PageMaxItems _
derive instance repGenericPageMaxItems :: Generic PageMaxItems _
instance showPageMaxItems :: Show PageMaxItems where
  show = genericShow
instance decodePageMaxItems :: Decode PageMaxItems where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePageMaxItems :: Encode PageMaxItems where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Price = Price Number
derive instance newtypePrice :: Newtype Price _
derive instance repGenericPrice :: Generic Price _
instance showPrice :: Show Price where
  show = genericShow
instance decodePrice :: Decode Price where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePrice :: Encode Price where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ReachabilityStatus = ReachabilityStatus String
derive instance newtypeReachabilityStatus :: Newtype ReachabilityStatus _
derive instance repGenericReachabilityStatus :: Generic ReachabilityStatus _
instance showReachabilityStatus :: Show ReachabilityStatus where
  show = genericShow
instance decodeReachabilityStatus :: Decode ReachabilityStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReachabilityStatus :: Encode ReachabilityStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The RegisterDomain request includes the following elements.</p>
newtype RegisterDomainRequest = RegisterDomainRequest 
  { "DomainName" :: (DomainName)
  , "IdnLangCode" :: NullOrUndefined.NullOrUndefined (LangCode)
  , "DurationInYears" :: (DurationInYears)
  , "AutoRenew" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AdminContact" :: (ContactDetail)
  , "RegistrantContact" :: (ContactDetail)
  , "TechContact" :: (ContactDetail)
  , "PrivacyProtectAdminContact" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "PrivacyProtectRegistrantContact" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "PrivacyProtectTechContact" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeRegisterDomainRequest :: Newtype RegisterDomainRequest _
derive instance repGenericRegisterDomainRequest :: Generic RegisterDomainRequest _
instance showRegisterDomainRequest :: Show RegisterDomainRequest where
  show = genericShow
instance decodeRegisterDomainRequest :: Decode RegisterDomainRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterDomainRequest :: Encode RegisterDomainRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RegisterDomainRequest from required parameters
newRegisterDomainRequest :: ContactDetail -> DomainName -> DurationInYears -> ContactDetail -> ContactDetail -> RegisterDomainRequest
newRegisterDomainRequest _AdminContact _DomainName _DurationInYears _RegistrantContact _TechContact = RegisterDomainRequest { "AdminContact": _AdminContact, "DomainName": _DomainName, "DurationInYears": _DurationInYears, "RegistrantContact": _RegistrantContact, "TechContact": _TechContact, "AutoRenew": (NullOrUndefined Nothing), "IdnLangCode": (NullOrUndefined Nothing), "PrivacyProtectAdminContact": (NullOrUndefined Nothing), "PrivacyProtectRegistrantContact": (NullOrUndefined Nothing), "PrivacyProtectTechContact": (NullOrUndefined Nothing) }

-- | Constructs RegisterDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterDomainRequest' :: ContactDetail -> DomainName -> DurationInYears -> ContactDetail -> ContactDetail -> ( { "DomainName" :: (DomainName) , "IdnLangCode" :: NullOrUndefined.NullOrUndefined (LangCode) , "DurationInYears" :: (DurationInYears) , "AutoRenew" :: NullOrUndefined.NullOrUndefined (Boolean) , "AdminContact" :: (ContactDetail) , "RegistrantContact" :: (ContactDetail) , "TechContact" :: (ContactDetail) , "PrivacyProtectAdminContact" :: NullOrUndefined.NullOrUndefined (Boolean) , "PrivacyProtectRegistrantContact" :: NullOrUndefined.NullOrUndefined (Boolean) , "PrivacyProtectTechContact" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"DomainName" :: (DomainName) , "IdnLangCode" :: NullOrUndefined.NullOrUndefined (LangCode) , "DurationInYears" :: (DurationInYears) , "AutoRenew" :: NullOrUndefined.NullOrUndefined (Boolean) , "AdminContact" :: (ContactDetail) , "RegistrantContact" :: (ContactDetail) , "TechContact" :: (ContactDetail) , "PrivacyProtectAdminContact" :: NullOrUndefined.NullOrUndefined (Boolean) , "PrivacyProtectRegistrantContact" :: NullOrUndefined.NullOrUndefined (Boolean) , "PrivacyProtectTechContact" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> RegisterDomainRequest
newRegisterDomainRequest' _AdminContact _DomainName _DurationInYears _RegistrantContact _TechContact customize = (RegisterDomainRequest <<< customize) { "AdminContact": _AdminContact, "DomainName": _DomainName, "DurationInYears": _DurationInYears, "RegistrantContact": _RegistrantContact, "TechContact": _TechContact, "AutoRenew": (NullOrUndefined Nothing), "IdnLangCode": (NullOrUndefined Nothing), "PrivacyProtectAdminContact": (NullOrUndefined Nothing), "PrivacyProtectRegistrantContact": (NullOrUndefined Nothing), "PrivacyProtectTechContact": (NullOrUndefined Nothing) }



-- | <p>The RegisterDomain response includes the following element.</p>
newtype RegisterDomainResponse = RegisterDomainResponse 
  { "OperationId" :: (OperationId)
  }
derive instance newtypeRegisterDomainResponse :: Newtype RegisterDomainResponse _
derive instance repGenericRegisterDomainResponse :: Generic RegisterDomainResponse _
instance showRegisterDomainResponse :: Show RegisterDomainResponse where
  show = genericShow
instance decodeRegisterDomainResponse :: Decode RegisterDomainResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterDomainResponse :: Encode RegisterDomainResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showRegistrarName :: Show RegistrarName where
  show = genericShow
instance decodeRegistrarName :: Decode RegistrarName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegistrarName :: Encode RegistrarName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RegistrarUrl = RegistrarUrl String
derive instance newtypeRegistrarUrl :: Newtype RegistrarUrl _
derive instance repGenericRegistrarUrl :: Generic RegistrarUrl _
instance showRegistrarUrl :: Show RegistrarUrl where
  show = genericShow
instance decodeRegistrarUrl :: Decode RegistrarUrl where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegistrarUrl :: Encode RegistrarUrl where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RegistrarWhoIsServer = RegistrarWhoIsServer String
derive instance newtypeRegistrarWhoIsServer :: Newtype RegistrarWhoIsServer _
derive instance repGenericRegistrarWhoIsServer :: Generic RegistrarWhoIsServer _
instance showRegistrarWhoIsServer :: Show RegistrarWhoIsServer where
  show = genericShow
instance decodeRegistrarWhoIsServer :: Decode RegistrarWhoIsServer where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegistrarWhoIsServer :: Encode RegistrarWhoIsServer where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RegistryDomainId = RegistryDomainId String
derive instance newtypeRegistryDomainId :: Newtype RegistryDomainId _
derive instance repGenericRegistryDomainId :: Generic RegistryDomainId _
instance showRegistryDomainId :: Show RegistryDomainId where
  show = genericShow
instance decodeRegistryDomainId :: Decode RegistryDomainId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegistryDomainId :: Encode RegistryDomainId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A <code>RenewDomain</code> request includes the number of years that you want to renew for and the current expiration year.</p>
newtype RenewDomainRequest = RenewDomainRequest 
  { "DomainName" :: (DomainName)
  , "DurationInYears" :: NullOrUndefined.NullOrUndefined (DurationInYears)
  , "CurrentExpiryYear" :: (CurrentExpiryYear)
  }
derive instance newtypeRenewDomainRequest :: Newtype RenewDomainRequest _
derive instance repGenericRenewDomainRequest :: Generic RenewDomainRequest _
instance showRenewDomainRequest :: Show RenewDomainRequest where
  show = genericShow
instance decodeRenewDomainRequest :: Decode RenewDomainRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRenewDomainRequest :: Encode RenewDomainRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RenewDomainRequest from required parameters
newRenewDomainRequest :: CurrentExpiryYear -> DomainName -> RenewDomainRequest
newRenewDomainRequest _CurrentExpiryYear _DomainName = RenewDomainRequest { "CurrentExpiryYear": _CurrentExpiryYear, "DomainName": _DomainName, "DurationInYears": (NullOrUndefined Nothing) }

-- | Constructs RenewDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRenewDomainRequest' :: CurrentExpiryYear -> DomainName -> ( { "DomainName" :: (DomainName) , "DurationInYears" :: NullOrUndefined.NullOrUndefined (DurationInYears) , "CurrentExpiryYear" :: (CurrentExpiryYear) } -> {"DomainName" :: (DomainName) , "DurationInYears" :: NullOrUndefined.NullOrUndefined (DurationInYears) , "CurrentExpiryYear" :: (CurrentExpiryYear) } ) -> RenewDomainRequest
newRenewDomainRequest' _CurrentExpiryYear _DomainName customize = (RenewDomainRequest <<< customize) { "CurrentExpiryYear": _CurrentExpiryYear, "DomainName": _DomainName, "DurationInYears": (NullOrUndefined Nothing) }



newtype RenewDomainResponse = RenewDomainResponse 
  { "OperationId" :: (OperationId)
  }
derive instance newtypeRenewDomainResponse :: Newtype RenewDomainResponse _
derive instance repGenericRenewDomainResponse :: Generic RenewDomainResponse _
instance showRenewDomainResponse :: Show RenewDomainResponse where
  show = genericShow
instance decodeRenewDomainResponse :: Decode RenewDomainResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRenewDomainResponse :: Encode RenewDomainResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showReseller :: Show Reseller where
  show = genericShow
instance decodeReseller :: Decode Reseller where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReseller :: Encode Reseller where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResendContactReachabilityEmailRequest = ResendContactReachabilityEmailRequest 
  { "domainName" :: NullOrUndefined.NullOrUndefined (DomainName)
  }
derive instance newtypeResendContactReachabilityEmailRequest :: Newtype ResendContactReachabilityEmailRequest _
derive instance repGenericResendContactReachabilityEmailRequest :: Generic ResendContactReachabilityEmailRequest _
instance showResendContactReachabilityEmailRequest :: Show ResendContactReachabilityEmailRequest where
  show = genericShow
instance decodeResendContactReachabilityEmailRequest :: Decode ResendContactReachabilityEmailRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResendContactReachabilityEmailRequest :: Encode ResendContactReachabilityEmailRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResendContactReachabilityEmailRequest from required parameters
newResendContactReachabilityEmailRequest :: ResendContactReachabilityEmailRequest
newResendContactReachabilityEmailRequest  = ResendContactReachabilityEmailRequest { "domainName": (NullOrUndefined Nothing) }

-- | Constructs ResendContactReachabilityEmailRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResendContactReachabilityEmailRequest' :: ( { "domainName" :: NullOrUndefined.NullOrUndefined (DomainName) } -> {"domainName" :: NullOrUndefined.NullOrUndefined (DomainName) } ) -> ResendContactReachabilityEmailRequest
newResendContactReachabilityEmailRequest'  customize = (ResendContactReachabilityEmailRequest <<< customize) { "domainName": (NullOrUndefined Nothing) }



newtype ResendContactReachabilityEmailResponse = ResendContactReachabilityEmailResponse 
  { "domainName" :: NullOrUndefined.NullOrUndefined (DomainName)
  , "emailAddress" :: NullOrUndefined.NullOrUndefined (Email)
  , "isAlreadyVerified" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeResendContactReachabilityEmailResponse :: Newtype ResendContactReachabilityEmailResponse _
derive instance repGenericResendContactReachabilityEmailResponse :: Generic ResendContactReachabilityEmailResponse _
instance showResendContactReachabilityEmailResponse :: Show ResendContactReachabilityEmailResponse where
  show = genericShow
instance decodeResendContactReachabilityEmailResponse :: Decode ResendContactReachabilityEmailResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResendContactReachabilityEmailResponse :: Encode ResendContactReachabilityEmailResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResendContactReachabilityEmailResponse from required parameters
newResendContactReachabilityEmailResponse :: ResendContactReachabilityEmailResponse
newResendContactReachabilityEmailResponse  = ResendContactReachabilityEmailResponse { "domainName": (NullOrUndefined Nothing), "emailAddress": (NullOrUndefined Nothing), "isAlreadyVerified": (NullOrUndefined Nothing) }

-- | Constructs ResendContactReachabilityEmailResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResendContactReachabilityEmailResponse' :: ( { "domainName" :: NullOrUndefined.NullOrUndefined (DomainName) , "emailAddress" :: NullOrUndefined.NullOrUndefined (Email) , "isAlreadyVerified" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"domainName" :: NullOrUndefined.NullOrUndefined (DomainName) , "emailAddress" :: NullOrUndefined.NullOrUndefined (Email) , "isAlreadyVerified" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> ResendContactReachabilityEmailResponse
newResendContactReachabilityEmailResponse'  customize = (ResendContactReachabilityEmailResponse <<< customize) { "domainName": (NullOrUndefined Nothing), "emailAddress": (NullOrUndefined Nothing), "isAlreadyVerified": (NullOrUndefined Nothing) }



-- | <p>A request for the authorization code for the specified domain. To transfer a domain to another registrar, you provide this value to the new registrar.</p>
newtype RetrieveDomainAuthCodeRequest = RetrieveDomainAuthCodeRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeRetrieveDomainAuthCodeRequest :: Newtype RetrieveDomainAuthCodeRequest _
derive instance repGenericRetrieveDomainAuthCodeRequest :: Generic RetrieveDomainAuthCodeRequest _
instance showRetrieveDomainAuthCodeRequest :: Show RetrieveDomainAuthCodeRequest where
  show = genericShow
instance decodeRetrieveDomainAuthCodeRequest :: Decode RetrieveDomainAuthCodeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRetrieveDomainAuthCodeRequest :: Encode RetrieveDomainAuthCodeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showRetrieveDomainAuthCodeResponse :: Show RetrieveDomainAuthCodeResponse where
  show = genericShow
instance decodeRetrieveDomainAuthCodeResponse :: Decode RetrieveDomainAuthCodeResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRetrieveDomainAuthCodeResponse :: Encode RetrieveDomainAuthCodeResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showState :: Show State where
  show = genericShow
instance decodeState :: Decode State where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeState :: Encode State where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The top-level domain does not support this operation.</p>
newtype TLDRulesViolation = TLDRulesViolation 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeTLDRulesViolation :: Newtype TLDRulesViolation _
derive instance repGenericTLDRulesViolation :: Generic TLDRulesViolation _
instance showTLDRulesViolation :: Show TLDRulesViolation where
  show = genericShow
instance decodeTLDRulesViolation :: Decode TLDRulesViolation where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTLDRulesViolation :: Encode TLDRulesViolation where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TLDRulesViolation from required parameters
newTLDRulesViolation :: TLDRulesViolation
newTLDRulesViolation  = TLDRulesViolation { "message": (NullOrUndefined Nothing) }

-- | Constructs TLDRulesViolation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTLDRulesViolation' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> TLDRulesViolation
newTLDRulesViolation'  customize = (TLDRulesViolation <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Each tag includes the following elements.</p>
newtype Tag = Tag 
  { "Key" :: NullOrUndefined.NullOrUndefined (TagKey)
  , "Value" :: NullOrUndefined.NullOrUndefined (TagValue)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where
  show = genericShow
instance decodeTag :: Decode Tag where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTag :: Encode Tag where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Tag from required parameters
newTag :: Tag
newTag  = Tag { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: ( { "Key" :: NullOrUndefined.NullOrUndefined (TagKey) , "Value" :: NullOrUndefined.NullOrUndefined (TagValue) } -> {"Key" :: NullOrUndefined.NullOrUndefined (TagKey) , "Value" :: NullOrUndefined.NullOrUndefined (TagValue) } ) -> Tag
newTag'  customize = (Tag <<< customize) { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where
  show = genericShow
instance decodeTagKey :: Decode TagKey where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagKey :: Encode TagKey where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TagKeyList = TagKeyList (Array TagKey)
derive instance newtypeTagKeyList :: Newtype TagKeyList _
derive instance repGenericTagKeyList :: Generic TagKeyList _
instance showTagKeyList :: Show TagKeyList where
  show = genericShow
instance decodeTagKeyList :: Decode TagKeyList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagKeyList :: Encode TagKeyList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where
  show = genericShow
instance decodeTagList :: Decode TagList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagList :: Encode TagList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where
  show = genericShow
instance decodeTagValue :: Decode TagValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagValue :: Encode TagValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The TransferDomain request includes the following elements.</p>
newtype TransferDomainRequest = TransferDomainRequest 
  { "DomainName" :: (DomainName)
  , "IdnLangCode" :: NullOrUndefined.NullOrUndefined (LangCode)
  , "DurationInYears" :: (DurationInYears)
  , "Nameservers" :: NullOrUndefined.NullOrUndefined (NameserverList)
  , "AuthCode" :: NullOrUndefined.NullOrUndefined (DomainAuthCode)
  , "AutoRenew" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "AdminContact" :: (ContactDetail)
  , "RegistrantContact" :: (ContactDetail)
  , "TechContact" :: (ContactDetail)
  , "PrivacyProtectAdminContact" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "PrivacyProtectRegistrantContact" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "PrivacyProtectTechContact" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeTransferDomainRequest :: Newtype TransferDomainRequest _
derive instance repGenericTransferDomainRequest :: Generic TransferDomainRequest _
instance showTransferDomainRequest :: Show TransferDomainRequest where
  show = genericShow
instance decodeTransferDomainRequest :: Decode TransferDomainRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTransferDomainRequest :: Encode TransferDomainRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TransferDomainRequest from required parameters
newTransferDomainRequest :: ContactDetail -> DomainName -> DurationInYears -> ContactDetail -> ContactDetail -> TransferDomainRequest
newTransferDomainRequest _AdminContact _DomainName _DurationInYears _RegistrantContact _TechContact = TransferDomainRequest { "AdminContact": _AdminContact, "DomainName": _DomainName, "DurationInYears": _DurationInYears, "RegistrantContact": _RegistrantContact, "TechContact": _TechContact, "AuthCode": (NullOrUndefined Nothing), "AutoRenew": (NullOrUndefined Nothing), "IdnLangCode": (NullOrUndefined Nothing), "Nameservers": (NullOrUndefined Nothing), "PrivacyProtectAdminContact": (NullOrUndefined Nothing), "PrivacyProtectRegistrantContact": (NullOrUndefined Nothing), "PrivacyProtectTechContact": (NullOrUndefined Nothing) }

-- | Constructs TransferDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTransferDomainRequest' :: ContactDetail -> DomainName -> DurationInYears -> ContactDetail -> ContactDetail -> ( { "DomainName" :: (DomainName) , "IdnLangCode" :: NullOrUndefined.NullOrUndefined (LangCode) , "DurationInYears" :: (DurationInYears) , "Nameservers" :: NullOrUndefined.NullOrUndefined (NameserverList) , "AuthCode" :: NullOrUndefined.NullOrUndefined (DomainAuthCode) , "AutoRenew" :: NullOrUndefined.NullOrUndefined (Boolean) , "AdminContact" :: (ContactDetail) , "RegistrantContact" :: (ContactDetail) , "TechContact" :: (ContactDetail) , "PrivacyProtectAdminContact" :: NullOrUndefined.NullOrUndefined (Boolean) , "PrivacyProtectRegistrantContact" :: NullOrUndefined.NullOrUndefined (Boolean) , "PrivacyProtectTechContact" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"DomainName" :: (DomainName) , "IdnLangCode" :: NullOrUndefined.NullOrUndefined (LangCode) , "DurationInYears" :: (DurationInYears) , "Nameservers" :: NullOrUndefined.NullOrUndefined (NameserverList) , "AuthCode" :: NullOrUndefined.NullOrUndefined (DomainAuthCode) , "AutoRenew" :: NullOrUndefined.NullOrUndefined (Boolean) , "AdminContact" :: (ContactDetail) , "RegistrantContact" :: (ContactDetail) , "TechContact" :: (ContactDetail) , "PrivacyProtectAdminContact" :: NullOrUndefined.NullOrUndefined (Boolean) , "PrivacyProtectRegistrantContact" :: NullOrUndefined.NullOrUndefined (Boolean) , "PrivacyProtectTechContact" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> TransferDomainRequest
newTransferDomainRequest' _AdminContact _DomainName _DurationInYears _RegistrantContact _TechContact customize = (TransferDomainRequest <<< customize) { "AdminContact": _AdminContact, "DomainName": _DomainName, "DurationInYears": _DurationInYears, "RegistrantContact": _RegistrantContact, "TechContact": _TechContact, "AuthCode": (NullOrUndefined Nothing), "AutoRenew": (NullOrUndefined Nothing), "IdnLangCode": (NullOrUndefined Nothing), "Nameservers": (NullOrUndefined Nothing), "PrivacyProtectAdminContact": (NullOrUndefined Nothing), "PrivacyProtectRegistrantContact": (NullOrUndefined Nothing), "PrivacyProtectTechContact": (NullOrUndefined Nothing) }



-- | <p>The TranserDomain response includes the following element.</p>
newtype TransferDomainResponse = TransferDomainResponse 
  { "OperationId" :: (OperationId)
  }
derive instance newtypeTransferDomainResponse :: Newtype TransferDomainResponse _
derive instance repGenericTransferDomainResponse :: Generic TransferDomainResponse _
instance showTransferDomainResponse :: Show TransferDomainResponse where
  show = genericShow
instance decodeTransferDomainResponse :: Decode TransferDomainResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTransferDomainResponse :: Encode TransferDomainResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showTransferable :: Show Transferable where
  show = genericShow
instance decodeTransferable :: Decode Transferable where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTransferable :: Encode Transferable where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Amazon Route 53 does not support this top-level domain (TLD).</p>
newtype UnsupportedTLD = UnsupportedTLD 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeUnsupportedTLD :: Newtype UnsupportedTLD _
derive instance repGenericUnsupportedTLD :: Generic UnsupportedTLD _
instance showUnsupportedTLD :: Show UnsupportedTLD where
  show = genericShow
instance decodeUnsupportedTLD :: Decode UnsupportedTLD where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnsupportedTLD :: Encode UnsupportedTLD where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UnsupportedTLD from required parameters
newUnsupportedTLD :: UnsupportedTLD
newUnsupportedTLD  = UnsupportedTLD { "message": (NullOrUndefined Nothing) }

-- | Constructs UnsupportedTLD's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsupportedTLD' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> UnsupportedTLD
newUnsupportedTLD'  customize = (UnsupportedTLD <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The UpdateDomainContactPrivacy request includes the following elements.</p>
newtype UpdateDomainContactPrivacyRequest = UpdateDomainContactPrivacyRequest 
  { "DomainName" :: (DomainName)
  , "AdminPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "RegistrantPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "TechPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeUpdateDomainContactPrivacyRequest :: Newtype UpdateDomainContactPrivacyRequest _
derive instance repGenericUpdateDomainContactPrivacyRequest :: Generic UpdateDomainContactPrivacyRequest _
instance showUpdateDomainContactPrivacyRequest :: Show UpdateDomainContactPrivacyRequest where
  show = genericShow
instance decodeUpdateDomainContactPrivacyRequest :: Decode UpdateDomainContactPrivacyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateDomainContactPrivacyRequest :: Encode UpdateDomainContactPrivacyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateDomainContactPrivacyRequest from required parameters
newUpdateDomainContactPrivacyRequest :: DomainName -> UpdateDomainContactPrivacyRequest
newUpdateDomainContactPrivacyRequest _DomainName = UpdateDomainContactPrivacyRequest { "DomainName": _DomainName, "AdminPrivacy": (NullOrUndefined Nothing), "RegistrantPrivacy": (NullOrUndefined Nothing), "TechPrivacy": (NullOrUndefined Nothing) }

-- | Constructs UpdateDomainContactPrivacyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDomainContactPrivacyRequest' :: DomainName -> ( { "DomainName" :: (DomainName) , "AdminPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean) , "RegistrantPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean) , "TechPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"DomainName" :: (DomainName) , "AdminPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean) , "RegistrantPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean) , "TechPrivacy" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> UpdateDomainContactPrivacyRequest
newUpdateDomainContactPrivacyRequest' _DomainName customize = (UpdateDomainContactPrivacyRequest <<< customize) { "DomainName": _DomainName, "AdminPrivacy": (NullOrUndefined Nothing), "RegistrantPrivacy": (NullOrUndefined Nothing), "TechPrivacy": (NullOrUndefined Nothing) }



-- | <p>The UpdateDomainContactPrivacy response includes the following element.</p>
newtype UpdateDomainContactPrivacyResponse = UpdateDomainContactPrivacyResponse 
  { "OperationId" :: (OperationId)
  }
derive instance newtypeUpdateDomainContactPrivacyResponse :: Newtype UpdateDomainContactPrivacyResponse _
derive instance repGenericUpdateDomainContactPrivacyResponse :: Generic UpdateDomainContactPrivacyResponse _
instance showUpdateDomainContactPrivacyResponse :: Show UpdateDomainContactPrivacyResponse where
  show = genericShow
instance decodeUpdateDomainContactPrivacyResponse :: Decode UpdateDomainContactPrivacyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateDomainContactPrivacyResponse :: Encode UpdateDomainContactPrivacyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
  , "AdminContact" :: NullOrUndefined.NullOrUndefined (ContactDetail)
  , "RegistrantContact" :: NullOrUndefined.NullOrUndefined (ContactDetail)
  , "TechContact" :: NullOrUndefined.NullOrUndefined (ContactDetail)
  }
derive instance newtypeUpdateDomainContactRequest :: Newtype UpdateDomainContactRequest _
derive instance repGenericUpdateDomainContactRequest :: Generic UpdateDomainContactRequest _
instance showUpdateDomainContactRequest :: Show UpdateDomainContactRequest where
  show = genericShow
instance decodeUpdateDomainContactRequest :: Decode UpdateDomainContactRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateDomainContactRequest :: Encode UpdateDomainContactRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateDomainContactRequest from required parameters
newUpdateDomainContactRequest :: DomainName -> UpdateDomainContactRequest
newUpdateDomainContactRequest _DomainName = UpdateDomainContactRequest { "DomainName": _DomainName, "AdminContact": (NullOrUndefined Nothing), "RegistrantContact": (NullOrUndefined Nothing), "TechContact": (NullOrUndefined Nothing) }

-- | Constructs UpdateDomainContactRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDomainContactRequest' :: DomainName -> ( { "DomainName" :: (DomainName) , "AdminContact" :: NullOrUndefined.NullOrUndefined (ContactDetail) , "RegistrantContact" :: NullOrUndefined.NullOrUndefined (ContactDetail) , "TechContact" :: NullOrUndefined.NullOrUndefined (ContactDetail) } -> {"DomainName" :: (DomainName) , "AdminContact" :: NullOrUndefined.NullOrUndefined (ContactDetail) , "RegistrantContact" :: NullOrUndefined.NullOrUndefined (ContactDetail) , "TechContact" :: NullOrUndefined.NullOrUndefined (ContactDetail) } ) -> UpdateDomainContactRequest
newUpdateDomainContactRequest' _DomainName customize = (UpdateDomainContactRequest <<< customize) { "DomainName": _DomainName, "AdminContact": (NullOrUndefined Nothing), "RegistrantContact": (NullOrUndefined Nothing), "TechContact": (NullOrUndefined Nothing) }



-- | <p>The UpdateDomainContact response includes the following element.</p>
newtype UpdateDomainContactResponse = UpdateDomainContactResponse 
  { "OperationId" :: (OperationId)
  }
derive instance newtypeUpdateDomainContactResponse :: Newtype UpdateDomainContactResponse _
derive instance repGenericUpdateDomainContactResponse :: Generic UpdateDomainContactResponse _
instance showUpdateDomainContactResponse :: Show UpdateDomainContactResponse where
  show = genericShow
instance decodeUpdateDomainContactResponse :: Decode UpdateDomainContactResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateDomainContactResponse :: Encode UpdateDomainContactResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
  , "FIAuthKey" :: NullOrUndefined.NullOrUndefined (FIAuthKey)
  , "Nameservers" :: (NameserverList)
  }
derive instance newtypeUpdateDomainNameserversRequest :: Newtype UpdateDomainNameserversRequest _
derive instance repGenericUpdateDomainNameserversRequest :: Generic UpdateDomainNameserversRequest _
instance showUpdateDomainNameserversRequest :: Show UpdateDomainNameserversRequest where
  show = genericShow
instance decodeUpdateDomainNameserversRequest :: Decode UpdateDomainNameserversRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateDomainNameserversRequest :: Encode UpdateDomainNameserversRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateDomainNameserversRequest from required parameters
newUpdateDomainNameserversRequest :: DomainName -> NameserverList -> UpdateDomainNameserversRequest
newUpdateDomainNameserversRequest _DomainName _Nameservers = UpdateDomainNameserversRequest { "DomainName": _DomainName, "Nameservers": _Nameservers, "FIAuthKey": (NullOrUndefined Nothing) }

-- | Constructs UpdateDomainNameserversRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDomainNameserversRequest' :: DomainName -> NameserverList -> ( { "DomainName" :: (DomainName) , "FIAuthKey" :: NullOrUndefined.NullOrUndefined (FIAuthKey) , "Nameservers" :: (NameserverList) } -> {"DomainName" :: (DomainName) , "FIAuthKey" :: NullOrUndefined.NullOrUndefined (FIAuthKey) , "Nameservers" :: (NameserverList) } ) -> UpdateDomainNameserversRequest
newUpdateDomainNameserversRequest' _DomainName _Nameservers customize = (UpdateDomainNameserversRequest <<< customize) { "DomainName": _DomainName, "Nameservers": _Nameservers, "FIAuthKey": (NullOrUndefined Nothing) }



-- | <p>The UpdateDomainNameservers response includes the following element.</p>
newtype UpdateDomainNameserversResponse = UpdateDomainNameserversResponse 
  { "OperationId" :: (OperationId)
  }
derive instance newtypeUpdateDomainNameserversResponse :: Newtype UpdateDomainNameserversResponse _
derive instance repGenericUpdateDomainNameserversResponse :: Generic UpdateDomainNameserversResponse _
instance showUpdateDomainNameserversResponse :: Show UpdateDomainNameserversResponse where
  show = genericShow
instance decodeUpdateDomainNameserversResponse :: Decode UpdateDomainNameserversResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateDomainNameserversResponse :: Encode UpdateDomainNameserversResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
  , "TagsToUpdate" :: NullOrUndefined.NullOrUndefined (TagList)
  }
derive instance newtypeUpdateTagsForDomainRequest :: Newtype UpdateTagsForDomainRequest _
derive instance repGenericUpdateTagsForDomainRequest :: Generic UpdateTagsForDomainRequest _
instance showUpdateTagsForDomainRequest :: Show UpdateTagsForDomainRequest where
  show = genericShow
instance decodeUpdateTagsForDomainRequest :: Decode UpdateTagsForDomainRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateTagsForDomainRequest :: Encode UpdateTagsForDomainRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateTagsForDomainRequest from required parameters
newUpdateTagsForDomainRequest :: DomainName -> UpdateTagsForDomainRequest
newUpdateTagsForDomainRequest _DomainName = UpdateTagsForDomainRequest { "DomainName": _DomainName, "TagsToUpdate": (NullOrUndefined Nothing) }

-- | Constructs UpdateTagsForDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateTagsForDomainRequest' :: DomainName -> ( { "DomainName" :: (DomainName) , "TagsToUpdate" :: NullOrUndefined.NullOrUndefined (TagList) } -> {"DomainName" :: (DomainName) , "TagsToUpdate" :: NullOrUndefined.NullOrUndefined (TagList) } ) -> UpdateTagsForDomainRequest
newUpdateTagsForDomainRequest' _DomainName customize = (UpdateTagsForDomainRequest <<< customize) { "DomainName": _DomainName, "TagsToUpdate": (NullOrUndefined Nothing) }



newtype UpdateTagsForDomainResponse = UpdateTagsForDomainResponse Types.NoArguments
derive instance newtypeUpdateTagsForDomainResponse :: Newtype UpdateTagsForDomainResponse _
derive instance repGenericUpdateTagsForDomainResponse :: Generic UpdateTagsForDomainResponse _
instance showUpdateTagsForDomainResponse :: Show UpdateTagsForDomainResponse where
  show = genericShow
instance decodeUpdateTagsForDomainResponse :: Decode UpdateTagsForDomainResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateTagsForDomainResponse :: Encode UpdateTagsForDomainResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The ViewBilling request includes the following elements.</p>
newtype ViewBillingRequest = ViewBillingRequest 
  { "Start" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "End" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "Marker" :: NullOrUndefined.NullOrUndefined (PageMarker)
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (PageMaxItems)
  }
derive instance newtypeViewBillingRequest :: Newtype ViewBillingRequest _
derive instance repGenericViewBillingRequest :: Generic ViewBillingRequest _
instance showViewBillingRequest :: Show ViewBillingRequest where
  show = genericShow
instance decodeViewBillingRequest :: Decode ViewBillingRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeViewBillingRequest :: Encode ViewBillingRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ViewBillingRequest from required parameters
newViewBillingRequest :: ViewBillingRequest
newViewBillingRequest  = ViewBillingRequest { "End": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "Start": (NullOrUndefined Nothing) }

-- | Constructs ViewBillingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newViewBillingRequest' :: ( { "Start" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "End" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Marker" :: NullOrUndefined.NullOrUndefined (PageMarker) , "MaxItems" :: NullOrUndefined.NullOrUndefined (PageMaxItems) } -> {"Start" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "End" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Marker" :: NullOrUndefined.NullOrUndefined (PageMarker) , "MaxItems" :: NullOrUndefined.NullOrUndefined (PageMaxItems) } ) -> ViewBillingRequest
newViewBillingRequest'  customize = (ViewBillingRequest <<< customize) { "End": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing), "Start": (NullOrUndefined Nothing) }



-- | <p>The ViewBilling response includes the following elements.</p>
newtype ViewBillingResponse = ViewBillingResponse 
  { "NextPageMarker" :: NullOrUndefined.NullOrUndefined (PageMarker)
  , "BillingRecords" :: NullOrUndefined.NullOrUndefined (BillingRecords)
  }
derive instance newtypeViewBillingResponse :: Newtype ViewBillingResponse _
derive instance repGenericViewBillingResponse :: Generic ViewBillingResponse _
instance showViewBillingResponse :: Show ViewBillingResponse where
  show = genericShow
instance decodeViewBillingResponse :: Decode ViewBillingResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeViewBillingResponse :: Encode ViewBillingResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ViewBillingResponse from required parameters
newViewBillingResponse :: ViewBillingResponse
newViewBillingResponse  = ViewBillingResponse { "BillingRecords": (NullOrUndefined Nothing), "NextPageMarker": (NullOrUndefined Nothing) }

-- | Constructs ViewBillingResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newViewBillingResponse' :: ( { "NextPageMarker" :: NullOrUndefined.NullOrUndefined (PageMarker) , "BillingRecords" :: NullOrUndefined.NullOrUndefined (BillingRecords) } -> {"NextPageMarker" :: NullOrUndefined.NullOrUndefined (PageMarker) , "BillingRecords" :: NullOrUndefined.NullOrUndefined (BillingRecords) } ) -> ViewBillingResponse
newViewBillingResponse'  customize = (ViewBillingResponse <<< customize) { "BillingRecords": (NullOrUndefined Nothing), "NextPageMarker": (NullOrUndefined Nothing) }



newtype ZipCode = ZipCode String
derive instance newtypeZipCode :: Newtype ZipCode _
derive instance repGenericZipCode :: Generic ZipCode _
instance showZipCode :: Show ZipCode where
  show = genericShow
instance decodeZipCode :: Decode ZipCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeZipCode :: Encode ZipCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

