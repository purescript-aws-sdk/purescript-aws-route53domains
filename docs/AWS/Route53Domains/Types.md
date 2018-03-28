## Module AWS.Route53Domains.Types

#### `options`

``` purescript
options :: Options
```

#### `AddressLine`

``` purescript
newtype AddressLine
  = AddressLine String
```

##### Instances
``` purescript
Newtype AddressLine _
Generic AddressLine _
Show AddressLine
Decode AddressLine
Encode AddressLine
```

#### `BillingRecord`

``` purescript
newtype BillingRecord
  = BillingRecord { "DomainName" :: NullOrUndefined (DomainName), "Operation" :: NullOrUndefined (OperationType), "InvoiceId" :: NullOrUndefined (InvoiceId), "BillDate" :: NullOrUndefined (Timestamp), "Price" :: NullOrUndefined (Price) }
```

<p>Information for one billing record.</p>

##### Instances
``` purescript
Newtype BillingRecord _
Generic BillingRecord _
Show BillingRecord
Decode BillingRecord
Encode BillingRecord
```

#### `newBillingRecord`

``` purescript
newBillingRecord :: BillingRecord
```

Constructs BillingRecord from required parameters

#### `newBillingRecord'`

``` purescript
newBillingRecord' :: ({ "DomainName" :: NullOrUndefined (DomainName), "Operation" :: NullOrUndefined (OperationType), "InvoiceId" :: NullOrUndefined (InvoiceId), "BillDate" :: NullOrUndefined (Timestamp), "Price" :: NullOrUndefined (Price) } -> { "DomainName" :: NullOrUndefined (DomainName), "Operation" :: NullOrUndefined (OperationType), "InvoiceId" :: NullOrUndefined (InvoiceId), "BillDate" :: NullOrUndefined (Timestamp), "Price" :: NullOrUndefined (Price) }) -> BillingRecord
```

Constructs BillingRecord's fields from required parameters

#### `BillingRecords`

``` purescript
newtype BillingRecords
  = BillingRecords (Array BillingRecord)
```

##### Instances
``` purescript
Newtype BillingRecords _
Generic BillingRecords _
Show BillingRecords
Decode BillingRecords
Encode BillingRecords
```

#### `CheckDomainAvailabilityRequest`

``` purescript
newtype CheckDomainAvailabilityRequest
  = CheckDomainAvailabilityRequest { "DomainName" :: DomainName, "IdnLangCode" :: NullOrUndefined (LangCode) }
```

<p>The CheckDomainAvailability request contains the following elements.</p>

##### Instances
``` purescript
Newtype CheckDomainAvailabilityRequest _
Generic CheckDomainAvailabilityRequest _
Show CheckDomainAvailabilityRequest
Decode CheckDomainAvailabilityRequest
Encode CheckDomainAvailabilityRequest
```

#### `newCheckDomainAvailabilityRequest`

``` purescript
newCheckDomainAvailabilityRequest :: DomainName -> CheckDomainAvailabilityRequest
```

Constructs CheckDomainAvailabilityRequest from required parameters

#### `newCheckDomainAvailabilityRequest'`

``` purescript
newCheckDomainAvailabilityRequest' :: DomainName -> ({ "DomainName" :: DomainName, "IdnLangCode" :: NullOrUndefined (LangCode) } -> { "DomainName" :: DomainName, "IdnLangCode" :: NullOrUndefined (LangCode) }) -> CheckDomainAvailabilityRequest
```

Constructs CheckDomainAvailabilityRequest's fields from required parameters

#### `CheckDomainAvailabilityResponse`

``` purescript
newtype CheckDomainAvailabilityResponse
  = CheckDomainAvailabilityResponse { "Availability" :: DomainAvailability }
```

<p>The CheckDomainAvailability response includes the following elements.</p>

##### Instances
``` purescript
Newtype CheckDomainAvailabilityResponse _
Generic CheckDomainAvailabilityResponse _
Show CheckDomainAvailabilityResponse
Decode CheckDomainAvailabilityResponse
Encode CheckDomainAvailabilityResponse
```

#### `newCheckDomainAvailabilityResponse`

``` purescript
newCheckDomainAvailabilityResponse :: DomainAvailability -> CheckDomainAvailabilityResponse
```

Constructs CheckDomainAvailabilityResponse from required parameters

#### `newCheckDomainAvailabilityResponse'`

``` purescript
newCheckDomainAvailabilityResponse' :: DomainAvailability -> ({ "Availability" :: DomainAvailability } -> { "Availability" :: DomainAvailability }) -> CheckDomainAvailabilityResponse
```

Constructs CheckDomainAvailabilityResponse's fields from required parameters

#### `CheckDomainTransferabilityRequest`

``` purescript
newtype CheckDomainTransferabilityRequest
  = CheckDomainTransferabilityRequest { "DomainName" :: DomainName, "AuthCode" :: NullOrUndefined (DomainAuthCode) }
```

<p>The CheckDomainTransferability request contains the following elements.</p>

##### Instances
``` purescript
Newtype CheckDomainTransferabilityRequest _
Generic CheckDomainTransferabilityRequest _
Show CheckDomainTransferabilityRequest
Decode CheckDomainTransferabilityRequest
Encode CheckDomainTransferabilityRequest
```

#### `newCheckDomainTransferabilityRequest`

``` purescript
newCheckDomainTransferabilityRequest :: DomainName -> CheckDomainTransferabilityRequest
```

Constructs CheckDomainTransferabilityRequest from required parameters

#### `newCheckDomainTransferabilityRequest'`

``` purescript
newCheckDomainTransferabilityRequest' :: DomainName -> ({ "DomainName" :: DomainName, "AuthCode" :: NullOrUndefined (DomainAuthCode) } -> { "DomainName" :: DomainName, "AuthCode" :: NullOrUndefined (DomainAuthCode) }) -> CheckDomainTransferabilityRequest
```

Constructs CheckDomainTransferabilityRequest's fields from required parameters

#### `CheckDomainTransferabilityResponse`

``` purescript
newtype CheckDomainTransferabilityResponse
  = CheckDomainTransferabilityResponse { "Transferability" :: DomainTransferability }
```

<p>The CheckDomainTransferability response includes the following elements.</p>

##### Instances
``` purescript
Newtype CheckDomainTransferabilityResponse _
Generic CheckDomainTransferabilityResponse _
Show CheckDomainTransferabilityResponse
Decode CheckDomainTransferabilityResponse
Encode CheckDomainTransferabilityResponse
```

#### `newCheckDomainTransferabilityResponse`

``` purescript
newCheckDomainTransferabilityResponse :: DomainTransferability -> CheckDomainTransferabilityResponse
```

Constructs CheckDomainTransferabilityResponse from required parameters

#### `newCheckDomainTransferabilityResponse'`

``` purescript
newCheckDomainTransferabilityResponse' :: DomainTransferability -> ({ "Transferability" :: DomainTransferability } -> { "Transferability" :: DomainTransferability }) -> CheckDomainTransferabilityResponse
```

Constructs CheckDomainTransferabilityResponse's fields from required parameters

#### `City`

``` purescript
newtype City
  = City String
```

##### Instances
``` purescript
Newtype City _
Generic City _
Show City
Decode City
Encode City
```

#### `ContactDetail`

``` purescript
newtype ContactDetail
  = ContactDetail { "FirstName" :: NullOrUndefined (ContactName), "LastName" :: NullOrUndefined (ContactName), "ContactType" :: NullOrUndefined (ContactType), "OrganizationName" :: NullOrUndefined (ContactName), "AddressLine1" :: NullOrUndefined (AddressLine), "AddressLine2" :: NullOrUndefined (AddressLine), "City" :: NullOrUndefined (City), "State" :: NullOrUndefined (State), "CountryCode" :: NullOrUndefined (CountryCode), "ZipCode" :: NullOrUndefined (ZipCode), "PhoneNumber" :: NullOrUndefined (ContactNumber), "Email" :: NullOrUndefined (Email), "Fax" :: NullOrUndefined (ContactNumber), "ExtraParams" :: NullOrUndefined (ExtraParamList) }
```

<p>ContactDetail includes the following elements.</p>

##### Instances
``` purescript
Newtype ContactDetail _
Generic ContactDetail _
Show ContactDetail
Decode ContactDetail
Encode ContactDetail
```

#### `newContactDetail`

``` purescript
newContactDetail :: ContactDetail
```

Constructs ContactDetail from required parameters

#### `newContactDetail'`

``` purescript
newContactDetail' :: ({ "FirstName" :: NullOrUndefined (ContactName), "LastName" :: NullOrUndefined (ContactName), "ContactType" :: NullOrUndefined (ContactType), "OrganizationName" :: NullOrUndefined (ContactName), "AddressLine1" :: NullOrUndefined (AddressLine), "AddressLine2" :: NullOrUndefined (AddressLine), "City" :: NullOrUndefined (City), "State" :: NullOrUndefined (State), "CountryCode" :: NullOrUndefined (CountryCode), "ZipCode" :: NullOrUndefined (ZipCode), "PhoneNumber" :: NullOrUndefined (ContactNumber), "Email" :: NullOrUndefined (Email), "Fax" :: NullOrUndefined (ContactNumber), "ExtraParams" :: NullOrUndefined (ExtraParamList) } -> { "FirstName" :: NullOrUndefined (ContactName), "LastName" :: NullOrUndefined (ContactName), "ContactType" :: NullOrUndefined (ContactType), "OrganizationName" :: NullOrUndefined (ContactName), "AddressLine1" :: NullOrUndefined (AddressLine), "AddressLine2" :: NullOrUndefined (AddressLine), "City" :: NullOrUndefined (City), "State" :: NullOrUndefined (State), "CountryCode" :: NullOrUndefined (CountryCode), "ZipCode" :: NullOrUndefined (ZipCode), "PhoneNumber" :: NullOrUndefined (ContactNumber), "Email" :: NullOrUndefined (Email), "Fax" :: NullOrUndefined (ContactNumber), "ExtraParams" :: NullOrUndefined (ExtraParamList) }) -> ContactDetail
```

Constructs ContactDetail's fields from required parameters

#### `ContactName`

``` purescript
newtype ContactName
  = ContactName String
```

##### Instances
``` purescript
Newtype ContactName _
Generic ContactName _
Show ContactName
Decode ContactName
Encode ContactName
```

#### `ContactNumber`

``` purescript
newtype ContactNumber
  = ContactNumber String
```

##### Instances
``` purescript
Newtype ContactNumber _
Generic ContactNumber _
Show ContactNumber
Decode ContactNumber
Encode ContactNumber
```

#### `ContactType`

``` purescript
newtype ContactType
  = ContactType String
```

##### Instances
``` purescript
Newtype ContactType _
Generic ContactType _
Show ContactType
Decode ContactType
Encode ContactType
```

#### `CountryCode`

