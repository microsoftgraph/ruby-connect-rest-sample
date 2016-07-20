## 使用 Microsoft Graph 的 Office 365 Ruby Connect 示例

[ ![构建状态](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)

连接到 Office 365 是每个应用开始使用 Office 365 服务和数据必须采取的第一步。该示例演示如何通过 Microsoft Graph（旧称 Office 365 统一 API）连接并调用 API，以及如何使用 Office 结构 UI 创建 Office 365 体验。

尝试 [Office 365 API 入门](http://dev.office.com/getting-started/office365apis?platform=option-ruby#setup)页面，其简化了注册，使您可以更快地运行该示例。

![Office 365 Ruby Connect 示例的屏幕截图](../readme-images/O365-Ruby-Microsoft-Graph-Connect.png)  

> 注意： 要深入查看代码，请参阅[在 Ruby 应用中调用 Microsoft Graph](https://graph.microsoft.io/zh-cn/docs/platform/ruby)。

## 先决条件

要使用 Office 365 Ruby Connect 示例，需具备以下必要条件。

* Ruby 2.1，用于在开发服务器上运行该示例。
* Rails 框架（该示例已经过 Rails 4.2 测试）。
* 捆绑程序依存关系管理器
* 用于 Ruby 的机架式 Web 服务器界面。
* Office 365 帐户。您可以注册 [Office 365 开发人员订阅](https://aka.ms/devprogramsignup)，其中包含您开始构建 Office 365 应用所需的资源。

    > **注意：**<br />
	如果您已经订阅，之前的链接会将您转至包含以下信息的页面：*抱歉，您无法将其添加到当前帐户*。在这种情况下，请使用当前 Office 365 订阅中的帐户。<br /><br />
	如果您已经登录了 Office 365，之前链接中的登录按钮将显示以下信息：*抱歉，我们无法处理您的请求*。在这种情况下，请注销该页面中的 Office 365 并重新登录。
* 用于注册您的应用程序的 Microsoft Azure 租户。Azure Active Directory (AD) 为应用程序提供了用于进行身份验证和授权的标识服务。您还可在 [Microsoft Azure](https://account.windowsazure.com/SignUp) 获得试用订阅：

    > **重要说明：**<br />
	您还需要确保您的 Azure 订阅已绑定到 Office 365 租户。要执行这一操作，请参阅 Active Directory 团队的博客文章：[创建和管理多个 Microsoft Azure Active Directory](http://blogs.technet.com/b/ad/archive/2013/11/08/creating-and-managing-multiple-windows-azure-active-directories.aspx)。**添加新目录**一节将介绍如何执行此操作。您还可以参阅[设置 Office 365 开发环境](https://msdn.microsoft.com/office/office365/howto/setup-development-environment#bk_CreateAzureSubscription)和**关联您的 Office 365 帐户和 Azure AD 以创建并管理应用**一节获取详细信息。
* 在 Azure 中注册的应用程序的 [```client ID```](app/Constants.rb#L29)、[```key```](app/Constants.rb#L30) 和 [```reply URL```](app/Constants.rb#L31) 值。必须向该示例应用程序授予**以用户身份发送邮件**权限以使用 **Microsoft Graph**。有关详细信息，请参阅[使用 Azure 管理门户注册基于浏览器的 Web 应用](https://msdn.microsoft.com/office/office365/HowTo/add-common-consent-manually#bk_RegisterWebApp)和[向 Connect 应用程序授予适当的权限](https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/wiki/Grant-permissions-to-the-Connect-application-in-Azure)。

     > **注意：**<br />
	 在应用注册过程中，务必指定 *http://localhost:3000/auth/azureactivedirectory/callback* 作为**登录 URL**。

## 配置并运行应用

1. 如果您还没有捆绑程序和机架，请使用以下命令进行安装。

	```
	gem install bundler rack
	```
2. 在 [environment.rb](config/environment.rb) 文件中执行以下操作。
    1. 用所注册的 Azure 应用程序的客户端 ID 替换 *ENTER_YOUR_CLIENT_ID*。
    2. 用所注册的 Azure 应用程序的密钥替换 *ENTER_YOUR_SECRET*。
    3. 用您的租户替换 *your_tenant.onmicrosoft.com* 表格中的 *ENTER_YOUR_TENANT*。
3. 使用以下命令安装 Rails 应用程序和依存关系。

	```
	bundle install
	```
4. 要启动 Rails 应用程序，请键入以下命令。

	```
	rackup -p 3000
	```
5. 转到 Web 浏览器中的 ```http://localhost:3000```。

## 问题和意见

我们乐意倾听您有关 Office 365 Ruby Connect 示例的反馈。您可以在该存储库中的[问题](https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/issues)部分将问题和建议发送给我们。

与 Office 365 开发相关的问题一般应发布在[堆栈溢出](http://stackoverflow.com/questions/tagged/Office365+API)中。确保您的问题或意见使用了 [Office365] 和 [API] 标记。
  
## 其他资源

* [Office 365 API 平台概述](https://msdn.microsoft.com/office/office365/howto/platform-development-overview)
* [Office 365 API 入门](http://dev.office.com/getting-started/office365apis)
* [Microsoft Graph 概述](http://graph.microsoft.io/)
* [其他 Microsoft Graph 连接示例](https://github.com/officedev?utf8=%E2%9C%93&query=Microsoft-Graph-Connect)
* [Office 365 API 初学者项目和代码示例](https://msdn.microsoft.com/office/office365/howto/starter-projects-and-code-samples)
* [Office UI 结构](https://github.com/OfficeDev/Office-UI-Fabric)

## 版权所有
版权所有 (c) 2015 Microsoft。保留所有权利。
