
module AWS.Route53Domains.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.Route53Domains as Route53Domains
import AWS.Route53Domains.Types as Route53DomainsTypes


-- | <p>This operation checks the availability of one domain name. Note that if the availability status of a domain is pending, you must submit another request to determine the availability of the domain name.</p>
checkDomainAvailability :: forall eff. Route53Domains.Service -> Route53DomainsTypes.CheckDomainAvailabilityRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.CheckDomainAvailabilityResponse
checkDomainAvailability (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "checkDomainAvailability"


-- | <p>Checks whether a domain name can be transferred to Amazon Route 53. </p>
checkDomainTransferability :: forall eff. Route53Domains.Service -> Route53DomainsTypes.CheckDomainTransferabilityRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.CheckDomainTransferabilityResponse
checkDomainTransferability (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "checkDomainTransferability"


-- | <p>This operation deletes the specified tags for a domain.</p> <p>All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.</p>
deleteTagsForDomain :: forall eff. Route53Domains.Service -> Route53DomainsTypes.DeleteTagsForDomainRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.DeleteTagsForDomainResponse
deleteTagsForDomain (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteTagsForDomain"


-- | <p>This operation disables automatic renewal of domain registration for the specified domain.</p>
disableDomainAutoRenew :: forall eff. Route53Domains.Service -> Route53DomainsTypes.DisableDomainAutoRenewRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.DisableDomainAutoRenewResponse
disableDomainAutoRenew (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disableDomainAutoRenew"


-- | <p>This operation removes the transfer lock on the domain (specifically the <code>clientTransferProhibited</code> status) to allow domain transfers. We recommend you refrain from performing this action unless you intend to transfer the domain to a different registrar. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>
disableDomainTransferLock :: forall eff. Route53Domains.Service -> Route53DomainsTypes.DisableDomainTransferLockRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.DisableDomainTransferLockResponse
disableDomainTransferLock (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disableDomainTransferLock"


-- | <p>This operation configures Amazon Route 53 to automatically renew the specified domain before the domain registration expires. The cost of renewing your domain registration is billed to your AWS account.</p> <p>The period during which you can renew a domain name varies by TLD. For a list of TLDs and their renewal policies, see <a href="http://wiki.gandi.net/en/domains/renew#renewal_restoration_and_deletion_times">"Renewal, restoration, and deletion times"</a> on the website for our registrar partner, Gandi. Route 53 requires that you renew before the end of the renewal period that is listed on the Gandi website so we can complete processing before the deadline.</p>
enableDomainAutoRenew :: forall eff. Route53Domains.Service -> Route53DomainsTypes.EnableDomainAutoRenewRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.EnableDomainAutoRenewResponse
enableDomainAutoRenew (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "enableDomainAutoRenew"


-- | <p>This operation sets the transfer lock on the domain (specifically the <code>clientTransferProhibited</code> status) to prevent domain transfers. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>
enableDomainTransferLock :: forall eff. Route53Domains.Service -> Route53DomainsTypes.EnableDomainTransferLockRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.EnableDomainTransferLockResponse
enableDomainTransferLock (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "enableDomainTransferLock"


-- | <p>For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation returns information about whether the registrant contact has responded.</p> <p>If you want us to resend the email, use the <code>ResendContactReachabilityEmail</code> operation.</p>
getContactReachabilityStatus :: forall eff. Route53Domains.Service -> Route53DomainsTypes.GetContactReachabilityStatusRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.GetContactReachabilityStatusResponse
getContactReachabilityStatus (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getContactReachabilityStatus"


-- | <p>This operation returns detailed information about a specified domain that is associated with the current AWS account. Contact information for the domain is also returned as part of the output.</p>
getDomainDetail :: forall eff. Route53Domains.Service -> Route53DomainsTypes.GetDomainDetailRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.GetDomainDetailResponse
getDomainDetail (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getDomainDetail"


-- | <p>The GetDomainSuggestions operation returns a list of suggested domain names given a string, which can either be a domain name or simply a word or phrase (without spaces).</p>
getDomainSuggestions :: forall eff. Route53Domains.Service -> Route53DomainsTypes.GetDomainSuggestionsRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.GetDomainSuggestionsResponse
getDomainSuggestions (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getDomainSuggestions"


-- | <p>This operation returns the current status of an operation that is not completed.</p>
getOperationDetail :: forall eff. Route53Domains.Service -> Route53DomainsTypes.GetOperationDetailRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.GetOperationDetailResponse
getOperationDetail (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getOperationDetail"


-- | <p>This operation returns all the domain names registered with Amazon Route 53 for the current AWS account.</p>
listDomains :: forall eff. Route53Domains.Service -> Route53DomainsTypes.ListDomainsRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.ListDomainsResponse
listDomains (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listDomains"


-- | <p>This operation returns the operation IDs of operations that are not yet complete.</p>
listOperations :: forall eff. Route53Domains.Service -> Route53DomainsTypes.ListOperationsRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.ListOperationsResponse
listOperations (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listOperations"


-- | <p>This operation returns all of the tags that are associated with the specified domain.</p> <p>All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.</p>
listTagsForDomain :: forall eff. Route53Domains.Service -> Route53DomainsTypes.ListTagsForDomainRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.ListTagsForDomainResponse
listTagsForDomain (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTagsForDomain"


-- | <p>This operation registers a domain. Domains are registered by the AWS registrar partner, Gandi. For some top-level domains (TLDs), this operation requires extra parameters.</p> <p>When you register a domain, Amazon Route 53 does the following:</p> <ul> <li> <p>Creates a Amazon Route 53 hosted zone that has the same name as the domain. Amazon Route 53 assigns four name servers to your hosted zone and automatically updates your domain registration with the names of these name servers.</p> </li> <li> <p>Enables autorenew, so your domain registration will renew automatically each year. We'll notify you in advance of the renewal date so you can choose whether to renew the registration.</p> </li> <li> <p>Optionally enables privacy protection, so WHOIS queries return contact information for our registrar partner, Gandi, instead of the information you entered for registrant, admin, and tech contacts.</p> </li> <li> <p>If registration is successful, returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant is notified by email.</p> </li> <li> <p>Charges your AWS account an amount based on the top-level domain. For more information, see <a href="http://aws.amazon.com/route53/pricing/">Amazon Route 53 Pricing</a>.</p> </li> </ul>
registerDomain :: forall eff. Route53Domains.Service -> Route53DomainsTypes.RegisterDomainRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.RegisterDomainResponse
registerDomain (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "registerDomain"


-- | <p>This operation renews a domain for the specified number of years. The cost of renewing your domain is billed to your AWS account.</p> <p>We recommend that you renew your domain several weeks before the expiration date. Some TLD registries delete domains before the expiration date if you haven't renewed far enough in advance. For more information about renewing domain registration, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html">Renewing Registration for a Domain</a> in the Amazon Route 53 Developer Guide.</p>
renewDomain :: forall eff. Route53Domains.Service -> Route53DomainsTypes.RenewDomainRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.RenewDomainResponse
renewDomain (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "renewDomain"


-- | <p>For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact.</p>
resendContactReachabilityEmail :: forall eff. Route53Domains.Service -> Route53DomainsTypes.ResendContactReachabilityEmailRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.ResendContactReachabilityEmailResponse
resendContactReachabilityEmail (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "resendContactReachabilityEmail"


-- | <p>This operation returns the AuthCode for the domain. To transfer a domain to another registrar, you provide this value to the new registrar.</p>
retrieveDomainAuthCode :: forall eff. Route53Domains.Service -> Route53DomainsTypes.RetrieveDomainAuthCodeRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.RetrieveDomainAuthCodeResponse
retrieveDomainAuthCode (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "retrieveDomainAuthCode"


-- | <p>This operation transfers a domain from another registrar to Amazon Route 53. When the transfer is complete, the domain is registered with the AWS registrar partner, Gandi.</p> <p>For transfer requirements, a detailed procedure, and information about viewing the status of a domain transfer, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html">Transferring Registration for a Domain to Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>If the registrar for your domain is also the DNS service provider for the domain, we highly recommend that you consider transferring your DNS service to Amazon Route 53 or to another DNS service provider before you transfer your registration. Some registrars provide free DNS service when you purchase a domain registration. When you transfer the registration, the previous registrar will not renew your domain registration and could end your DNS service at any time.</p> <important> <p>If the registrar for your domain is also the DNS service provider for the domain and you don't transfer DNS service to another provider, your website, email, and the web applications associated with the domain might become unavailable.</p> </important> <p>If the transfer is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the transfer doesn't complete successfully, the domain registrant will be notified by email.</p>
transferDomain :: forall eff. Route53Domains.Service -> Route53DomainsTypes.TransferDomainRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.TransferDomainResponse
transferDomain (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "transferDomain"


-- | <p>This operation updates the contact information for a particular domain. Information for at least one contact (registrant, administrator, or technical) must be supplied for update.</p> <p>If the update is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>
updateDomainContact :: forall eff. Route53Domains.Service -> Route53DomainsTypes.UpdateDomainContactRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.UpdateDomainContactResponse
updateDomainContact (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateDomainContact"


-- | <p>This operation updates the specified domain contact's privacy setting. When the privacy option is enabled, personal information such as postal or email address is hidden from the results of a public WHOIS query. The privacy services are provided by the AWS registrar, Gandi. For more information, see the <a href="http://www.gandi.net/domain/whois/?currency=USD&amp;amp;lang=en">Gandi privacy features</a>.</p> <p>This operation only affects the privacy of the specified contact type (registrant, administrator, or tech). Successful acceptance returns an operation ID that you can use with <a>GetOperationDetail</a> to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>
updateDomainContactPrivacy :: forall eff. Route53Domains.Service -> Route53DomainsTypes.UpdateDomainContactPrivacyRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.UpdateDomainContactPrivacyResponse
updateDomainContactPrivacy (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateDomainContactPrivacy"


-- | <p>This operation replaces the current set of name servers for the domain with the specified set of name servers. If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain.</p> <p>If successful, this operation returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>
updateDomainNameservers :: forall eff. Route53Domains.Service -> Route53DomainsTypes.UpdateDomainNameserversRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.UpdateDomainNameserversResponse
updateDomainNameservers (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateDomainNameservers"


-- | <p>This operation adds or updates tags for a specified domain.</p> <p>All tag operations are eventually consistent; subsequent operations might not immediately represent all issued operations.</p>
updateTagsForDomain :: forall eff. Route53Domains.Service -> Route53DomainsTypes.UpdateTagsForDomainRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.UpdateTagsForDomainResponse
updateTagsForDomain (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateTagsForDomain"


-- | <p>Returns all the domain-related billing records for the current AWS account for a specified period</p>
viewBilling :: forall eff. Route53Domains.Service -> Route53DomainsTypes.ViewBillingRequest -> Aff (exception :: EXCEPTION | eff) Route53DomainsTypes.ViewBillingResponse
viewBilling (Route53Domains.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "viewBilling"
