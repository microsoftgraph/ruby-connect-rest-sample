# Microsoft Graph Ruby on Rails Connect Sample

[![Build Status](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)

Use Microsoft Graph to access a user's Microsoft account resources from within a Ruby on Rails web application. This sample uses REST calls directly to the Microsoft Graph endpoint to work with user resources.

The sample uses OmniAuth middleware to authenticate against the [Azure AD v2.0 endpoint](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-appmodel-v2-overview). The Azure AD v2.0 endpoint enables developers to write a single code flow that handles authentication for both work or school (Azure Active Directory) or personal (Microsoft) accounts, including Office 365, Outlook.com, and OneDrive accounts.

The sample also uses the Office Fabric UI for styling and formatting the user experience.

![Microsoft Ruby on Rails Connect sample screenshot](/readme-images/Microsoft-Graph-Ruby-Connect-UI.png)

## Prerequisites

To use this sample, the following are required:

- Ruby 2.5.1 to run the sample on a development server (a `.ruby-version` file is supplied for Ruby version managers like [rbenv](https://github.com/rbenv/rbenv#choosing-the-ruby-version), [chruby](https://github.com/postmodern/chruby#auto-switching), and [rvm](https://rvm.io/workflow/projects)).
- Bundler dependency manager.
- An Outlook.com email account or an Office 365 work or school account.

## Register the application

Register an app on the Microsoft App Registration Portal. This generates the app ID and password that you'll use to configure the app for authentication.

1. Sign into the [Microsoft App Registration Portal](https://apps.dev.microsoft.com/) using either your personal or work or school account.

1. Choose **Add an app**.

1. Enter a name for the app, and choose **Create**.

1. Copy the **Application Id** and save it in a safe place. This is the unique identifier for your app.

1. Under **Application Secrets**, choose **Generate New Password**. Copy the app password from the **New password generated** dialog and save it in a safe place.

1. Under **Platforms**, choose **Add platform** > **Web**.

1. Make sure the **Allow Implicit Flow** check box is selected, and enter `http://localhost:3000/auth/microsoft_v2_auth/callback` as the Redirect URI.

    - The **Allow Implicit Flow** option enables the OpenID Connect hybrid flow. During authentication, this enables the app to receive both sign-in info (the **id_token**) and artifacts (in this case, an authorization code) that the app uses to obtain an access token.
    - The redirect URI `http://localhost:3000/auth/microsoft_v2_auth/callback` is the value that the OmniAuth middleware is configured to use once it has processed the authentication request.

1. Choose **Save**.

## Build and run the sample

1. Download or clone the sample and open it in the editor of your choice.
1. If you don't already have [bundler](http://bundler.io/), you can install it with the following command.

    ```Shell
    gem install bundler
    ```

1. In the [config/environment.rb](config/environment.rb) file do the following.
    1. Replace *ENTER_YOUR_CLIENT_ID* with the app ID of your registered application.
    1. Replace *ENTER_YOUR_SECRET* with the app password for your registered application.

1. Install the Rails application and dependencies with the following command.

    ```Shell
    bundle install
    ```

1. To start the Rails application, type the following command.

    ```Shell
    rackup -p 3000
    ```

1. Browse to `http://localhost:3000` in your web browser.

## Contributing

If you'd like to contribute to this sample, see [CONTRIBUTING.MD](/CONTRIBUTING.md).

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Questions and comments

We'd love to get your feedback about the Microsoft Graph Ruby on Rails Connect sample. You can send your questions and suggestions to us in the [Issues](https://github.com/microsoftgraph/ruby-connect-rest-sample/issues) section of this repository.

Your feedback is important to us. Connect with us on [Stack Overflow](http://stackoverflow.com/questions/tagged/office365+or+microsoftgraph). Tag your questions with [MicrosoftGraph].

## See also

- [Other Microsoft Graph Connect samples](https://github.com/MicrosoftGraph?utf8=%E2%9C%93&query=-Connect)
- [Microsoft Graph dev center](https://developer.microsoft.com/graph)
- [Office UI Fabric](https://github.com/OfficeDev/Office-UI-Fabric)

## Copyright

Copyright (c) 2016 Microsoft. All rights reserved.
