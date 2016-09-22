## Office 365 Ruby Connect Sample Using Microsoft Graph

[![Build Status](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)

Connecting to Office 365 is the first step every app must take to start working with Office 365 services and data. This sample shows how to connect and then call one API through Microsoft Graph (previously called Office 365 unified API), and uses the Office Fabric UI to create an Office 365 experience.

![Office 365 Ruby Connect sample screenshot](/readme-images/O365-Ruby-Microsoft-Graph-Connect.png)

## Prerequisites

To use the Office 365 Ruby Connect sample, the following are required.

* Ruby 2.1 to run the sample on a development server.
* Rails framework (the sample has been tested on Rails 4.2).
* Bundler dependency manager.
* Rack web server interface for Ruby.
* An Office 365 account. You can sign up for [an Office 365 Developer subscription](https://aka.ms/devprogramsignup) that includes the resources that you need to start building Office 365 apps.

     > **Note:** <br />
     If you already have a subscription, the previous link sends you to a page with the message *Sorry, you can’t add that to your current account*. In that case use an account from your current Office 365 subscription.<br /><br />
     If you're already signed in to Office 365, the sign in button in the previous link shows the message *Sorry, we can't process your request*. In that case sign out from Office 365 on that same page and sign in again.
* A Microsoft Azure Tenant to register your application. Azure Active Directory (AD) provides identity services that applications use for authentication and authorization. A trial subscription can be acquired at [Microsoft Azure](https://account.windowsazure.com/SignUp).

<!--     > **Important:** <br />
     You also need to make sure your Azure subscription is bound to your Office 365 tenant. To do this, see the Active Directory team's blog post, [Creating and Managing Multiple Windows Azure Active Directories](http://blogs.technet.com/b/ad/archive/2013/11/08/creating-and-managing-multiple-windows-azure-active-directories.aspx). The section **Adding a new directory** will explain how to do this. You can also see [Set up your Office 365 development environment](https://msdn.microsoft.com/office/office365/howto/setup-development-environment#bk_CreateAzureSubscription) and the section **Associate your Office 365 account with Azure AD to create and manage apps** for more information.-->
* The [```client ID```](app/Constants.rb#L29), [```key```](app/Constants.rb#L30), and [```reply URL```](app/Constants.rb#L31) values of an application registered in Azure. This sample application must be granted the **Send mail as a user** permission for **Microsoft Graph**.


## Register the app

Registering your web application is the first step. 

1. Sign in to the [Azure portal](https://portal.azure.com/).
2. On the top bar, click on your account and under the **Directory** list, choose the Active Directory tenant where you wish to register your application.
3. Click on **More Services** in the left hand nav, and choose **Azure Active Directory**.
4. Click on **App registrations** and choose **Add**.
5. Enter a friendly name for the application, for example 'MSGraphConnectRuby' and select 'Web app/API' as the **Application Type**. For the Sign-on URL, enter ‘http://localhost:3000/auth/azureactivedirectory/callback’. Click on **Create** to create the application.
6. While still in the Azure portal, choose your application, click on **Settings** and choose **Properties**.
7. Find the Application ID value and copy it to the clipboard.
8. Configure Permissions for your application:
9. In the **Settings** menu, choose the **Required permissions** section, click on **Add**, then **Select an API**, and select **Microsoft Graph**.
10. Then, click on Select Permissions and select **Sign in and read user profile** and **Send mail as a user**. Click **Select** and then **Done**.
11. In the **Settings** menu, choose the **Keys** section. Enter a description and select a duration for the key. Click **Save**.
12. **Important**: Copy the key value. You won't be able to access this value again once you leave this pane. You will use this value as your app secret.


## Configure and run the app

1. If you don't already have bundler and rack, you can install them with the following command.

	```
	gem install bundler rack
	```
2. In the [environment.rb](config/environment.rb) file do the following.
    1. Replace *ENTER_YOUR_CLIENT_ID* with the client ID of your registered Azure application.
    2. Replace *ENTER_YOUR_SECRET* with the key of your registered Azure application.
    3. Replace *ENTER_YOUR_TENANT* with your tenant, in the form *your_tenant.onmicrosoft.com*.
3. Install the Rails application and dependencies with the following command.

	```
	bundle install
	```
4. To start the Rails application, type the following command.

	```
	rackup -p 3000
	```
5. Go to ```http://localhost:3000``` in your web browser.

<a name="contributing"></a>
## Contributing ##

If you'd like to contribute to this sample, see [CONTRIBUTING.MD](/CONTRIBUTING.md).

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

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