``` purescript
newtype CountryCode
  = CountryCode String
```

##### Instances
``` purescript
Newtype CountryCode _
Generic CountryCode _
Show CountryCode
Decode CountryCode
Encode CountryCode
```

#### `CurrentExpiryYear`

``` purescript
newtype CurrentExpiryYear
  = CurrentExpiryYear Int
```

##### Instances
``` purescript
Newtype CurrentExpiryYear _
Generic CurrentExpiryYear _
Show CurrentExpiryYear
Decode CurrentExpiryYear
Encode CurrentExpiryYear
```

#### `DNSSec`

``` purescript
newtype DNSSec
  = DNSSec String
```

##### Instances
``` purescript
Newtype DNSSec _
Generic DNSSec _
Show DNSSec
Decode DNSSec
Encode DNSSec
```

#### `DeleteTagsForDomainRequest`

``` purescript
newtype DeleteTagsForDomainRequest
  = DeleteTagsForDomainRequest { "DomainName" :: DomainName, "TagsToDelete" :: TagKeyList }
```

<p>The DeleteTagsForDomainRequest includes the following elements.</p>

##### Instances
``` purescript
Newtype DeleteTagsForDomainRequest _
Generic DeleteTagsForDomainRequest _
Show DeleteTagsForDomainRequest
Decode DeleteTagsForDomainRequest
Encode DeleteTagsForDomainRequest
```

#### `newDeleteTagsForDomainRequest`

``` purescript
newDeleteTagsForDomainRequest :: DomainName -> TagKeyList -> DeleteTagsForDomainRequest
```

Constructs DeleteTagsForDomainRequest from required parameters

#### `newDeleteTagsForDomainRequest'`

``` purescript
newDeleteTagsForDomainRequest' :: DomainName -> TagKeyList -> ({ "DomainName" :: DomainName, "TagsToDelete" :: TagKeyList } -> { "DomainName" :: DomainName, "TagsToDelete" :: TagKeyList }) -> DeleteTagsForDomainRequest
```

Constructs DeleteTagsForDomainRequest's fields from required parameters

#### `DeleteTagsForDomainResponse`

``` purescript
newtype DeleteTagsForDomainResponse
  = DeleteTagsForDomainResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteTagsForDomainResponse _
Generic DeleteTagsForDomainResponse _
Show DeleteTagsForDomainResponse
Decode DeleteTagsForDomainResponse
Encode DeleteTagsForDomainResponse
```

#### `DisableDomainAutoRenewRequest`

``` purescript
newtype DisableDomainAutoRenewRequest
  = DisableDomainAutoRenewRequest { "DomainName" :: DomainName }
```

##### Instances
``` purescript
Newtype DisableDomainAutoRenewRequest _
Generic DisableDomainAutoRenewRequest _
Show DisableDomainAutoRenewRequest
Decode DisableDomainAutoRenewRequest
Encode DisableDomainAutoRenewRequest
```

#### `newDisableDomainAutoRenewRequest`

``` purescript
newDisableDomainAutoRenewRequest :: DomainName -> DisableDomainAutoRenewRequest
```

Constructs DisableDomainAutoRenewRequest from required parameters

#### `newDisableDomainAutoRenewRequest'`

``` purescript
newDisableDomainAutoRenewRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> DisableDomainAutoRenewRequest
```

Constructs DisableDomainAutoRenewRequest's fields from required parameters

#### `DisableDomainAutoRenewResponse`

``` purescript
newtype DisableDomainAutoRenewResponse
  = DisableDomainAutoRenewResponse NoArguments
```

##### Instances
``` purescript
Newtype DisableDomainAutoRenewResponse _
Generic DisableDomainAutoRenewResponse _
Show DisableDomainAutoRenewResponse
Decode DisableDomainAutoRenewResponse
Encode DisableDomainAutoRenewResponse
```

#### `DisableDomainTransferLockRequest`

``` purescript
newtype DisableDomainTransferLockRequest
  = DisableDomainTransferLockRequest { "DomainName" :: DomainName }
```

<p>The DisableDomainTransferLock request includes the following element.</p>

##### Instances
``` purescript
Newtype DisableDomainTransferLockRequest _
Generic DisableDomainTransferLockRequest _
Show DisableDomainTransferLockRequest
Decode DisableDomainTransferLockRequest
Encode DisableDomainTransferLockRequest
```

#### `newDisableDomainTransferLockRequest`

``` purescript
newDisableDomainTransferLockRequest :: DomainName -> DisableDomainTransferLockRequest
```

Constructs DisableDomainTransferLockRequest from required parameters

#### `newDisableDomainTransferLockRequest'`

``` purescript
newDisableDomainTransferLockRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> DisableDomainTransferLockRequest
```

Constructs DisableDomainTransferLockRequest's fields from required parameters

#### `DisableDomainTransferLockResponse`

``` purescript
newtype DisableDomainTransferLockResponse
  = DisableDomainTransferLockResponse { "OperationId" :: OperationId }
```

<p>The DisableDomainTransferLock response includes the following element.</p>

##### Instances
``` purescript
Newtype DisableDomainTransferLockResponse _
Generic DisableDomainTransferLockResponse _
Show DisableDomainTransferLockResponse
Decode DisableDomainTransferLockResponse
Encode DisableDomainTransferLockResponse
```

#### `newDisableDomainTransferLockResponse`

``` purescript
newDisableDomainTransferLockResponse :: OperationId -> DisableDomainTransferLockResponse
```

Constructs DisableDomainTransferLockResponse from required parameters

#### `newDisableDomainTransferLockResponse'`

``` purescript
newDisableDomainTransferLockResponse' :: OperationId -> ({ "OperationId" :: OperationId } -> { "OperationId" :: OperationId }) -> DisableDomainTransferLockResponse
```

Constructs DisableDomainTransferLockResponse's fields from required parameters

#### `DomainAuthCode`

``` purescript
newtype DomainAuthCode
  = DomainAuthCode String
```

##### Instances
``` purescript
Newtype DomainAuthCode _
Generic DomainAuthCode _
Show DomainAuthCode
Decode DomainAuthCode
Encode DomainAuthCode
```

#### `DomainAvailability`

``` purescript
newtype DomainAvailability
  = DomainAvailability String
```

##### Instances
``` purescript
Newtype DomainAvailability _
Generic DomainAvailability _
Show DomainAvailability
Decode DomainAvailability
Encode DomainAvailability
```

#### `DomainLimitExceeded`

``` purescript
newtype DomainLimitExceeded
  = DomainLimitExceeded { message :: NullOrUndefined (ErrorMessage) }
```

<p>The number of domains has exceeded the allowed threshold for the account.</p>

##### Instances
``` purescript
Newtype DomainLimitExceeded _
Generic DomainLimitExceeded _
Show DomainLimitExceeded
Decode DomainLimitExceeded
Encode DomainLimitExceeded
```

#### `newDomainLimitExceeded`

``` purescript
newDomainLimitExceeded :: DomainLimitExceeded
```

Constructs DomainLimitExceeded from required parameters

#### `newDomainLimitExceeded'`

``` purescript
newDomainLimitExceeded' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> DomainLimitExceeded
```

Constructs DomainLimitExceeded's fields from required parameters

#### `DomainName`

``` purescript
newtype DomainName
  = DomainName String
```

##### Instances
``` purescript
Newtype DomainName _
Generic DomainName _
Show DomainName
Decode DomainName
Encode DomainName
```

#### `DomainStatus`

``` purescript
newtype DomainStatus
  = DomainStatus String
```

##### Instances
``` purescript
Newtype DomainStatus _
Generic DomainStatus _
Show DomainStatus
Decode DomainStatus
Encode DomainStatus
```

#### `DomainStatusList`

``` purescript
newtype DomainStatusList
  = DomainStatusList (Array DomainStatus)
```

##### Instances
``` purescript
Newtype DomainStatusList _
Generic DomainStatusList _
Show DomainStatusList
Decode DomainStatusList
Encode DomainStatusList
```

#### `DomainSuggestion`

``` purescript
newtype DomainSuggestion
  = DomainSuggestion { "DomainName" :: NullOrUndefined (DomainName), "Availability" :: NullOrUndefined (String) }
```

<p>Information about one suggested domain name.</p>

##### Instances
``` purescript
Newtype DomainSuggestion _
Generic DomainSuggestion _
Show DomainSuggestion
Decode DomainSuggestion
Encode DomainSuggestion
```

#### `newDomainSuggestion`

``` purescript
newDomainSuggestion :: DomainSuggestion
```

Constructs DomainSuggestion from required parameters

#### `newDomainSuggestion'`

``` purescript
newDomainSuggestion' :: ({ "DomainName" :: NullOrUndefined (DomainName), "Availability" :: NullOrUndefined (String) } -> { "DomainName" :: NullOrUndefined (DomainName), "Availability" :: NullOrUndefined (String) }) -> DomainSuggestion
```

Constructs DomainSuggestion's fields from required parameters

#### `DomainSuggestionsList`

``` purescript
newtype DomainSuggestionsList
  = DomainSuggestionsList (Array DomainSuggestion)
```

##### Instances
``` purescript
Newtype DomainSuggestionsList _
Generic DomainSuggestionsList _
Show DomainSuggestionsList
Decode DomainSuggestionsList
Encode DomainSuggestionsList
```

#### `DomainSummary`

``` purescript
newtype DomainSummary
  = DomainSummary { "DomainName" :: DomainName, "AutoRenew" :: NullOrUndefined (Boolean), "TransferLock" :: NullOrUndefined (Boolean), "Expiry" :: NullOrUndefined (Timestamp) }
```

<p>Summary information about one domain.</p>

##### Instances
``` purescript
Newtype DomainSummary _
Generic DomainSummary _
Show DomainSummary
Decode DomainSummary
Encode DomainSummary
```

#### `newDomainSummary`

``` purescript
newDomainSummary :: DomainName -> DomainSummary
```

Constructs DomainSummary from required parameters

#### `newDomainSummary'`

``` purescript
newDomainSummary' :: DomainName -> ({ "DomainName" :: DomainName, "AutoRenew" :: NullOrUndefined (Boolean), "TransferLock" :: NullOrUndefined (Boolean), "Expiry" :: NullOrUndefined (Timestamp) } -> { "DomainName" :: DomainName, "AutoRenew" :: NullOrUndefined (Boolean), "TransferLock" :: NullOrUndefined (Boolean), "Expiry" :: NullOrUndefined (Timestamp) }) -> DomainSummary
```

Constructs DomainSummary's fields from required parameters

#### `DomainSummaryList`

``` purescript
newtype DomainSummaryList
  = DomainSummaryList (Array DomainSummary)
```

##### Instances
``` purescript
Newtype DomainSummaryList _
Generic DomainSummaryList _
Show DomainSummaryList
Decode DomainSummaryList
Encode DomainSummaryList
```

