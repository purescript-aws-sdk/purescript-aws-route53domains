## Module AWS.Route53Domains.Requests

#### `checkDomainAvailability`

``` purescript
checkDomainAvailability :: forall eff. Service -> CheckDomainAvailabilityRequest -> Aff (exception :: EXCEPTION | eff) CheckDomainAvailabilityResponse
```

<p>This operation checks the availability of one domain name. Note that if the availability status of a domain is pending, you must submit another request to determine the availability of the domain name.</p>

#### `checkDomainTransferability`

``` purescript
checkDomainTransferability :: forall eff. Service -> CheckDomainTransferabilityRequest -> Aff (exception :: EXCEPTION | eff) CheckDomainTransferabilityResponse
```

<p>Checks whether a domain name can be transferred to Amazon Route 53. </p>

#### `deleteTagsForDomain`

``` purescript
deleteTagsForDomain :: forall eff. Service -> DeleteTagsForDomainRequest -> Aff (exception :: EXCEPTION | eff) DeleteTagsForDomainResponse
```

<p>This operation deletes the specified tags for a domain.</p> <p>All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.</p>

#### `disableDomainAutoRenew`

``` purescript
disableDomainAutoRenew :: forall eff. Service -> DisableDomainAutoRenewRequest -> Aff (exception :: EXCEPTION | eff) DisableDomainAutoRenewResponse
```

<p>This operation disables automatic renewal of domain registration for the specified domain.</p>

#### `disableDomainTransferLock`

``` purescript
disableDomainTransferLock :: forall eff. Service -> DisableDomainTransferLockRequest -> Aff (exception :: EXCEPTION | eff) DisableDomainTransferLockResponse
```

<p>This operation removes the transfer lock on the domain (specifically the <code>clientTransferProhibited</code> status) to allow domain transfers. We recommend you refrain from performing this action unless you intend to transfer the domain to a different registrar. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>

#### `enableDomainAutoRenew`

``` purescript
enableDomainAutoRenew :: forall eff. Service -> EnableDomainAutoRenewRequest -> Aff (exception :: EXCEPTION | eff) EnableDomainAutoRenewResponse
```

<p>This operation configures Amazon Route 53 to automatically renew the specified domain before the domain registration expires. The cost of renewing your domain registration is billed to your AWS account.</p> <p>The period during which you can renew a domain name varies by TLD. For a list of TLDs and their renewal policies, see <a href="http://wiki.gandi.net/en/domains/renew#renewal_restoration_and_deletion_times">"Renewal, restoration, and deletion times"</a> on the website for our registrar partner, Gandi. Route 53 requires that you renew before the end of the renewal period that is listed on the Gandi website so we can complete processing before the deadline.</p>

#### `enableDomainTransferLock`

``` purescript
enableDomainTransferLock :: forall eff. Service -> EnableDomainTransferLockRequest -> Aff (exception :: EXCEPTION | eff) EnableDomainTransferLockResponse
```

<p>This operation sets the transfer lock on the domain (specifically the <code>clientTransferProhibited</code> status) to prevent domain transfers. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>

#### `getContactReachabilityStatus`

``` purescript
getContactReachabilityStatus :: forall eff. Service -> GetContactReachabilityStatusRequest -> Aff (exception :: EXCEPTION | eff) GetContactReachabilityStatusResponse
```

<p>For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation returns information about whether the registrant contact has responded.</p> <p>If you want us to resend the email, use the <code>ResendContactReachabilityEmail</code> operation.</p>

#### `getDomainDetail`

``` purescript
getDomainDetail :: forall eff. Service -> GetDomainDetailRequest -> Aff (exception :: EXCEPTION | eff) GetDomainDetailResponse
```

<p>This operation returns detailed information about a specified domain that is associated with the current AWS account. Contact information for the domain is also returned as part of the output.</p>

#### `getDomainSuggestions`

``` purescript
getDomainSuggestions :: forall eff. Service -> GetDomainSuggestionsRequest -> Aff (exception :: EXCEPTION | eff) GetDomainSuggestionsResponse
```

<p>The GetDomainSuggestions operation returns a list of suggested domain names given a string, which can either be a domain name or simply a word or phrase (without spaces).</p>

#### `getOperationDetail`

``` purescript
getOperationDetail :: forall eff. Service -> GetOperationDetailRequest -> Aff (exception :: EXCEPTION | eff) GetOperationDetailResponse
```

<p>This operation returns the current status of an operation that is not completed.</p>

#### `listDomains`

``` purescript
listDomains :: forall eff. Service -> ListDomainsRequest -> Aff (exception :: EXCEPTION | eff) ListDomainsResponse
```

<p>This operation returns all the domain names registered with Amazon Route 53 for the current AWS account.</p>

#### `listOperations`

``` purescript
listOperations :: forall eff. Service -> ListOperationsRequest -> Aff (exception :: EXCEPTION | eff) ListOperationsResponse
```

<p>This operation returns the operation IDs of operations that are not yet complete.</p>

#### `listTagsForDomain`

``` purescript
listTagsForDomain :: forall eff. Service -> ListTagsForDomainRequest -> Aff (exception :: EXCEPTION | eff) ListTagsForDomainResponse
```

<p>This operation returns all of the tags that are associated with the specified domain.</p> <p>All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.</p>

#### `registerDomain`

``` purescript
registerDomain :: forall eff. Service -> RegisterDomainRequest -> Aff (exception :: EXCEPTION | eff) RegisterDomainResponse
```

