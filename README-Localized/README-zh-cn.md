## <a name="microsoft-graph-ruby-on-rails-connect-sample"></a>Microsoft Graph Ruby on Rails Connect 示例

[![构建状态](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)

使用 Microsoft Graph 访问客户在 Ruby on Rails Web 应用程中的 Microsoft 帐户资源。此示例使用 REST 直接调用 Microsoft Graph 终结点来使用用户资源（在这种情况下，以用户身份发送电子邮件）。

此示例使用 OmniAuth 中间件对 Azure AD v2.0 终结点进行身份验证。Azure AD v2.0 终结点使开发人员写入单个代码流，用于对用户的工作或学校 (Azure Active Directory) 或个人 (Microsoft) 帐户（包括 Office 365、Outlook.com 和 OneDrive 帐户）进行身份验证。

此示例还使用 Office Fabric UI 对用户体验进行样式化和格式化。

![Microsoft Ruby on Rails Connect 示例屏幕截图](../readme-images/Microsoft-Graph-Ruby-Connect-UI.png)

## <a name="prerequisites"></a>先决条件

必须符合以下条件才能使用此示例：

- Ruby 2.1，用于在开发服务器上运行该示例。
- Rails 框架（该示例已经过 Rails 4.2 测试）。
- 捆绑程序依存关系管理器
- 用于 Ruby 的 Rack Web 服务器界面。
- 一个 [Microsoft 帐户](https://www.outlook.com/) 或 [Office 365 商业版帐户](https://msdn.microsoft.com/en-us/office/office365/howto/setup-development-environment#bk_Office365Account)

## <a name="register-the-application"></a>注册应用程序

在 Microsoft 应用注册门户上注册一个应用。这会生成用于配置此应用的应用程序 ID 和密码，并进行身份验证。

1. 使用个人或工作或学校帐户登录到 [Microsoft 应用注册门户](https://apps.dev.microsoft.com/)。

2. 选择“**添加应用**”。

3. 输入应用的名称，并选择“**创建应用程序**”。

    将显示注册页，其中列出应用的属性。

4. 复制应用程序 ID。这是应用的唯一标识符。

5. 在“**应用程序机密**”下，选择“**生成新密码**”。从“**生成的新密码**”对话中复制应用机密。

    将使用此应用程序 ID 和应用机密配置应用。

6. 在“**平台**”下，选择“**添加平台**” > “**Web**”。

7. 请确保已选中“**允许隐式流**”复选框，输入 *http://localhost:3000/auth/microsoft_v2_auth/callback* 作为重定向 URI。

    “**允许隐式流**”选项可启用 OpenID Connect 混合流。在身份验证过程中，这可使应用同时接收登录信息 (**id_token**) 以及应用用来获取访问令牌的项目（在这种情况下，项目为授权代码）。

    重定向 URL *http://localhost:3000/auth/microsoft_v2_auth/callback* 是 OmniAuth 中间件处理身份验证请求后进行配置所要使用的值。

8. 选择“**保存**”。

## <a name="build-and-run-the-sample"></a>生成和运行示例

1. 下载或复制示例，并在你选择的编辑器中打开。
1. 如果你还没有捆绑程序和 rack，请使用以下命令进行安装。

    ```
    gem install bundler rack
    ```
2. 在 [config/environment.rb](config/environment.rb) 文件中执行以下操作。
    1. 用所注册的应用程序的应用 ID 替换 *ENTER_YOUR_CLIENT_ID*。
    2. 用所注册的应用程序的应用密码替换 *ENTER_YOUR_SECRET*。

3. 使用以下命令安装 Rails 应用程序和依存关系。

    ```
    bundle install
    ```
4. 要启动 Rails 应用程序，请键入以下命令。

    ```
    rackup -p 3000
    ```
5. 转到 Web 浏览器中的 ```http://localhost:3000```。

<a name="contributing"></a>
## <a name="contributing"></a>参与 ##

如果想要参与本示例，请参阅 [CONTRIBUTING.MD](/CONTRIBUTING.md)。

此项目采用 [Microsoft 开源行为准则](https://opensource.microsoft.com/codeofconduct/)。有关详细信息，请参阅 [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/)（行为准则常见问题解答），有任何其他问题或意见，也可联系 [opencode@microsoft.com](mailto:opencode@microsoft.com)。

## <a name="questions-and-comments"></a>问题和意见

我们乐意倾听你有关 Microsoft Graph Ruby on Rails Connect 示例的反馈。你可以在该存储库中的 [问题](https://github.com/microsoftgraph/ruby-connect-rest-sample/issues) 部分将问题和建议发送给我们。

你的反馈对我们意义重大。请在 [Stack Overflow](http://stackoverflow.com/questions/tagged/office365+or+microsoftgraph) 上与我们联系。使用 [MicrosoftGraph] 标记出你的问题。

## <a name="see-also"></a>另请参阅

- [其他 Microsoft Graph Connect 示例](https://github.com/MicrosoftGraph?utf8=%E2%9C%93&query=-Connect)
- [Microsoft Graph 开发人员中心](http://graph.microsoft.io)
- [Office UI 结构](https://github.com/OfficeDev/Office-UI-Fabric)

## <a name="copyright"></a>版权
版权所有 (c) 2016 Microsoft。保留所有权利。