#### `DomainTransferability`

``` purescript
newtype DomainTransferability
  = DomainTransferability { "Transferable" :: NullOrUndefined (Transferable) }
```

##### Instances
``` purescript
Newtype DomainTransferability _
Generic DomainTransferability _
Show DomainTransferability
Decode DomainTransferability
Encode DomainTransferability
```

#### `newDomainTransferability`

``` purescript
newDomainTransferability :: DomainTransferability
```

Constructs DomainTransferability from required parameters

#### `newDomainTransferability'`

``` purescript
newDomainTransferability' :: ({ "Transferable" :: NullOrUndefined (Transferable) } -> { "Transferable" :: NullOrUndefined (Transferable) }) -> DomainTransferability
```

Constructs DomainTransferability's fields from required parameters

#### `DuplicateRequest`

``` purescript
newtype DuplicateRequest
  = DuplicateRequest { message :: NullOrUndefined (ErrorMessage) }
```

<p>The request is already in progress for the domain.</p>

##### Instances
``` purescript
Newtype DuplicateRequest _
Generic DuplicateRequest _
Show DuplicateRequest
Decode DuplicateRequest
Encode DuplicateRequest
```

#### `newDuplicateRequest`

``` purescript
newDuplicateRequest :: DuplicateRequest
```

Constructs DuplicateRequest from required parameters

#### `newDuplicateRequest'`

``` purescript
newDuplicateRequest' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> DuplicateRequest
```

Constructs DuplicateRequest's fields from required parameters

#### `DurationInYears`

``` purescript
newtype DurationInYears
  = DurationInYears Int
```

##### Instances
``` purescript
Newtype DurationInYears _
Generic DurationInYears _
Show DurationInYears
Decode DurationInYears
Encode DurationInYears
```

#### `Email`

``` purescript
newtype Email
  = Email String
```

##### Instances
``` purescript
Newtype Email _
Generic Email _
Show Email
Decode Email
Encode Email
```

#### `EnableDomainAutoRenewRequest`

``` purescript
newtype EnableDomainAutoRenewRequest
  = EnableDomainAutoRenewRequest { "DomainName" :: DomainName }
```

##### Instances
``` purescript
Newtype EnableDomainAutoRenewRequest _
Generic EnableDomainAutoRenewRequest _
Show EnableDomainAutoRenewRequest
Decode EnableDomainAutoRenewRequest
Encode EnableDomainAutoRenewRequest
```

#### `newEnableDomainAutoRenewRequest`

``` purescript
newEnableDomainAutoRenewRequest :: DomainName -> EnableDomainAutoRenewRequest
```

Constructs EnableDomainAutoRenewRequest from required parameters

#### `newEnableDomainAutoRenewRequest'`

``` purescript
newEnableDomainAutoRenewRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> EnableDomainAutoRenewRequest
```

Constructs EnableDomainAutoRenewRequest's fields from required parameters

#### `EnableDomainAutoRenewResponse`

``` purescript
newtype EnableDomainAutoRenewResponse
  = EnableDomainAutoRenewResponse NoArguments
```

##### Instances
``` purescript
Newtype EnableDomainAutoRenewResponse _
Generic EnableDomainAutoRenewResponse _
Show EnableDomainAutoRenewResponse
Decode EnableDomainAutoRenewResponse
Encode EnableDomainAutoRenewResponse
```

#### `EnableDomainTransferLockRequest`

``` purescript
newtype EnableDomainTransferLockRequest
  = EnableDomainTransferLockRequest { "DomainName" :: DomainName }
```

<p>A request to set the transfer lock for the specified domain.</p>

##### Instances
``` purescript
Newtype EnableDomainTransferLockRequest _
Generic EnableDomainTransferLockRequest _
Show EnableDomainTransferLockRequest
Decode EnableDomainTransferLockRequest
Encode EnableDomainTransferLockRequest
```

#### `newEnableDomainTransferLockRequest`

``` purescript
newEnableDomainTransferLockRequest :: DomainName -> EnableDomainTransferLockRequest
```

Constructs EnableDomainTransferLockRequest from required parameters

#### `newEnableDomainTransferLockRequest'`

``` purescript
newEnableDomainTransferLockRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> EnableDomainTransferLockRequest
```

Constructs EnableDomainTransferLockRequest's fields from required parameters

#### `EnableDomainTransferLockResponse`

``` purescript
newtype EnableDomainTransferLockResponse
  = EnableDomainTransferLockResponse { "OperationId" :: OperationId }
```

<p>The EnableDomainTransferLock response includes the following elements.</p>

##### Instances
``` purescript
Newtype EnableDomainTransferLockResponse _
Generic EnableDomainTransferLockResponse _
Show EnableDomainTransferLockResponse
Decode EnableDomainTransferLockResponse
Encode EnableDomainTransferLockResponse
```

#### `newEnableDomainTransferLockResponse`

``` purescript
newEnableDomainTransferLockResponse :: OperationId -> EnableDomainTransferLockResponse
```

Constructs EnableDomainTransferLockResponse from required parameters

#### `newEnableDomainTransferLockResponse'`

``` purescript
newEnableDomainTransferLockResponse' :: OperationId -> ({ "OperationId" :: OperationId } -> { "OperationId" :: OperationId }) -> EnableDomainTransferLockResponse
```

Constructs EnableDomainTransferLockResponse's fields from required parameters

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `ExtraParam`

``` purescript
newtype ExtraParam
  = ExtraParam { "Name" :: ExtraParamName, "Value" :: ExtraParamValue }
```

<p>ExtraParam includes the following elements.</p>

##### Instances
``` purescript
Newtype ExtraParam _
Generic ExtraParam _
Show ExtraParam
Decode ExtraParam
Encode ExtraParam
```

#### `newExtraParam`

``` purescript
newExtraParam :: ExtraParamName -> ExtraParamValue -> ExtraParam
```

Constructs ExtraParam from required parameters

#### `newExtraParam'`

``` purescript
newExtraParam' :: ExtraParamName -> ExtraParamValue -> ({ "Name" :: ExtraParamName, "Value" :: ExtraParamValue } -> { "Name" :: ExtraParamName, "Value" :: ExtraParamValue }) -> ExtraParam
```

Constructs ExtraParam's fields from required parameters

#### `ExtraParamList`

``` purescript
newtype ExtraParamList
  = ExtraParamList (Array ExtraParam)
```

##### Instances
``` purescript
Newtype ExtraParamList _
Generic ExtraParamList _
Show ExtraParamList
Decode ExtraParamList
Encode ExtraParamList
```

#### `ExtraParamName`

``` purescript
newtype ExtraParamName
  = ExtraParamName String
```

##### Instances
``` purescript
Newtype ExtraParamName _
Generic ExtraParamName _
Show ExtraParamName
Decode ExtraParamName
Encode ExtraParamName
```

#### `ExtraParamValue`

``` purescript
newtype ExtraParamValue
  = ExtraParamValue String
```

##### Instances
``` purescript
Newtype ExtraParamValue _
Generic ExtraParamValue _
Show ExtraParamValue
Decode ExtraParamValue
Encode ExtraParamValue
```

#### `FIAuthKey`

``` purescript
newtype FIAuthKey
  = FIAuthKey String
```

##### Instances
``` purescript
Newtype FIAuthKey _
Generic FIAuthKey _
Show FIAuthKey
Decode FIAuthKey
Encode FIAuthKey
```

#### `GetContactReachabilityStatusRequest`

``` purescript
newtype GetContactReachabilityStatusRequest
  = GetContactReachabilityStatusRequest { domainName :: NullOrUndefined (DomainName) }
```

##### Instances
``` purescript
Newtype GetContactReachabilityStatusRequest _
Generic GetContactReachabilityStatusRequest _
Show GetContactReachabilityStatusRequest
Decode GetContactReachabilityStatusRequest
Encode GetContactReachabilityStatusRequest
```

#### `newGetContactReachabilityStatusRequest`

``` purescript
newGetContactReachabilityStatusRequest :: GetContactReachabilityStatusRequest
```

Constructs GetContactReachabilityStatusRequest from required parameters

#### `newGetContactReachabilityStatusRequest'`

``` purescript
newGetContactReachabilityStatusRequest' :: ({ domainName :: NullOrUndefined (DomainName) } -> { domainName :: NullOrUndefined (DomainName) }) -> GetContactReachabilityStatusRequest
```

Constructs GetContactReachabilityStatusRequest's fields from required parameters

#### `GetContactReachabilityStatusResponse`

``` purescript
newtype GetContactReachabilityStatusResponse
  = GetContactReachabilityStatusResponse { domainName :: NullOrUndefined (DomainName), status :: NullOrUndefined (ReachabilityStatus) }
```

##### Instances
``` purescript
Newtype GetContactReachabilityStatusResponse _
Generic GetContactReachabilityStatusResponse _
Show GetContactReachabilityStatusResponse
Decode GetContactReachabilityStatusResponse
Encode GetContactReachabilityStatusResponse
```

#### `newGetContactReachabilityStatusResponse`

``` purescript
newGetContactReachabilityStatusResponse :: GetContactReachabilityStatusResponse
```

Constructs GetContactReachabilityStatusResponse from required parameters

#### `newGetContactReachabilityStatusResponse'`

``` purescript
newGetContactReachabilityStatusResponse' :: ({ domainName :: NullOrUndefined (DomainName), status :: NullOrUndefined (ReachabilityStatus) } -> { domainName :: NullOrUndefined (DomainName), status :: NullOrUndefined (ReachabilityStatus) }) -> GetContactReachabilityStatusResponse
```

Constructs GetContactReachabilityStatusResponse's fields from required parameters

#### `GetDomainDetailRequest`

``` purescript
newtype GetDomainDetailRequest
  = GetDomainDetailRequest { "DomainName" :: DomainName }
```

<p>The GetDomainDetail request includes the following element.</p>

##### Instances
``` purescript
Newtype GetDomainDetailRequest _
Generic GetDomainDetailRequest _
Show GetDomainDetailRequest
Decode GetDomainDetailRequest
Encode GetDomainDetailRequest
```

#### `newGetDomainDetailRequest`

``` purescript
newGetDomainDetailRequest :: DomainName -> GetDomainDetailRequest
```

Constructs GetDomainDetailRequest from required parameters

#### `newGetDomainDetailRequest'`

``` purescript
newGetDomainDetailRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> GetDomainDetailRequest
```

Constructs GetDomainDetailRequest's fields from required parameters

#### `GetDomainDetailResponse`

