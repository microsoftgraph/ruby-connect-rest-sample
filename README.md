## Office 365 Ruby Connect Sample Using Microsoft Graph

[![Build Status](https://travis-ci.org/OfficeDev/O365-Ruby-Microsoft-Graph-Connect.svg)](https://travis-ci.org/OfficeDev/O365-Ruby-Microsoft-Graph-Connect)

Connecting to Office 365 is the first step every app must take to start working with Office 365 services and data. This sample shows how to connect and then call one API through the Microsoft Graph (previously called Office 365 unified API), and uses the Office Fabric UI to create an Office 365 experience.

Try out the [Get started with Office 365 APIs](http://dev.office.com/getting-started/office365apis?platform=option-ruby#setup) page which simplifies registration so you can get this sample running faster.

![Office 365 Ruby Connect sample screenshot](/readme-images/O365-Ruby-Microsoft Graph-Connect.png)

> Note: For an in-depth look at the code, see [Understanding Connect code sample] (https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/wiki/Understanding-Connect-code-sample).

## Prerequisites

To use the Office 365 Ruby Connect sample, the following are required.

* Ruby 2.1 to run the sample on a development server.
* Rails framework (the sample has been tested on Rails 4.2).
* Bundler dependency manager.
* Rack web server interface for Ruby.
* An Office 365 account. You can sign up for [an Office 365 Developer subscription](https://portal.office.com/Signup/Signup.aspx?OfferId=6881A1CB-F4EB-4db3-9F18-388898DAF510&DL=DEVELOPERPACK&ali=1#0) that includes the resources that you need to start building Office 365 apps.

     > **Note:** <br />
     If you already have a subscription, the previous link sends you to a page with the message *Sorry, you can’t add that to your current account*. In that case use an account from your current Office 365 subscription.<br /><br />
     If you're already signed in to Office 365, the sign in button in the previous link shows the message *Sorry, we can't process your request*. In that case sign out from Office 365 on that same page and sign in again.
* A Microsoft Azure Tenant to register your application. Azure Active Directory (AD) provides identity services that applications use for authentication and authorization. A trial subscription can be acquired at [Microsoft Azure](https://account.windowsazure.com/SignUp).

     > **Important:** <br />
     You also need to make sure your Azure subscription is bound to your Office 365 tenant. To do this, see the Active Directory team's blog post, [Creating and Managing Multiple Windows Azure Active Directories](http://blogs.technet.com/b/ad/archive/2013/11/08/creating-and-managing-multiple-windows-azure-active-directories.aspx). The section **Adding a new directory** will explain how to do this. You can also see [Set up your Office 365 development environment](https://msdn.microsoft.com/office/office365/howto/setup-development-environment#bk_CreateAzureSubscription) and the section **Associate your Office 365 account with Azure AD to create and manage apps** for more information.
* The [```client ID```](app/Constants.rb#L29), [```key```](app/Constants.rb#L30), and [```reply URL```](app/Constants.rb#L31) values of an application registered in Azure. This sample application must be granted the **Send mail as signed-in user** permission for the **Office 365 unified API (preview)**. For details see [Register your brower-based web app with the Azure Management Portal](https://msdn.microsoft.com/office/office365/HowTo/add-common-consent-manually#bk_RegisterWebApp) and [grant proper permissions to the Connect application](https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/wiki/Grant-permissions-to-the-Connect-application-in-Azure).

     > **Note:** <br />
     During the app registration process, make sure to specify *http://localhost:3000/auth/azureactivedirectory/callback* as the **Sign-on URL**.

## Configure and run the app

1. If you don't already have bundler and rack, you can install them with the following command.

	```
	gem install bundler rack
	```
2. In the [environment.rb](config/environment.rb) file do the following.
	1. Replace *ENTER_YOUR_CLIENT_ID* with the client ID of your registered Azure application.
	2. Replace *ENTER_YOUR_SECRET* with the key of your registered Azure application.
3. Install the Rails application and dependencies with the following command.

	```
	bundle install
	```
4. To start the Rails application, type the following command.

	```
	rackup -p 3000
	```
5. Go to ```http://localhost:3000``` in your web browser.

## Questions and comments

We'd love to get your feedback about the Office 365 Ruby Connect sample. You can send your questions and suggestions to us in the [Issues](https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/issues) section of this repository.

Questions about Office 365 development in general should be posted to [Stack Overflow](http://stackoverflow.com/questions/tagged/Office365+API). Make sure that your questions or comments are tagged with [Office365] and [API].
  
## Additional resources

* [Office 365 APIs platform overview](https://msdn.microsoft.com/office/office365/howto/platform-development-overview)
* [Getting started with Office 365 APIs](http://dev.office.com/getting-started/office365apis)
* [Overview of Microsoft Graph](http://graph.microsoft.io/)
* [Other Microsoft Graph connect samples](https://github.com/officedev?utf8=%E2%9C%93&query=Microsoft-Graph-Connect)
* [Office 365 APIs starter projects and code samples](https://msdn.microsoft.com/office/office365/howto/starter-projects-and-code-samples)
* [Office UI Fabric](https://github.com/OfficeDev/Office-UI-Fabric)

## Copyright
Copyright (c) 2015 Microsoft. All rights reserved.
