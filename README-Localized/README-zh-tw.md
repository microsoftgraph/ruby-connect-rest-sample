## <a name="microsoft-graph-ruby-on-rails-connect-sample"></a>Microsoft Graph Ruby on Rails Connect 範例

[![組建狀態](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)

您可以使用 Microsoft Graph，從 Ruby on Rails Web 應用程式內存取使用者的 Microsoft 帳戶資源。此範例會使用 REST 呼叫直接連至 Microsoft Graph 端點以使用使用者資源 (在此情況下，以使用者傳送身分電子郵件)。

此範例會使用 OmniAuth 中介軟體的 Azure AD 2.0 版端點進行驗證。Azure AD 2.0 版端點可讓開發人員撰寫單一程式碼流程，處理使用者的工作或學校 (Azure Active Directory) 和個人 (Microsoft) 帳戶的驗證，包括 Office 365、Outlook.com 和 OneDrive 帳戶。

此範例也會使用 Office 結構 UI 來對使用者經驗設定樣式和格式。

![Microsoft Ruby on Rails 連線範例螢幕擷取畫面](/readme-images/Microsoft-Graph-Ruby-Connect-UI.png)

## <a name="prerequisites"></a>必要條件

若要使用此範例，需要有下列各項：

- Ruby 2.4.2 在程式開發伺服器上執行範例 (`.ruby-version` 檔案提供給 Ruby 版本管理員，如[rbenv](https://github.com/rbenv/rbenv#choosing-the-ruby-version)、[chruby](https://github.com/postmodern/chruby#auto-switching) 和 [rvm](https://rvm.io/workflow/projects))。
- Bundler 相依性管理員。
- [Microsoft 帳戶](https://www.outlook.com/)或[商務用 Office 365 帳戶](https://msdn.microsoft.com/en-us/office/office365/howto/setup-development-environment#bk_Office365Account)

## <a name="register-the-application"></a>註冊應用程式

在 Microsoft 應用程式註冊入口網站上註冊應用程式。這會產生您會用來設定驗證應用程式的應用程式 ID 和密碼。

1. 使用您的個人或工作或學校帳戶登入 [Microsoft 應用程式註冊入口網站](https://apps.dev.microsoft.com/)。

2. 選擇 [新增應用程式]****。

3. 為應用程式輸入名稱，然後選擇 [建立應用程式]****。

    [註冊] 頁面隨即顯示，列出您的應用程式的屬性。

4. 複製應用程式 ID。這是您的應用程式的唯一識別碼。

5. 在 [應用程式密碼]**** 底下，選擇 [產生新密碼]****。從 [產生的新密碼]**** 對話方塊中複製應用程式密碼。

    您將使用應用程式 ID 及應用程式密碼來設定應用程式。

6. 在 [平台]**** 底下，選擇 [新增平台]**** > **Web**。

7. 請確定已選取 [允許隱含的流程]**** 核取方塊，然後輸入 *http://localhost:3000/auth/microsoft_v2_auth/callback* 做為重新導向 URI。

    [允許隱含的流程]**** 選項會啟用 OpenID Connect 混合式流程。在驗證期間，這可讓應用程式收到登入資訊 (**id_token**) 和成品 (在這種情況下，是授權程式碼)，應用程式用來取得存取權杖。

    重新導向 URI *http://localhost:3000/auth/microsoft_v2_auth/callback* 是 OmniAuth 中介軟體已設定要使用的值 (若已處理驗證要求)。

8. 選擇 [儲存]****。

## <a name="build-and-run-the-sample"></a>建置及執行範例

1. 下載或複製範例，並在您所選擇的編輯器中開啟。
1. 如果您還沒有 [bundler](http://bundler.io/)，可以使用下列命令來安裝。

    ```
    gem install bundler
    ```
2. 在 [config/environment.rb](config/environment.rb) 檔案中執行下列動作。
    1. 用已註冊應用程式的應用程式 ID 來取代 *ENTER_YOUR_CLIENT_ID*。
    2. 用已註冊應用程式的應用程式密碼來取代 *ENTER_YOUR_SECRET*。

3. 使用下列命令來安裝 Rails 應用程式和相依項目。

    ```
    bundle install
    ```
4. 若要啟動 Rails 應用程式，請輸入下列命令。

    ```
    rackup -p 3000
    ```
5. 在網頁瀏覽器中前往 ```http://localhost:3000```。

<a name="contributing"></a>
## <a name="contributing"></a>參與 ##

如果您想要參與這個範例，請參閱 [CONTRIBUTING.MD](/CONTRIBUTING.md)。

此專案已採用 [Microsoft 開放原始碼執行](https://opensource.microsoft.com/codeofconduct/)。如需詳細資訊，請參閱[程式碼執行常見問題集](https://opensource.microsoft.com/codeofconduct/faq/)，如果有其他問題或意見，請連絡 [opencode@microsoft.com](mailto:opencode@microsoft.com)。

## <a name="questions-and-comments"></a>問題和建議

我們很樂於收到您對於 Microsoft Graph Ruby on Rails Connect 範例的意見反應。您可以在此儲存機制的[問題](https://github.com/microsoftgraph/ruby-connect-rest-sample/issues)區段中，將您的問題及建議傳送給我們。

我們很重視您的意見。請透過 [Stack Overflow](http://stackoverflow.com/questions/tagged/office365+or+microsoftgraph) 與我們連絡。以 [MicrosoftGraph] 標記您的問題。

## <a name="see-also"></a>請參閱

- [其他 Microsoft Graph Connect 範例](https://github.com/MicrosoftGraph?utf8=%E2%9C%93&query=-Connect)
- [Microsoft Graph 開發人員中心](http://graph.microsoft.io)
- [Office UI 結構](https://github.com/OfficeDev/Office-UI-Fabric)

## <a name="copyright"></a>著作權
Copyright (c) 2016 Microsoft.著作權所有，並保留一切權利。