``` purescript
newtype GetDomainDetailResponse
  = GetDomainDetailResponse { "DomainName" :: DomainName, "Nameservers" :: NameserverList, "AutoRenew" :: NullOrUndefined (Boolean), "AdminContact" :: ContactDetail, "RegistrantContact" :: ContactDetail, "TechContact" :: ContactDetail, "AdminPrivacy" :: NullOrUndefined (Boolean), "RegistrantPrivacy" :: NullOrUndefined (Boolean), "TechPrivacy" :: NullOrUndefined (Boolean), "RegistrarName" :: NullOrUndefined (RegistrarName), "WhoIsServer" :: NullOrUndefined (RegistrarWhoIsServer), "RegistrarUrl" :: NullOrUndefined (RegistrarUrl), "AbuseContactEmail" :: NullOrUndefined (Email), "AbuseContactPhone" :: NullOrUndefined (ContactNumber), "RegistryDomainId" :: NullOrUndefined (RegistryDomainId), "CreationDate" :: NullOrUndefined (Timestamp), "UpdatedDate" :: NullOrUndefined (Timestamp), "ExpirationDate" :: NullOrUndefined (Timestamp), "Reseller" :: NullOrUndefined (Reseller), "DnsSec" :: NullOrUndefined (DNSSec), "StatusList" :: NullOrUndefined (DomainStatusList) }
```

<p>The GetDomainDetail response includes the following elements.</p>

##### Instances
``` purescript
Newtype GetDomainDetailResponse _
Generic GetDomainDetailResponse _
Show GetDomainDetailResponse
Decode GetDomainDetailResponse
Encode GetDomainDetailResponse
```

#### `newGetDomainDetailResponse`

``` purescript
newGetDomainDetailResponse :: ContactDetail -> DomainName -> NameserverList -> ContactDetail -> ContactDetail -> GetDomainDetailResponse
```

Constructs GetDomainDetailResponse from required parameters

#### `newGetDomainDetailResponse'`

``` purescript
newGetDomainDetailResponse' :: ContactDetail -> DomainName -> NameserverList -> ContactDetail -> ContactDetail -> ({ "DomainName" :: DomainName, "Nameservers" :: NameserverList, "AutoRenew" :: NullOrUndefined (Boolean), "AdminContact" :: ContactDetail, "RegistrantContact" :: ContactDetail, "TechContact" :: ContactDetail, "AdminPrivacy" :: NullOrUndefined (Boolean), "RegistrantPrivacy" :: NullOrUndefined (Boolean), "TechPrivacy" :: NullOrUndefined (Boolean), "RegistrarName" :: NullOrUndefined (RegistrarName), "WhoIsServer" :: NullOrUndefined (RegistrarWhoIsServer), "RegistrarUrl" :: NullOrUndefined (RegistrarUrl), "AbuseContactEmail" :: NullOrUndefined (Email), "AbuseContactPhone" :: NullOrUndefined (ContactNumber), "RegistryDomainId" :: NullOrUndefined (RegistryDomainId), "CreationDate" :: NullOrUndefined (Timestamp), "UpdatedDate" :: NullOrUndefined (Timestamp), "ExpirationDate" :: NullOrUndefined (Timestamp), "Reseller" :: NullOrUndefined (Reseller), "DnsSec" :: NullOrUndefined (DNSSec), "StatusList" :: NullOrUndefined (DomainStatusList) } -> { "DomainName" :: DomainName, "Nameservers" :: NameserverList, "AutoRenew" :: NullOrUndefined (Boolean), "AdminContact" :: ContactDetail, "RegistrantContact" :: ContactDetail, "TechContact" :: ContactDetail, "AdminPrivacy" :: NullOrUndefined (Boolean), "RegistrantPrivacy" :: NullOrUndefined (Boolean), "TechPrivacy" :: NullOrUndefined (Boolean), "RegistrarName" :: NullOrUndefined (RegistrarName), "WhoIsServer" :: NullOrUndefined (RegistrarWhoIsServer), "RegistrarUrl" :: NullOrUndefined (RegistrarUrl), "AbuseContactEmail" :: NullOrUndefined (Email), "AbuseContactPhone" :: NullOrUndefined (ContactNumber), "RegistryDomainId" :: NullOrUndefined (RegistryDomainId), "CreationDate" :: NullOrUndefined (Timestamp), "UpdatedDate" :: NullOrUndefined (Timestamp), "ExpirationDate" :: NullOrUndefined (Timestamp), "Reseller" :: NullOrUndefined (Reseller), "DnsSec" :: NullOrUndefined (DNSSec), "StatusList" :: NullOrUndefined (DomainStatusList) }) -> GetDomainDetailResponse
```

Constructs GetDomainDetailResponse's fields from required parameters

#### `GetDomainSuggestionsRequest`

``` purescript
newtype GetDomainSuggestionsRequest
  = GetDomainSuggestionsRequest { "DomainName" :: DomainName, "SuggestionCount" :: Int, "OnlyAvailable" :: Boolean }
```

##### Instances
``` purescript
Newtype GetDomainSuggestionsRequest _
Generic GetDomainSuggestionsRequest _
Show GetDomainSuggestionsRequest
Decode GetDomainSuggestionsRequest
Encode GetDomainSuggestionsRequest
```

#### `newGetDomainSuggestionsRequest`

``` purescript
newGetDomainSuggestionsRequest :: DomainName -> Boolean -> Int -> GetDomainSuggestionsRequest
```

Constructs GetDomainSuggestionsRequest from required parameters

#### `newGetDomainSuggestionsRequest'`

``` purescript
newGetDomainSuggestionsRequest' :: DomainName -> Boolean -> Int -> ({ "DomainName" :: DomainName, "SuggestionCount" :: Int, "OnlyAvailable" :: Boolean } -> { "DomainName" :: DomainName, "SuggestionCount" :: Int, "OnlyAvailable" :: Boolean }) -> GetDomainSuggestionsRequest
```

Constructs GetDomainSuggestionsRequest's fields from required parameters

#### `GetDomainSuggestionsResponse`

``` purescript
newtype GetDomainSuggestionsResponse
  = GetDomainSuggestionsResponse { "SuggestionsList" :: NullOrUndefined (DomainSuggestionsList) }
```

##### Instances
``` purescript
Newtype GetDomainSuggestionsResponse _
Generic GetDomainSuggestionsResponse _
Show GetDomainSuggestionsResponse
Decode GetDomainSuggestionsResponse
Encode GetDomainSuggestionsResponse
```

#### `newGetDomainSuggestionsResponse`

``` purescript
newGetDomainSuggestionsResponse :: GetDomainSuggestionsResponse
```

Constructs GetDomainSuggestionsResponse from required parameters

#### `newGetDomainSuggestionsResponse'`

``` purescript
newGetDomainSuggestionsResponse' :: ({ "SuggestionsList" :: NullOrUndefined (DomainSuggestionsList) } -> { "SuggestionsList" :: NullOrUndefined (DomainSuggestionsList) }) -> GetDomainSuggestionsResponse
```

Constructs GetDomainSuggestionsResponse's fields from required parameters

#### `GetOperationDetailRequest`

``` purescript
newtype GetOperationDetailRequest
  = GetOperationDetailRequest { "OperationId" :: OperationId }
```

<p>The <a>GetOperationDetail</a> request includes the following element.</p>

##### Instances
``` purescript
Newtype GetOperationDetailRequest _
Generic GetOperationDetailRequest _
Show GetOperationDetailRequest
Decode GetOperationDetailRequest
Encode GetOperationDetailRequest
```

#### `newGetOperationDetailRequest`

``` purescript
newGetOperationDetailRequest :: OperationId -> GetOperationDetailRequest
```

Constructs GetOperationDetailRequest from required parameters

#### `newGetOperationDetailRequest'`

``` purescript
newGetOperationDetailRequest' :: OperationId -> ({ "OperationId" :: OperationId } -> { "OperationId" :: OperationId }) -> GetOperationDetailRequest
```

Constructs GetOperationDetailRequest's fields from required parameters

#### `GetOperationDetailResponse`

``` purescript
newtype GetOperationDetailResponse
  = GetOperationDetailResponse { "OperationId" :: NullOrUndefined (OperationId), "Status" :: NullOrUndefined (OperationStatus), "Message" :: NullOrUndefined (ErrorMessage), "DomainName" :: NullOrUndefined (DomainName), "Type" :: NullOrUndefined (OperationType), "SubmittedDate" :: NullOrUndefined (Timestamp) }
```

<p>The GetOperationDetail response includes the following elements.</p>

##### Instances
``` purescript
Newtype GetOperationDetailResponse _
Generic GetOperationDetailResponse _
Show GetOperationDetailResponse
Decode GetOperationDetailResponse
Encode GetOperationDetailResponse
```

#### `newGetOperationDetailResponse`

``` purescript
newGetOperationDetailResponse :: GetOperationDetailResponse
```

Constructs GetOperationDetailResponse from required parameters

#### `newGetOperationDetailResponse'`

``` purescript
newGetOperationDetailResponse' :: ({ "OperationId" :: NullOrUndefined (OperationId), "Status" :: NullOrUndefined (OperationStatus), "Message" :: NullOrUndefined (ErrorMessage), "DomainName" :: NullOrUndefined (DomainName), "Type" :: NullOrUndefined (OperationType), "SubmittedDate" :: NullOrUndefined (Timestamp) } -> { "OperationId" :: NullOrUndefined (OperationId), "Status" :: NullOrUndefined (OperationStatus), "Message" :: NullOrUndefined (ErrorMessage), "DomainName" :: NullOrUndefined (DomainName), "Type" :: NullOrUndefined (OperationType), "SubmittedDate" :: NullOrUndefined (Timestamp) }) -> GetOperationDetailResponse
```

Constructs GetOperationDetailResponse's fields from required parameters

#### `GlueIp`

``` purescript
newtype GlueIp
  = GlueIp String
```

##### Instances
``` purescript
Newtype GlueIp _
Generic GlueIp _
Show GlueIp
Decode GlueIp
Encode GlueIp
```

#### `GlueIpList`

``` purescript
newtype GlueIpList
  = GlueIpList (Array GlueIp)
```

##### Instances
``` purescript
Newtype GlueIpList _
Generic GlueIpList _
Show GlueIpList
Decode GlueIpList
Encode GlueIpList
```

#### `HostName`

``` purescript
newtype HostName
  = HostName String
```

##### Instances
``` purescript
Newtype HostName _
Generic HostName _
Show HostName
Decode HostName
Encode HostName
```

#### `InvalidInput`

``` purescript
newtype InvalidInput
  = InvalidInput { message :: NullOrUndefined (ErrorMessage) }
```

<p>The requested item is not acceptable. For example, for an OperationId it might refer to the ID of an operation that is already completed. For a domain name, it might not be a valid domain name or belong to the requester account.</p>

##### Instances
``` purescript
Newtype InvalidInput _
Generic InvalidInput _
Show InvalidInput
Decode InvalidInput
Encode InvalidInput
```

#### `newInvalidInput`

``` purescript
newInvalidInput :: InvalidInput
```

Constructs InvalidInput from required parameters

#### `newInvalidInput'`

