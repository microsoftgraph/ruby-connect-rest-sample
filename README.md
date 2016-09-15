## Microsoft Graph Ruby on Rails Connect Sample

[![Build Status](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)

Use Microsoft Graph to access a user’s Microsoft account data from within a Ruby on Rails web application. This sample uses REST calls directly to the Microsoft Graph endpoint to work with user data--in this case, to send an email as the user.

The sample uses OmniAuth middleware to authenticate against the v2 authentication endpoint. The v2 endpoint enables developers to write a single code flow that handles authentication for both users' work or school (Azure Active Directory) or personal (Microsoft) accounts, including Office 365, Outlook.com, and OneDrive accounts.

The sample also uses the Office Fabric UI for styling and formatting the user experience.

![Microsoft Ruby on Rails Connect sample screenshot](/readme-images/Microsoft-Graph-Ruby-Connect-UI.png)

## Prerequisites

To use this sample, the following are required:

- Ruby 2.1 to run the sample on a development server.
- Rails framework (the sample has been tested on Rails 4.2).
- Bundler dependency manager.
- Rack web server interface for Ruby.
- A [Microsoft account](https://www.outlook.com/) or an [Office 365 for business account](https://msdn.microsoft.com/en-us/office/office365/howto/setup-development-environment#bk_Office365Account)

## Register the application

Register an app on the Microsoft App Registration Portal. This generates the app ID and password that you'll use to configure the app for authentication.

1. Sign into the [Microsoft App Registration Portal](https://apps.dev.microsoft.com/) using either your personal or work or school account.

2. Choose **Add an app**.

3. Enter a name for the app, and choose **Create application**.

	The registration page displays, listing the properties of your app.

4. Copy the application ID. This is the unique identifier for your app.

5. Under **Application Secrets**, choose **Generate New Password**. Copy the password from the **New password generated** dialog.

	You'll use the application ID and password to configure the app.

6. Under **Platforms**, choose **Add platform** > **Web**.

7. Make sure the **Allow Implicit Flow** check box is selected, and enter *http://localhost:3000/auth/microsoft_v2_auth/callback* as the Redirect URI.

	The **Allow Implicit Flow** option enables the OpenID Connect hybrid flow. During authentication, this enables the app to receive both sign-in info (the **id_token**) and artifacts (in this case, an authorization code) that the app uses to obtain an access token.

	The redirect URI *http://localhost:3000/auth/microsoft_v2_auth/callback* is the value that the OmniAuth middleware is configured to use once it has processed the authentication request.

8. Choose **Save**.

## Build and run the sample

1. Download or clone the sample and open it in the editor of your choice.
1. If you don't already have bundler and rack, you can install them with the following command.

	```
	gem install bundler rack
	```
2. In the [config/environment.rb](config/environment.rb) file do the following.
    1. Replace *ENTER_YOUR_CLIENT_ID* with the client ID of your registered  application.
    2. Replace *ENTER_YOUR_SECRET* with the key of your registered application.

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

We'd love to get your feedback about the Microsoft Graph Ruby on Rails Connect sample. You can send your questions and suggestions to us in the [Issues](https://github.com/microsoftgraph/ruby-connect-rest-sample/issues) section of this repository.

Your feedback is important to us. Connect with us on [Stack Overflow](http://stackoverflow.com/questions/tagged/office365+or+microsoftgraph). Tag your questions with [MicrosoftGraph].

## Additional resources

- [Other Microsoft Graph Connect samples](https://github.com/MicrosoftGraph?utf8=%E2%9C%93&query=-Connect)
- [Microsoft Graph overview](http://graph.microsoft.io)
- [Office developer code samples](http://dev.office.com/code-samples)
- [Office dev center](http://dev.office.com/)
- [Office UI Fabric](https://github.com/OfficeDev/Office-UI-Fabric)

## Copyright
Copyright (c) 2016 Microsoft. All rights reserved.
