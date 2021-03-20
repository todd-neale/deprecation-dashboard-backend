EMAILS = {
  {
    "from" => "monday.com <team@monday.com>",
    "datetime" => "Wed, Jul 8, 2020 at 9:12 AM",
    "subject" => "monday.com API V1 deprecation notice",
    "text" => "

Hey Stuart,

We wanted to reach out to let you know that on October 15th 2020 we will be deprecating our old REST API v1 and will only be supporting our new GraphQL API v2.

This change will affect anyone who has built tools using the REST API, which includes Integromat scenarios utilizing monday v1 modules, Zapier integrations built before May 26, 2020, and all custom built integrations using our REST API.

Why are you switching to a new API?
Our new API is built on GraphQL and will give you a ton of flexibility in accessing and changing information in your monday.com account. It’s better maintained and will give you access to significantly more data in your account. The new API will give you more flexibility when interacting with data from your monday.com account and supports many more column types.

How do I know if I’m affected?
You’re a Zapier user and built any Zaps before May 26, 2020, where you’ll now see a “Legacy” icon on them. This indicates that the Zaps are using an outdated API.

You’re an Integromat user and your scenarios utilize the “monday.com” modules as opposed to the “Monday v2” modules. This indicates that your scenarios are using an outdated API.

You’re a developer and have built tools using our REST API. You’ll need to update them to utilize the new API. You can check if you’re using the old API by checking the endpoint to which you’re sending requests; our most current API uses the endpoint “api.monday.com/v2”.

I’m affected, what do I do?

Zapier modules
If you have any legacy zaps, you’ll need to rebuild these Zaps before October 15th, using the most current monday.com Zapier modules. Here is an article that will walk you through building a Zap using our new modules.

Integromat scenarios
If you have any scenarios that use the “monday.com” REST API module, you’ll need to update them to use the “Monday v2” modules before October 15th.

Migrating custom code
If you’re migrating a code that was developed with the monday.com REST API, you will need to migrate it to our GraphQL API. The resources below should help you get started with the migration:

API Documentation: https://monday.com/developers/v2
monday Builders Resources: https://monday.com/developers/resources
Developers Community: community.monday.com

Please don’t hesitate to reach out if you have any questions,

Best,
The monday.com team
Login • Webinars • FAQ • Community

Follow us:

monday.com logo
monday.com

+1 (201) 778-4567

Tel Aviv
52 Menachem Begin Road
Tel Aviv 6713701 Israel

New York
26 West 17th Street
New York, NY, 10011 United States
Take monday.com everywhere with you

This email was sent to you regarding your trayses.monday.com account. If you wish to no longer receive emails from us you can unsubscribe."
  },
  {
    "from" => "Oxford University Press: Oxford Languages <emailresponses.ac@oup.com>",
    "datetime" => "Thu, 7 May 2020 at 10:01",
    "subject" => "Updates released - Oxford Dictionaries API",
    "text" => "
Oxford Dictionaries API V2.3.1 release  View online
Oxford Dictionaries
Letters image
Language dataset updates and more

Oxford Dictionary of English and the New Oxford American Dictionary
We are pleased to announce that our English datasets have been updated with new words, new senses and new definitions.You now have access to terms relating to the coronavirus outbreak, new words from global varieties of English and more than 3,000 revised entries.

Spanish Bilingual datasets
Around 400 new entries added across the English-Spanish and Spanish-English texts.

Oxford Thesaurus of English (British and American)
Thousands of entries were editorially revised, updated, and corrected, and new synonyms were added.

Pronunciations audio files updates
You will also have access to more than 5,000 audio files added from both the Oxford Dictionary of English and the New Oxford American Dictionary and now served over SSL.

LexiStats endpoint
We would also like to let you know that the LexiStats endpoint will be deprecated. The endpoint will be available only until the next release,due towards the end of May.

FIND OUT MORE

This email was sent to connectors+oxforddictionarydev@tray.io
Unsubscribe or update your email preferences
OXFORD UNIVERSITY PRESS
Our Privacy Policy sets out how Oxford University Press handles your personal information. To update your preferences or unsubscribe from further email marketing from us, please follow the links above.

Oxford University Press, Great Clarendon Street, Oxford, OX2 6DP
    "
  },
  {
  "from" => "'LinkedIn Marketing Developer Team' via Connectors <connectors@tray.io>",
  "datetime" => "Tue, 15 Dec 2020 at 16:01",
  "subject" => "Prepare for these November & December API changes",
  "text" => "Prepare for these November & December API changes
LinkedIn
Connectors Dev
Hello Connectors,

We wanted to inform you of several API changes this month. Check out the Recent Changes page at the end of each month to see the latest API updates. You can also stay on top of all deprecations and migrations using the Migration page.

Campaign Management

    Updates to Message & Conversation Ads
        Who's impacted: Partners using the Message & Conversation Ads API
        What's happening: Starting July 5, 2021, we are changing how you create a Message or Conversation ad:
            You can update creatives that are not in the DRAFT status for Message/Conversation Ads.
            The AdInMailContent’s editable field will not be automatically set to false any longer.
            The Sponsored Conversation’s editable field will be set to false when an AdInMailContent is associated with a SponsoredConversation. When calling the adInMailContentsV2 endpoint with a subContent of type AdInMailGuidedRepliesSubContent, the editable field of the referenced SponsoredConversation will be set to false automatically.
    Support for additional currencies
        Who's impacted: Partners using the adAccountsV2 API
        What's happening: Starting February 24, 2021, the account creation endpoint adAccountsV2 will support creating ad accounts with 14 new currencies. Learn more.

Reporting & ROI

    We discovered two measurement issues
        Who's impacted: All reporting partners
        What's happening: We are committed to transparency and the integrity of our ads products, and we wanted to let you know about two measurement issues that our engineering team discovered in August and subsequently fixed on November 10. As a result of these issues, we may have over-reported some of your customers’ Sponsored Content campaign performance metrics. We are currently working with all customers who were impacted to provide full credit to their accounts. You can learn more by reading our blog post.

Page Management
No updates

Audiences

    New API rate limits for DMP streaming
        Who's impacted: Partners using the DMP streaming API
        What's happening: Starting March 31, 2021, we will be introducing granular rate limits for our DMP streaming APIs (Users & Companies) to prevent abuse, ensure service stability, and consistent API availability. These limits will be enforced in addition to your current daily limits, which can be found through Developer Portal > My Apps > App > Analytics > Quotas and usage.
            What does this mean for my application? If your application calls /dmpSegments/users or /dmpSegments/companies, you may get a HTTP 429 response if calling the endpoints too frequently, indicating that you are exceeding the rate limits.
            How do I handle API calls that are throttled? Your application should be catching errors when making calls to /dmpSegment/users and /dmpSegment/companies and retry after a minimum of 1 second whenever you receive an HTTP 429 response.
            Can I get the limits increased for my application? No, the limits we intend to enforce will not be customizable at an application level. However the limits will be enforced such that there is minimal interruption to existing applications.
            My application creates a significant amount of automated API calls (eg. one time full data dump or weekly data pushes with large volumes followed by smaller traffic that contains diffs throughout the week). Will this rate limit affect my throughput? If the volume of your automated traffic exceeds tens of millions, then you can expect to see frequent throttling. While this might affect the throughput of your API calls, you will not see any differences in the matched audience processing SLA.

Lead Generation
No updates

Breaking Changes

    New API call length requirements
        Who's impacted: All partners
        What's happening: To improve our network infrastructure and API traffic, we now require all API calls to meet the new length requirements. Requests exceeding the new length requirements will be rejected. To avoid calls being rejected, we recommend using query tunneling. See migration guide here.
        When: Starting March 31, 2021, we will reject calls that do not meet the new requirements.
    UGC permalinkSuffixes endpoint removed
        Who's impacted: Partners using the UGC permalinkSuffixes finder endpoint
        What's happening: The permalinkSuffixes endpoint has been removed. To retrieve UGC posts, we recommend you find posts by author.

Please submit a Zendesk ticket for any questions.

Do you have a colleague that’s not receiving this communication? Add your colleague as a team member under My Apps in the developer portal.

Sincerely,
LinkedIn Marketing Developer Team

  Help


This email was intended for Connectors Dev (Developer at tray.io). Learn why we included this.


LinkedIn Logo


© 2020, LinkedIn Ireland Ltd. All rights reserved. LinkedIn Ireland Unlimited Company, Gardner House, Wilton Plaza, Wilton Place, Dublin 2, Ireland"
  },
  {
  "from" => "'Microsoft 365 Message center' via Connectors <connectors@tray.io>",
  "datetime" => "Tue, 9 Feb 2021 at 15:17",
  "subject" => "Message Center Major Change Update Notification",
  "text" => "

Microsoft
(Updated) Exchange Online support for Active Directory Rights Management Service (AD RMS) retiring
MC236526 · TRAY.IO
Updated February 08, 2021: We have updated this message to ensure readability. The content has not changed. Thank you for your patience.

We are retiring Active Directory Rights Management Service (AD RMS) support in Exchange Online as of February 28, 2021. Moving forward, we recommend the utilization of Azure Rights Management Service (Azure RMS).

Key Points:

    Timing: February 28, 2021
    Action: review and assess impact for your organization

How this will affect your organization:

Exchange Online includes Information Rights Management (IRM) that provides online and offline protection of email messages and attachments. Although Exchange Online uses Azure Rights Management Service (Azure RMS) by default, your organization may have configured Exchange Online to use on-premises Active Directory Rights Management Service (AD RMS). AD RMS support in Exchange Online is retiring, and will be fully replaced with Azure RMS.

What you need to do to prepare:

If your organization is already using Azure RMS to encrypt email in Exchange Online, there is nothing for you to do.

Otherwise, follow the these steps to migrate to Azure RMS

    If your organization has already set up Azure RMS, you can enable the service in Exchange Online by running the following Exchange Online PowerShell cmdlet:

        Set-IrmConfiguration -AzureRMSLicensingEnabled $true

    If your organization has not yet set up Azure RMS, you’ll need to migrate. For information, see Migrating from AD RMS to Azure Information Protection.

The above information is also described in preparing for deprecation of AD RMS support in Exchange Online.
View this message in the Microsoft 365 admin center
You're subscribed to this email using connectors@tray.io. If you're an IT admin, you're subscribed by default, but you can unsubscribe at any time. If you're not an IT admin, ask your admin to remove your email address from Microsoft 365 message center preferences.

How to view translated messages
Privacy statement
Microsoft Corporation, One Microsoft Way, Redmond WA 98052 USA
Microsoft"
  }
}