``` purescript
newInvalidInput' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InvalidInput
```

Constructs InvalidInput's fields from required parameters

#### `InvoiceId`

``` purescript
newtype InvoiceId
  = InvoiceId String
```

##### Instances
``` purescript
Newtype InvoiceId _
Generic InvoiceId _
Show InvoiceId
Decode InvoiceId
Encode InvoiceId
```

#### `LangCode`

``` purescript
newtype LangCode
  = LangCode String
```

##### Instances
``` purescript
Newtype LangCode _
Generic LangCode _
Show LangCode
Decode LangCode
Encode LangCode
```

#### `ListDomainsRequest`

``` purescript
newtype ListDomainsRequest
  = ListDomainsRequest { "Marker" :: NullOrUndefined (PageMarker), "MaxItems" :: NullOrUndefined (PageMaxItems) }
```

<p>The ListDomains request includes the following elements.</p>

##### Instances
``` purescript
Newtype ListDomainsRequest _
Generic ListDomainsRequest _
Show ListDomainsRequest
Decode ListDomainsRequest
Encode ListDomainsRequest
```

#### `newListDomainsRequest`

``` purescript
newListDomainsRequest :: ListDomainsRequest
```

Constructs ListDomainsRequest from required parameters

#### `newListDomainsRequest'`

``` purescript
newListDomainsRequest' :: ({ "Marker" :: NullOrUndefined (PageMarker), "MaxItems" :: NullOrUndefined (PageMaxItems) } -> { "Marker" :: NullOrUndefined (PageMarker), "MaxItems" :: NullOrUndefined (PageMaxItems) }) -> ListDomainsRequest
```

Constructs ListDomainsRequest's fields from required parameters

#### `ListDomainsResponse`

``` purescript
newtype ListDomainsResponse
  = ListDomainsResponse { "Domains" :: DomainSummaryList, "NextPageMarker" :: NullOrUndefined (PageMarker) }
```

<p>The ListDomains response includes the following elements.</p>

##### Instances
``` purescript
Newtype ListDomainsResponse _
Generic ListDomainsResponse _
Show ListDomainsResponse
Decode ListDomainsResponse
Encode ListDomainsResponse
```

#### `newListDomainsResponse`

``` purescript
newListDomainsResponse :: DomainSummaryList -> ListDomainsResponse
```

Constructs ListDomainsResponse from required parameters

#### `newListDomainsResponse'`

``` purescript
newListDomainsResponse' :: DomainSummaryList -> ({ "Domains" :: DomainSummaryList, "NextPageMarker" :: NullOrUndefined (PageMarker) } -> { "Domains" :: DomainSummaryList, "NextPageMarker" :: NullOrUndefined (PageMarker) }) -> ListDomainsResponse
```

Constructs ListDomainsResponse's fields from required parameters

#### `ListOperationsRequest`

``` purescript
newtype ListOperationsRequest
  = ListOperationsRequest { "Marker" :: NullOrUndefined (PageMarker), "MaxItems" :: NullOrUndefined (PageMaxItems) }
```

<p>The ListOperations request includes the following elements.</p>

##### Instances
``` purescript
Newtype ListOperationsRequest _
Generic ListOperationsRequest _
Show ListOperationsRequest
Decode ListOperationsRequest
Encode ListOperationsRequest
```

#### `newListOperationsRequest`

``` purescript
newListOperationsRequest :: ListOperationsRequest
```

Constructs ListOperationsRequest from required parameters

#### `newListOperationsRequest'`

``` purescript
newListOperationsRequest' :: ({ "Marker" :: NullOrUndefined (PageMarker), "MaxItems" :: NullOrUndefined (PageMaxItems) } -> { "Marker" :: NullOrUndefined (PageMarker), "MaxItems" :: NullOrUndefined (PageMaxItems) }) -> ListOperationsRequest
```

Constructs ListOperationsRequest's fields from required parameters

#### `ListOperationsResponse`

``` purescript
newtype ListOperationsResponse
  = ListOperationsResponse { "Operations" :: OperationSummaryList, "NextPageMarker" :: NullOrUndefined (PageMarker) }
```

<p>The ListOperations response includes the following elements.</p>

##### Instances
``` purescript
Newtype ListOperationsResponse _
Generic ListOperationsResponse _
Show ListOperationsResponse
Decode ListOperationsResponse
Encode ListOperationsResponse
```

#### `newListOperationsResponse`

``` purescript
newListOperationsResponse :: OperationSummaryList -> ListOperationsResponse
```

Constructs ListOperationsResponse from required parameters

#### `newListOperationsResponse'`

``` purescript
newListOperationsResponse' :: OperationSummaryList -> ({ "Operations" :: OperationSummaryList, "NextPageMarker" :: NullOrUndefined (PageMarker) } -> { "Operations" :: OperationSummaryList, "NextPageMarker" :: NullOrUndefined (PageMarker) }) -> ListOperationsResponse
```

Constructs ListOperationsResponse's fields from required parameters

#### `ListTagsForDomainRequest`

``` purescript
newtype ListTagsForDomainRequest
  = ListTagsForDomainRequest { "DomainName" :: DomainName }
```

<p>The ListTagsForDomainRequest includes the following elements.</p>

##### Instances
``` purescript
Newtype ListTagsForDomainRequest _
Generic ListTagsForDomainRequest _
Show ListTagsForDomainRequest
Decode ListTagsForDomainRequest
Encode ListTagsForDomainRequest
```

#### `newListTagsForDomainRequest`

``` purescript
newListTagsForDomainRequest :: DomainName -> ListTagsForDomainRequest
```

Constructs ListTagsForDomainRequest from required parameters

#### `newListTagsForDomainRequest'`

``` purescript
newListTagsForDomainRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> ListTagsForDomainRequest
```

Constructs ListTagsForDomainRequest's fields from required parameters

#### `ListTagsForDomainResponse`

``` purescript
newtype ListTagsForDomainResponse
  = ListTagsForDomainResponse { "TagList" :: TagList }
```

<p>The ListTagsForDomain response includes the following elements.</p>

##### Instances
``` purescript
Newtype ListTagsForDomainResponse _
Generic ListTagsForDomainResponse _
Show ListTagsForDomainResponse
Decode ListTagsForDomainResponse
Encode ListTagsForDomainResponse
```

#### `newListTagsForDomainResponse`

``` purescript
newListTagsForDomainResponse :: TagList -> ListTagsForDomainResponse
```

Constructs ListTagsForDomainResponse from required parameters

#### `newListTagsForDomainResponse'`

``` purescript
newListTagsForDomainResponse' :: TagList -> ({ "TagList" :: TagList } -> { "TagList" :: TagList }) -> ListTagsForDomainResponse
```

Constructs ListTagsForDomainResponse's fields from required parameters

#### `Nameserver`

``` purescript
newtype Nameserver
  = Nameserver { "Name" :: HostName, "GlueIps" :: NullOrUndefined (GlueIpList) }
```

<p>Nameserver includes the following elements.</p>

##### Instances
``` purescript
Newtype Nameserver _
Generic Nameserver _
Show Nameserver
Decode Nameserver
Encode Nameserver
```

#### `newNameserver`

``` purescript
newNameserver :: HostName -> Nameserver
```

Constructs Nameserver from required parameters

#### `newNameserver'`

``` purescript
newNameserver' :: HostName -> ({ "Name" :: HostName, "GlueIps" :: NullOrUndefined (GlueIpList) } -> { "Name" :: HostName, "GlueIps" :: NullOrUndefined (GlueIpList) }) -> Nameserver
```

Constructs Nameserver's fields from required parameters

#### `NameserverList`

``` purescript
newtype NameserverList
  = NameserverList (Array Nameserver)
```

##### Instances
``` purescript
Newtype NameserverList _
Generic NameserverList _
Show NameserverList
Decode NameserverList
Encode NameserverList
```

#### `OperationId`

``` purescript
newtype OperationId
  = OperationId String
```

##### Instances
``` purescript
Newtype OperationId _
Generic OperationId _
Show OperationId
Decode OperationId
Encode OperationId
```

#### `OperationLimitExceeded`

``` purescript
newtype OperationLimitExceeded
  = OperationLimitExceeded { message :: NullOrUndefined (ErrorMessage) }
```

<p>The number of operations or jobs running exceeded the allowed threshold for the account.</p>

##### Instances
``` purescript
Newtype OperationLimitExceeded _
Generic OperationLimitExceeded _
Show OperationLimitExceeded
Decode OperationLimitExceeded
Encode OperationLimitExceeded
```

#### `newOperationLimitExceeded`

``` purescript
newOperationLimitExceeded :: OperationLimitExceeded
```

Constructs OperationLimitExceeded from required parameters

#### `newOperationLimitExceeded'`

``` purescript
newOperationLimitExceeded' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> OperationLimitExceeded
```

Constructs OperationLimitExceeded's fields from required parameters

#### `OperationStatus`

``` purescript
newtype OperationStatus
  = OperationStatus String
```

##### Instances
``` purescript
Newtype OperationStatus _
Generic OperationStatus _
Show OperationStatus
Decode OperationStatus
Encode OperationStatus
```

#### `OperationSummary`

``` purescript
newtype OperationSummary
  = OperationSummary { "OperationId" :: OperationId, "Status" :: OperationStatus, "Type" :: OperationType, "SubmittedDate" :: Timestamp }
```

<p>OperationSummary includes the following elements.</p>

##### Instances
``` purescript
Newtype OperationSummary _
Generic OperationSummary _
Show OperationSummary
Decode OperationSummary
Encode OperationSummary
```

#### `newOperationSummary`

``` purescript
newOperationSummary :: OperationId -> OperationStatus -> Timestamp -> OperationType -> OperationSummary
```

Constructs OperationSummary from required parameters

#### `newOperationSummary'`

``` purescript
newOperationSummary' :: OperationId -> OperationStatus -> Timestamp -> OperationType -> ({ "OperationId" :: OperationId, "Status" :: OperationStatus, "Type" :: OperationType, "SubmittedDate" :: Timestamp } -> { "OperationId" :: OperationId, "Status" :: OperationStatus, "Type" :: OperationType, "SubmittedDate" :: Timestamp }) -> OperationSummary
```

Constructs OperationSummary's fields from required parameters

#### `OperationSummaryList`

``` purescript
newtype OperationSummaryList
  = OperationSummaryList (Array OperationSummary)
```

##### Instances
``` purescript
Newtype OperationSummaryList _
Generic OperationSummaryList _
Show OperationSummaryList
Decode OperationSummaryList
Encode OperationSummaryList
```

#### `OperationType`

``` purescript
newtype OperationType
  = OperationType String
```

##### Instances
``` purescript
Newtype OperationType _
Generic OperationType _
Show OperationType
Decode OperationType
Encode OperationType
```

#### `PageMarker`