<p>This operation registers a domain. Domains are registered by the AWS registrar partner, Gandi. For some top-level domains (TLDs), this operation requires extra parameters.</p> <p>When you register a domain, Amazon Route 53 does the following:</p> <ul> <li> <p>Creates a Amazon Route 53 hosted zone that has the same name as the domain. Amazon Route 53 assigns four name servers to your hosted zone and automatically updates your domain registration with the names of these name servers.</p> </li> <li> <p>Enables autorenew, so your domain registration will renew automatically each year. We'll notify you in advance of the renewal date so you can choose whether to renew the registration.</p> </li> <li> <p>Optionally enables privacy protection, so WHOIS queries return contact information for our registrar partner, Gandi, instead of the information you entered for registrant, admin, and tech contacts.</p> </li> <li> <p>If registration is successful, returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant is notified by email.</p> </li> <li> <p>Charges your AWS account an amount based on the top-level domain. For more information, see <a href="http://aws.amazon.com/route53/pricing/">Amazon Route 53 Pricing</a>.</p> </li> </ul>

#### `renewDomain`

``` purescript
renewDomain :: forall eff. Service -> RenewDomainRequest -> Aff (exception :: EXCEPTION | eff) RenewDomainResponse
```

<p>This operation renews a domain for the specified number of years. The cost of renewing your domain is billed to your AWS account.</p> <p>We recommend that you renew your domain several weeks before the expiration date. Some TLD registries delete domains before the expiration date if you haven't renewed far enough in advance. For more information about renewing domain registration, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html">Renewing Registration for a Domain</a> in the Amazon Route 53 Developer Guide.</p>

#### `resendContactReachabilityEmail`

``` purescript
resendContactReachabilityEmail :: forall eff. Service -> ResendContactReachabilityEmailRequest -> Aff (exception :: EXCEPTION | eff) ResendContactReachabilityEmailResponse
```

<p>For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact.</p>

#### `retrieveDomainAuthCode`

``` purescript
retrieveDomainAuthCode :: forall eff. Service -> RetrieveDomainAuthCodeRequest -> Aff (exception :: EXCEPTION | eff) RetrieveDomainAuthCodeResponse
```

<p>This operation returns the AuthCode for the domain. To transfer a domain to another registrar, you provide this value to the new registrar.</p>

#### `transferDomain`

``` purescript
transferDomain :: forall eff. Service -> TransferDomainRequest -> Aff (exception :: EXCEPTION | eff) TransferDomainResponse
```

<p>This operation transfers a domain from another registrar to Amazon Route 53. When the transfer is complete, the domain is registered with the AWS registrar partner, Gandi.</p> <p>For transfer requirements, a detailed procedure, and information about viewing the status of a domain transfer, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html">Transferring Registration for a Domain to Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>If the registrar for your domain is also the DNS service provider for the domain, we highly recommend that you consider transferring your DNS service to Amazon Route 53 or to another DNS service provider before you transfer your registration. Some registrars provide free DNS service when you purchase a domain registration. When you transfer the registration, the previous registrar will not renew your domain registration and could end your DNS service at any time.</p> <important> <p>If the registrar for your domain is also the DNS service provider for the domain and you don't transfer DNS service to another provider, your website, email, and the web applications associated with the domain might become unavailable.</p> </important> <p>If the transfer is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the transfer doesn't complete successfully, the domain registrant will be notified by email.</p>

#### `updateDomainContact`

``` purescript
updateDomainContact :: forall eff. Service -> UpdateDomainContactRequest -> Aff (exception :: EXCEPTION | eff) UpdateDomainContactResponse
```

<p>This operation updates the contact information for a particular domain. Information for at least one contact (registrant, administrator, or technical) must be supplied for update.</p> <p>If the update is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>

#### `updateDomainContactPrivacy`

``` purescript
updateDomainContactPrivacy :: forall eff. Service -> UpdateDomainContactPrivacyRequest -> Aff (exception :: EXCEPTION | eff) UpdateDomainContactPrivacyResponse
```

<p>This operation updates the specified domain contact's privacy setting. When the privacy option is enabled, personal information such as postal or email address is hidden from the results of a public WHOIS query. The privacy services are provided by the AWS registrar, Gandi. For more information, see the <a href="http://www.gandi.net/domain/whois/?currency=USD&amp;amp;lang=en">Gandi privacy features</a>.</p> <p>This operation only affects the privacy of the specified contact type (registrant, administrator, or tech). Successful acceptance returns an operation ID that you can use with <a>GetOperationDetail</a> to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>

#### `updateDomainNameservers`

``` purescript
updateDomainNameservers :: forall eff. Service -> UpdateDomainNameserversRequest -> Aff (exception :: EXCEPTION | eff) UpdateDomainNameserversResponse
```

<p>This operation replaces the current set of name servers for the domain with the specified set of name servers. If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain.</p> <p>If successful, this operation returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>

#### `updateTagsForDomain`

``` purescript
updateTagsForDomain :: forall eff. Service -> UpdateTagsForDomainRequest -> Aff (exception :: EXCEPTION | eff) UpdateTagsForDomainResponse
```

<p>This operation adds or updates tags for a specified domain.</p> <p>All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.</p>

#### `viewBilling`

``` purescript
viewBilling :: forall eff. Service -> ViewBillingRequest -> Aff (exception :: EXCEPTION | eff) ViewBillingResponse
```

<p>Returns all the domain-related billing records for the current AWS account for a specified period</p>