``` purescript
newtype PageMarker
  = PageMarker String
```

##### Instances
``` purescript
Newtype PageMarker _
Generic PageMarker _
Show PageMarker
Decode PageMarker
Encode PageMarker
```

#### `PageMaxItems`

``` purescript
newtype PageMaxItems
  = PageMaxItems Int
```

##### Instances
``` purescript
Newtype PageMaxItems _
Generic PageMaxItems _
Show PageMaxItems
Decode PageMaxItems
Encode PageMaxItems
```

#### `Price`

``` purescript
newtype Price
  = Price Number
```

##### Instances
``` purescript
Newtype Price _
Generic Price _
Show Price
Decode Price
Encode Price
```

#### `ReachabilityStatus`

``` purescript
newtype ReachabilityStatus
  = ReachabilityStatus String
```

##### Instances
``` purescript
Newtype ReachabilityStatus _
Generic ReachabilityStatus _
Show ReachabilityStatus
Decode ReachabilityStatus
Encode ReachabilityStatus
```

#### `RegisterDomainRequest`

``` purescript
newtype RegisterDomainRequest
  = RegisterDomainRequest { "DomainName" :: DomainName, "IdnLangCode" :: NullOrUndefined (LangCode), "DurationInYears" :: DurationInYears, "AutoRenew" :: NullOrUndefined (Boolean), "AdminContact" :: ContactDetail, "RegistrantContact" :: ContactDetail, "TechContact" :: ContactDetail, "PrivacyProtectAdminContact" :: NullOrUndefined (Boolean), "PrivacyProtectRegistrantContact" :: NullOrUndefined (Boolean), "PrivacyProtectTechContact" :: NullOrUndefined (Boolean) }
```

<p>The RegisterDomain request includes the following elements.</p>

##### Instances
``` purescript
Newtype RegisterDomainRequest _
Generic RegisterDomainRequest _
Show RegisterDomainRequest
Decode RegisterDomainRequest
Encode RegisterDomainRequest
```

#### `newRegisterDomainRequest`

``` purescript
newRegisterDomainRequest :: ContactDetail -> DomainName -> DurationInYears -> ContactDetail -> ContactDetail -> RegisterDomainRequest
```

Constructs RegisterDomainRequest from required parameters

#### `newRegisterDomainRequest'`

``` purescript
newRegisterDomainRequest' :: ContactDetail -> DomainName -> DurationInYears -> ContactDetail -> ContactDetail -> ({ "DomainName" :: DomainName, "IdnLangCode" :: NullOrUndefined (LangCode), "DurationInYears" :: DurationInYears, "AutoRenew" :: NullOrUndefined (Boolean), "AdminContact" :: ContactDetail, "RegistrantContact" :: ContactDetail, "TechContact" :: ContactDetail, "PrivacyProtectAdminContact" :: NullOrUndefined (Boolean), "PrivacyProtectRegistrantContact" :: NullOrUndefined (Boolean), "PrivacyProtectTechContact" :: NullOrUndefined (Boolean) } -> { "DomainName" :: DomainName, "IdnLangCode" :: NullOrUndefined (LangCode), "DurationInYears" :: DurationInYears, "AutoRenew" :: NullOrUndefined (Boolean), "AdminContact" :: ContactDetail, "RegistrantContact" :: ContactDetail, "TechContact" :: ContactDetail, "PrivacyProtectAdminContact" :: NullOrUndefined (Boolean), "PrivacyProtectRegistrantContact" :: NullOrUndefined (Boolean), "PrivacyProtectTechContact" :: NullOrUndefined (Boolean) }) -> RegisterDomainRequest
```

Constructs RegisterDomainRequest's fields from required parameters

#### `RegisterDomainResponse`

``` purescript
newtype RegisterDomainResponse
  = RegisterDomainResponse { "OperationId" :: OperationId }
```

<p>The RegisterDomain response includes the following element.</p>

##### Instances
``` purescript
Newtype RegisterDomainResponse _
Generic RegisterDomainResponse _
Show RegisterDomainResponse
Decode RegisterDomainResponse
Encode RegisterDomainResponse
```

#### `newRegisterDomainResponse`

``` purescript
newRegisterDomainResponse :: OperationId -> RegisterDomainResponse
```

Constructs RegisterDomainResponse from required parameters

#### `newRegisterDomainResponse'`

``` purescript
newRegisterDomainResponse' :: OperationId -> ({ "OperationId" :: OperationId } -> { "OperationId" :: OperationId }) -> RegisterDomainResponse
```

Constructs RegisterDomainResponse's fields from required parameters

#### `RegistrarName`

``` purescript
newtype RegistrarName
  = RegistrarName String
```

##### Instances
``` purescript
Newtype RegistrarName _
Generic RegistrarName _
Show RegistrarName
Decode RegistrarName
Encode RegistrarName
```

#### `RegistrarUrl`

``` purescript
newtype RegistrarUrl
  = RegistrarUrl String
```

##### Instances
``` purescript
Newtype RegistrarUrl _
Generic RegistrarUrl _
Show RegistrarUrl
Decode RegistrarUrl
Encode RegistrarUrl
```

#### `RegistrarWhoIsServer`

``` purescript
newtype RegistrarWhoIsServer
  = RegistrarWhoIsServer String
```

##### Instances
``` purescript
Newtype RegistrarWhoIsServer _
Generic RegistrarWhoIsServer _
Show RegistrarWhoIsServer
Decode RegistrarWhoIsServer
Encode RegistrarWhoIsServer
```

#### `RegistryDomainId`

``` purescript
newtype RegistryDomainId
  = RegistryDomainId String
```

##### Instances
``` purescript
Newtype RegistryDomainId _
Generic RegistryDomainId _
Show RegistryDomainId
Decode RegistryDomainId
Encode RegistryDomainId
```

#### `RenewDomainRequest`

``` purescript
newtype RenewDomainRequest
  = RenewDomainRequest { "DomainName" :: DomainName, "DurationInYears" :: NullOrUndefined (DurationInYears), "CurrentExpiryYear" :: CurrentExpiryYear }
```

<p>A <code>RenewDomain</code> request includes the number of years that you want to renew for and the current expiration year.</p>

##### Instances
``` purescript
Newtype RenewDomainRequest _
Generic RenewDomainRequest _
Show RenewDomainRequest
Decode RenewDomainRequest
Encode RenewDomainRequest
```

#### `newRenewDomainRequest`

``` purescript
newRenewDomainRequest :: CurrentExpiryYear -> DomainName -> RenewDomainRequest
```

Constructs RenewDomainRequest from required parameters

#### `newRenewDomainRequest'`

``` purescript
newRenewDomainRequest' :: CurrentExpiryYear -> DomainName -> ({ "DomainName" :: DomainName, "DurationInYears" :: NullOrUndefined (DurationInYears), "CurrentExpiryYear" :: CurrentExpiryYear } -> { "DomainName" :: DomainName, "DurationInYears" :: NullOrUndefined (DurationInYears), "CurrentExpiryYear" :: CurrentExpiryYear }) -> RenewDomainRequest
```

Constructs RenewDomainRequest's fields from required parameters

#### `RenewDomainResponse`

``` purescript
newtype RenewDomainResponse
  = RenewDomainResponse { "OperationId" :: OperationId }
```

##### Instances
``` purescript
Newtype RenewDomainResponse _
Generic RenewDomainResponse _
Show RenewDomainResponse
Decode RenewDomainResponse
Encode RenewDomainResponse
```

#### `newRenewDomainResponse`

``` purescript
newRenewDomainResponse :: OperationId -> RenewDomainResponse
```

Constructs RenewDomainResponse from required parameters

#### `newRenewDomainResponse'`

``` purescript
newRenewDomainResponse' :: OperationId -> ({ "OperationId" :: OperationId } -> { "OperationId" :: OperationId }) -> RenewDomainResponse
```

Constructs RenewDomainResponse's fields from required parameters

#### `Reseller`

``` purescript
newtype Reseller
  = Reseller String
```

##### Instances
``` purescript
Newtype Reseller _
Generic Reseller _
Show Reseller
Decode Reseller
Encode Reseller
```

#### `ResendContactReachabilityEmailRequest`

``` purescript
newtype ResendContactReachabilityEmailRequest
  = ResendContactReachabilityEmailRequest { domainName :: NullOrUndefined (DomainName) }
```

##### Instances
``` purescript
Newtype ResendContactReachabilityEmailRequest _
Generic ResendContactReachabilityEmailRequest _
Show ResendContactReachabilityEmailRequest
Decode ResendContactReachabilityEmailRequest
Encode ResendContactReachabilityEmailRequest
```

#### `newResendContactReachabilityEmailRequest`

``` purescript
newResendContactReachabilityEmailRequest :: ResendContactReachabilityEmailRequest
```

Constructs ResendContactReachabilityEmailRequest from required parameters

#### `newResendContactReachabilityEmailRequest'`

``` purescript
newResendContactReachabilityEmailRequest' :: ({ domainName :: NullOrUndefined (DomainName) } -> { domainName :: NullOrUndefined (DomainName) }) -> ResendContactReachabilityEmailRequest
```

Constructs ResendContactReachabilityEmailRequest's fields from required parameters

#### `ResendContactReachabilityEmailResponse`

``` purescript
newtype ResendContactReachabilityEmailResponse
  = ResendContactReachabilityEmailResponse { domainName :: NullOrUndefined (DomainName), emailAddress :: NullOrUndefined (Email), isAlreadyVerified :: NullOrUndefined (Boolean) }
```

##### Instances
``` purescript
Newtype ResendContactReachabilityEmailResponse _
Generic ResendContactReachabilityEmailResponse _
Show ResendContactReachabilityEmailResponse
Decode ResendContactReachabilityEmailResponse
Encode ResendContactReachabilityEmailResponse
```

#### `newResendContactReachabilityEmailResponse`

``` purescript
newResendContactReachabilityEmailResponse :: ResendContactReachabilityEmailResponse
```

Constructs ResendContactReachabilityEmailResponse from required parameters

#### `newResendContactReachabilityEmailResponse'`

``` purescript
newResendContactReachabilityEmailResponse' :: ({ domainName :: NullOrUndefined (DomainName), emailAddress :: NullOrUndefined (Email), isAlreadyVerified :: NullOrUndefined (Boolean) } -> { domainName :: NullOrUndefined (DomainName), emailAddress :: NullOrUndefined (Email), isAlreadyVerified :: NullOrUndefined (Boolean) }) -> ResendContactReachabilityEmailResponse
```

Constructs ResendContactReachabilityEmailResponse's fields from required parameters

#### `RetrieveDomainAuthCodeRequest`

``` purescript
newtype RetrieveDomainAuthCodeRequest
  = RetrieveDomainAuthCodeRequest { "DomainName" :: DomainName }
```

<p>A request for the authorization code for the specified domain. To transfer a domain to another registrar, you provide this value to the new registrar.</p>

##### Instances
``` purescript
Newtype RetrieveDomainAuthCodeRequest _
Generic RetrieveDomainAuthCodeRequest _
Show RetrieveDomainAuthCodeRequest
Decode RetrieveDomainAuthCodeRequest
Encode RetrieveDomainAuthCodeRequest
```

#### `newRetrieveDomainAuthCodeRequest`

``` purescript
newRetrieveDomainAuthCodeRequest :: DomainName -> RetrieveDomainAuthCodeRequest
```

Constructs RetrieveDomainAuthCodeRequest from required parameters

#### `newRetrieveDomainAuthCodeRequest'`

``` purescript
newRetrieveDomainAuthCodeRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> RetrieveDomainAuthCodeRequest
```

Constructs RetrieveDomainAuthCodeRequest's fields from required parameters

#### `RetrieveDomainAuthCodeResponse`

``` purescript
newtype RetrieveDomainAuthCodeResponse
  = RetrieveDomainAuthCodeResponse { "AuthCode" :: DomainAuthCode }
```

<p>The RetrieveDomainAuthCode response includes the following element.</p>

##### Instances
``` purescript
Newtype RetrieveDomainAuthCodeResponse _
Generic RetrieveDomainAuthCodeResponse _
Show RetrieveDomainAuthCodeResponse
Decode RetrieveDomainAuthCodeResponse
Encode RetrieveDomainAuthCodeResponse
```

#### `newRetrieveDomainAuthCodeResponse`

``` purescript
newRetrieveDomainAuthCodeResponse :: DomainAuthCode -> RetrieveDomainAuthCodeResponse
```

Constructs RetrieveDomainAuthCodeResponse from required parameters

#### `newRetrieveDomainAuthCodeResponse'`

``` purescript
newRetrieveDomainAuthCodeResponse' :: DomainAuthCode -> ({ "AuthCode" :: DomainAuthCode } -> { "AuthCode" :: DomainAuthCode }) -> RetrieveDomainAuthCodeResponse
```

Constructs RetrieveDomainAuthCodeResponse's fields from required parameters

#### `State`

``` purescript
newtype State
  = State String
```

##### Instances
``` purescript
Newtype State _
Generic State _
Show State
Decode State
Encode State
```

#### `TLDRulesViolation`

``` purescript
newtype TLDRulesViolation
  = TLDRulesViolation { message :: NullOrUndefined (ErrorMessage) }
```

<p>The top-level domain does not support this operation.</p>

##### Instances
``` purescript
Newtype TLDRulesViolation _
Generic TLDRulesViolation _
Show TLDRulesViolation
Decode TLDRulesViolation
Encode TLDRulesViolation
```

#### `newTLDRulesViolation`

``` purescript
newTLDRulesViolation :: TLDRulesViolation
```

Constructs TLDRulesViolation from required parameters

#### `newTLDRulesViolation'`

``` purescript
newTLDRulesViolation' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> TLDRulesViolation
```

Constructs TLDRulesViolation's fields from required parameters

#### `Tag`

``` purescript
newtype Tag
  = Tag { "Key" :: NullOrUndefined (TagKey), "Value" :: NullOrUndefined (TagValue) }
```

<p>Each tag includes the following elements.</p>

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: ({ "Key" :: NullOrUndefined (TagKey), "Value" :: NullOrUndefined (TagValue) } -> { "Key" :: NullOrUndefined (TagKey), "Value" :: NullOrUndefined (TagValue) }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagKeyList`

``` purescript
newtype TagKeyList
  = TagKeyList (Array TagKey)
```

##### Instances
``` purescript
Newtype TagKeyList _
Generic TagKeyList _
Show TagKeyList
Decode TagKeyList
Encode TagKeyList
```

#### `TagList`

``` purescript
newtype TagList
  = TagList (Array Tag)
```

##### Instances
``` purescript
Newtype TagList _
Generic TagList _
Show TagList
Decode TagList
Encode TagList
```

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `TransferDomainRequest`

``` purescript
newtype TransferDomainRequest
  = TransferDomainRequest { "DomainName" :: DomainName, "IdnLangCode" :: NullOrUndefined (LangCode), "DurationInYears" :: DurationInYears, "Nameservers" :: NullOrUndefined (NameserverList), "AuthCode" :: NullOrUndefined (DomainAuthCode), "AutoRenew" :: NullOrUndefined (Boolean), "AdminContact" :: ContactDetail, "RegistrantContact" :: ContactDetail, "TechContact" :: ContactDetail, "PrivacyProtectAdminContact" :: NullOrUndefined (Boolean), "PrivacyProtectRegistrantContact" :: NullOrUndefined (Boolean), "PrivacyProtectTechContact" :: NullOrUndefined (Boolean) }
```

<p>The TransferDomain request includes the following elements.</p>

##### Instances
``` purescript
Newtype TransferDomainRequest _
Generic TransferDomainRequest _
Show TransferDomainRequest
Decode TransferDomainRequest
Encode TransferDomainRequest
```

#### `newTransferDomainRequest`

``` purescript
newTransferDomainRequest :: ContactDetail -> DomainName -> DurationInYears -> ContactDetail -> ContactDetail -> TransferDomainRequest
```

Constructs TransferDomainRequest from required parameters

#### `newTransferDomainRequest'`

``` purescript
newTransferDomainRequest' :: ContactDetail -> DomainName -> DurationInYears -> ContactDetail -> ContactDetail -> ({ "DomainName" :: DomainName, "IdnLangCode" :: NullOrUndefined (LangCode), "DurationInYears" :: DurationInYears, "Nameservers" :: NullOrUndefined (NameserverList), "AuthCode" :: NullOrUndefined (DomainAuthCode), "AutoRenew" :: NullOrUndefined (Boolean), "AdminContact" :: ContactDetail, "RegistrantContact" :: ContactDetail, "TechContact" :: ContactDetail, "PrivacyProtectAdminContact" :: NullOrUndefined (Boolean), "PrivacyProtectRegistrantContact" :: NullOrUndefined (Boolean), "PrivacyProtectTechContact" :: NullOrUndefined (Boolean) } -> { "DomainName" :: DomainName, "IdnLangCode" :: NullOrUndefined (LangCode), "DurationInYears" :: DurationInYears, "Nameservers" :: NullOrUndefined (NameserverList), "AuthCode" :: NullOrUndefined (DomainAuthCode), "AutoRenew" :: NullOrUndefined (Boolean), "AdminContact" :: ContactDetail, "RegistrantContact" :: ContactDetail, "TechContact" :: ContactDetail, "PrivacyProtectAdminContact" :: NullOrUndefined (Boolean), "PrivacyProtectRegistrantContact" :: NullOrUndefined (Boolean), "PrivacyProtectTechContact" :: NullOrUndefined (Boolean) }) -> TransferDomainRequest
```

Constructs TransferDomainRequest's fields from required parameters

#### `TransferDomainResponse`

``` purescript
newtype TransferDomainResponse
  = TransferDomainResponse { "OperationId" :: OperationId }
```

<p>The TranserDomain response includes the following element.</p>

##### Instances
``` purescript
Newtype TransferDomainResponse _
Generic TransferDomainResponse _
Show TransferDomainResponse
Decode TransferDomainResponse
Encode TransferDomainResponse
```

#### `newTransferDomainResponse`

``` purescript
newTransferDomainResponse :: OperationId -> TransferDomainResponse
```

Constructs TransferDomainResponse from required parameters

#### `newTransferDomainResponse'`

``` purescript
newTransferDomainResponse' :: OperationId -> ({ "OperationId" :: OperationId } -> { "OperationId" :: OperationId }) -> TransferDomainResponse
```

Constructs TransferDomainResponse's fields from required parameters

#### `Transferable`

``` purescript
newtype Transferable
  = Transferable String
```

<p>Whether the domain name can be transferred to Amazon Route 53.</p> <note> <p>You can transfer only domains that have a value of <code>TRANSFERABLE</code> for <code>Transferable</code>.</p> </note> <p>Valid values:</p> <dl> <dt>TRANSFERABLE</dt> <dd> <p>The domain name can be transferred to Amazon Route 53.</p> </dd> <dt>UNTRANSFERRABLE</dt> <dd> <p>The domain name can't be transferred to Amazon Route 53.</p> </dd> <dt>DONT_KNOW</dt> <dd> <p>Reserved for future use.</p> </dd> </dl>

##### Instances
``` purescript
Newtype Transferable _
Generic Transferable _
Show Transferable
Decode Transferable
Encode Transferable
```

#### `UnsupportedTLD`

``` purescript
newtype UnsupportedTLD
  = UnsupportedTLD { message :: NullOrUndefined (ErrorMessage) }
```

<p>Amazon Route 53 does not support this top-level domain (TLD).</p>

##### Instances
``` purescript
Newtype UnsupportedTLD _
Generic UnsupportedTLD _
Show UnsupportedTLD
Decode UnsupportedTLD
Encode UnsupportedTLD
```

#### `newUnsupportedTLD`

``` purescript
newUnsupportedTLD :: UnsupportedTLD
```

Constructs UnsupportedTLD from required parameters

#### `newUnsupportedTLD'`

``` purescript
newUnsupportedTLD' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> UnsupportedTLD
```

Constructs UnsupportedTLD's fields from required parameters

#### `UpdateDomainContactPrivacyRequest`

``` purescript
newtype UpdateDomainContactPrivacyRequest
  = UpdateDomainContactPrivacyRequest { "DomainName" :: DomainName, "AdminPrivacy" :: NullOrUndefined (Boolean), "RegistrantPrivacy" :: NullOrUndefined (Boolean), "TechPrivacy" :: NullOrUndefined (Boolean) }
```

<p>The UpdateDomainContactPrivacy request includes the following elements.</p>

##### Instances
``` purescript
Newtype UpdateDomainContactPrivacyRequest _
Generic UpdateDomainContactPrivacyRequest _
Show UpdateDomainContactPrivacyRequest
Decode UpdateDomainContactPrivacyRequest
Encode UpdateDomainContactPrivacyRequest
```

#### `newUpdateDomainContactPrivacyRequest`

``` purescript
newUpdateDomainContactPrivacyRequest :: DomainName -> UpdateDomainContactPrivacyRequest
```

Constructs UpdateDomainContactPrivacyRequest from required parameters

#### `newUpdateDomainContactPrivacyRequest'`

``` purescript
newUpdateDomainContactPrivacyRequest' :: DomainName -> ({ "DomainName" :: DomainName, "AdminPrivacy" :: NullOrUndefined (Boolean), "RegistrantPrivacy" :: NullOrUndefined (Boolean), "TechPrivacy" :: NullOrUndefined (Boolean) } -> { "DomainName" :: DomainName, "AdminPrivacy" :: NullOrUndefined (Boolean), "RegistrantPrivacy" :: NullOrUndefined (Boolean), "TechPrivacy" :: NullOrUndefined (Boolean) }) -> UpdateDomainContactPrivacyRequest
```

Constructs UpdateDomainContactPrivacyRequest's fields from required parameters

#### `UpdateDomainContactPrivacyResponse`

``` purescript
newtype UpdateDomainContactPrivacyResponse
  = UpdateDomainContactPrivacyResponse { "OperationId" :: OperationId }
```

<p>The UpdateDomainContactPrivacy response includes the following element.</p>

##### Instances
``` purescript
Newtype UpdateDomainContactPrivacyResponse _
Generic UpdateDomainContactPrivacyResponse _
Show UpdateDomainContactPrivacyResponse
Decode UpdateDomainContactPrivacyResponse
Encode UpdateDomainContactPrivacyResponse
```

#### `newUpdateDomainContactPrivacyResponse`

``` purescript
newUpdateDomainContactPrivacyResponse :: OperationId -> UpdateDomainContactPrivacyResponse
```

Constructs UpdateDomainContactPrivacyResponse from required parameters

#### `newUpdateDomainContactPrivacyResponse'`

``` purescript
newUpdateDomainContactPrivacyResponse' :: OperationId -> ({ "OperationId" :: OperationId } -> { "OperationId" :: OperationId }) -> UpdateDomainContactPrivacyResponse
```

Constructs UpdateDomainContactPrivacyResponse's fields from required parameters

#### `UpdateDomainContactRequest`

``` purescript
newtype UpdateDomainContactRequest
  = UpdateDomainContactRequest { "DomainName" :: DomainName, "AdminContact" :: NullOrUndefined (ContactDetail), "RegistrantContact" :: NullOrUndefined (ContactDetail), "TechContact" :: NullOrUndefined (ContactDetail) }
```

<p>The UpdateDomainContact request includes the following elements.</p>

##### Instances
``` purescript
Newtype UpdateDomainContactRequest _
Generic UpdateDomainContactRequest _
Show UpdateDomainContactRequest
Decode UpdateDomainContactRequest
Encode UpdateDomainContactRequest
```

#### `newUpdateDomainContactRequest`

``` purescript
newUpdateDomainContactRequest :: DomainName -> UpdateDomainContactRequest
```

Constructs UpdateDomainContactRequest from required parameters

#### `newUpdateDomainContactRequest'`

``` purescript
newUpdateDomainContactRequest' :: DomainName -> ({ "DomainName" :: DomainName, "AdminContact" :: NullOrUndefined (ContactDetail), "RegistrantContact" :: NullOrUndefined (ContactDetail), "TechContact" :: NullOrUndefined (ContactDetail) } -> { "DomainName" :: DomainName, "AdminContact" :: NullOrUndefined (ContactDetail), "RegistrantContact" :: NullOrUndefined (ContactDetail), "TechContact" :: NullOrUndefined (ContactDetail) }) -> UpdateDomainContactRequest
```

Constructs UpdateDomainContactRequest's fields from required parameters

#### `UpdateDomainContactResponse`

``` purescript
newtype UpdateDomainContactResponse
  = UpdateDomainContactResponse { "OperationId" :: OperationId }
```

<p>The UpdateDomainContact response includes the following element.</p>

##### Instances
``` purescript
Newtype UpdateDomainContactResponse _
Generic UpdateDomainContactResponse _
Show UpdateDomainContactResponse
Decode UpdateDomainContactResponse
Encode UpdateDomainContactResponse
```

#### `newUpdateDomainContactResponse`

``` purescript
newUpdateDomainContactResponse :: OperationId -> UpdateDomainContactResponse
```

Constructs UpdateDomainContactResponse from required parameters

#### `newUpdateDomainContactResponse'`

``` purescript
newUpdateDomainContactResponse' :: OperationId -> ({ "OperationId" :: OperationId } -> { "OperationId" :: OperationId }) -> UpdateDomainContactResponse
```

Constructs UpdateDomainContactResponse's fields from required parameters

#### `UpdateDomainNameserversRequest`

``` purescript
newtype UpdateDomainNameserversRequest
  = UpdateDomainNameserversRequest { "DomainName" :: DomainName, "FIAuthKey" :: NullOrUndefined (FIAuthKey), "Nameservers" :: NameserverList }
```

<p>Replaces the current set of name servers for the domain with the specified set of name servers. If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain.</p> <p>If successful, this operation returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email. </p>

##### Instances
``` purescript
Newtype UpdateDomainNameserversRequest _
Generic UpdateDomainNameserversRequest _
Show UpdateDomainNameserversRequest
Decode UpdateDomainNameserversRequest
Encode UpdateDomainNameserversRequest
```

#### `newUpdateDomainNameserversRequest`

``` purescript
newUpdateDomainNameserversRequest :: DomainName -> NameserverList -> UpdateDomainNameserversRequest
```

Constructs UpdateDomainNameserversRequest from required parameters

#### `newUpdateDomainNameserversRequest'`

``` purescript
newUpdateDomainNameserversRequest' :: DomainName -> NameserverList -> ({ "DomainName" :: DomainName, "FIAuthKey" :: NullOrUndefined (FIAuthKey), "Nameservers" :: NameserverList } -> { "DomainName" :: DomainName, "FIAuthKey" :: NullOrUndefined (FIAuthKey), "Nameservers" :: NameserverList }) -> UpdateDomainNameserversRequest
```

Constructs UpdateDomainNameserversRequest's fields from required parameters

#### `UpdateDomainNameserversResponse`

``` purescript
newtype UpdateDomainNameserversResponse
  = UpdateDomainNameserversResponse { "OperationId" :: OperationId }
```

<p>The UpdateDomainNameservers response includes the following element.</p>

##### Instances
``` purescript
Newtype UpdateDomainNameserversResponse _
Generic UpdateDomainNameserversResponse _
Show UpdateDomainNameserversResponse
Decode UpdateDomainNameserversResponse
Encode UpdateDomainNameserversResponse
```

#### `newUpdateDomainNameserversResponse`

``` purescript
newUpdateDomainNameserversResponse :: OperationId -> UpdateDomainNameserversResponse
```

Constructs UpdateDomainNameserversResponse from required parameters

#### `newUpdateDomainNameserversResponse'`

``` purescript
newUpdateDomainNameserversResponse' :: OperationId -> ({ "OperationId" :: OperationId } -> { "OperationId" :: OperationId }) -> UpdateDomainNameserversResponse
```

Constructs UpdateDomainNameserversResponse's fields from required parameters

#### `UpdateTagsForDomainRequest`

``` purescript
newtype UpdateTagsForDomainRequest
  = UpdateTagsForDomainRequest { "DomainName" :: DomainName, "TagsToUpdate" :: NullOrUndefined (TagList) }
```

<p>The UpdateTagsForDomainRequest includes the following elements.</p>

##### Instances
``` purescript
Newtype UpdateTagsForDomainRequest _
Generic UpdateTagsForDomainRequest _
Show UpdateTagsForDomainRequest
Decode UpdateTagsForDomainRequest
Encode UpdateTagsForDomainRequest
```

#### `newUpdateTagsForDomainRequest`

``` purescript
newUpdateTagsForDomainRequest :: DomainName -> UpdateTagsForDomainRequest
```

Constructs UpdateTagsForDomainRequest from required parameters

#### `newUpdateTagsForDomainRequest'`

``` purescript
newUpdateTagsForDomainRequest' :: DomainName -> ({ "DomainName" :: DomainName, "TagsToUpdate" :: NullOrUndefined (TagList) } -> { "DomainName" :: DomainName, "TagsToUpdate" :: NullOrUndefined (TagList) }) -> UpdateTagsForDomainRequest
```

Constructs UpdateTagsForDomainRequest's fields from required parameters

#### `UpdateTagsForDomainResponse`

``` purescript
newtype UpdateTagsForDomainResponse
  = UpdateTagsForDomainResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateTagsForDomainResponse _
Generic UpdateTagsForDomainResponse _
Show UpdateTagsForDomainResponse
Decode UpdateTagsForDomainResponse
Encode UpdateTagsForDomainResponse
```

#### `ViewBillingRequest`

``` purescript
newtype ViewBillingRequest
  = ViewBillingRequest { "Start" :: NullOrUndefined (Timestamp), "End" :: NullOrUndefined (Timestamp), "Marker" :: NullOrUndefined (PageMarker), "MaxItems" :: NullOrUndefined (PageMaxItems) }
```

<p>The ViewBilling request includes the following elements.</p>

##### Instances
``` purescript
Newtype ViewBillingRequest _
Generic ViewBillingRequest _
Show ViewBillingRequest
Decode ViewBillingRequest
Encode ViewBillingRequest
```

#### `newViewBillingRequest`

``` purescript
newViewBillingRequest :: ViewBillingRequest
```

Constructs ViewBillingRequest from required parameters

#### `newViewBillingRequest'`

``` purescript
newViewBillingRequest' :: ({ "Start" :: NullOrUndefined (Timestamp), "End" :: NullOrUndefined (Timestamp), "Marker" :: NullOrUndefined (PageMarker), "MaxItems" :: NullOrUndefined (PageMaxItems) } -> { "Start" :: NullOrUndefined (Timestamp), "End" :: NullOrUndefined (Timestamp), "Marker" :: NullOrUndefined (PageMarker), "MaxItems" :: NullOrUndefined (PageMaxItems) }) -> ViewBillingRequest
```

Constructs ViewBillingRequest's fields from required parameters

#### `ViewBillingResponse`

``` purescript
newtype ViewBillingResponse
  = ViewBillingResponse { "NextPageMarker" :: NullOrUndefined (PageMarker), "BillingRecords" :: NullOrUndefined (BillingRecords) }
```

<p>The ViewBilling response includes the following elements.</p>

##### Instances
``` purescript
Newtype ViewBillingResponse _
Generic ViewBillingResponse _
Show ViewBillingResponse
Decode ViewBillingResponse
Encode ViewBillingResponse
```

#### `newViewBillingResponse`

``` purescript
newViewBillingResponse :: ViewBillingResponse
```

Constructs ViewBillingResponse from required parameters

#### `newViewBillingResponse'`

``` purescript
newViewBillingResponse' :: ({ "NextPageMarker" :: NullOrUndefined (PageMarker), "BillingRecords" :: NullOrUndefined (BillingRecords) } -> { "NextPageMarker" :: NullOrUndefined (PageMarker), "BillingRecords" :: NullOrUndefined (BillingRecords) }) -> ViewBillingResponse
```

Constructs ViewBillingResponse's fields from required parameters

#### `ZipCode`

``` purescript
newtype ZipCode
  = ZipCode String
```

##### Instances
``` purescript
Newtype ZipCode _
Generic ZipCode _
Show ZipCode
Decode ZipCode
Encode ZipCode
```


