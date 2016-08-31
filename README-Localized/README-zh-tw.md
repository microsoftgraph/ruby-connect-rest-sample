## 使用 Microsoft Graph 的 Office 365 Ruby Connect 範例

[ ![組建狀態](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)

連接到 Office 365 是每個應用程式要開始使用 Office 365 服務和資料時必須採取的第一個步驟。此範例示範如何透過 Microsoft Graph (之前稱為 Office 365 統一 API) 連接而後呼叫一個 API，然後使用 Office Fabric UI 來打造 Office 365 經驗。

嘗試可簡化註冊的 [Office 365 API 入門](http://dev.office.com/getting-started/office365apis?platform=option-ruby#setup)頁面，以便您更快速地執行這個範例。

![Office 365 Ruby Connect 範例螢幕擷取畫面](../readme-images/O365-Ruby-Microsoft-Graph-Connect.png)  

> 注意事項： 如需深入了解程式碼，請參閱[ Ruby 應用程式中呼叫 Microsoft Graph](https://graph.microsoft.io/zh-tw/docs/platform/ruby)。

## 必要條件

若要使用 Office 365 Ruby Connect 範例，需要有下列各項。

* Ruby 2.1 用以在開發伺服器上執行範例。
* Rails 架構 (已在 Rails 4.2 上測試此範例)。
* Bundler 相依性管理員。
* 適用於 Ruby 的 Rack Web 伺服器介面。
* Office 365 帳戶。您可以註冊 [Office 365 開發人員訂用帳戶](https://aka.ms/devprogramsignup)，其中包含開始建置 Office 365 應用程式所需的資源。

    > **注意事項：**<br />
	如果您已有訂用帳戶，則先前的連結會讓您連到顯示「抱歉，您無法將之新增到您目前的帳戶」訊息的頁面。在此情況下，請使用您目前的 Office 365 訂用帳戶所提供的帳戶。<br /><br />
	如果您已登入 Office 365，先前連結中的登入按鈕會顯示「抱歉，我們無法處理您的要求」訊息。在此情況下，在相同的頁面登出 Office 365，再重新登入。
* 用來註冊您的應用程式的 Microsoft Azure 租用戶。Azure Active Directory (AD) 會提供識別服務，以便應用程式用於驗證和授權。在 [Microsoft Azure](https://account.windowsazure.com/SignUp) 可以取得試用版的訂用帳戶。

    > **重要事項：**<br />
	您還需要確定您的 Azure 訂用帳戶已繫結至您的 Office 365 租用戶。若要執行這項操作，請參閱 Active Directory 小組的部落格文章：[建立和管理多個 Windows Azure Active Directory](http://blogs.technet.com/b/ad/archive/2013/11/08/creating-and-managing-multiple-windows-azure-active-directories.aspx)。**新增目錄**一節將說明如何執行這項操作。如需詳細資訊，也可以參閱[設定 Office 365 開發環境](https://msdn.microsoft.com/office/office365/howto/setup-development-environment#bk_CreateAzureSubscription)和**建立 Office 365 帳戶與 Azure AD 的關聯以便建立和管理應用程式**一節。
* 在 Azure 中註冊之應用程式的 [```client ID```](app/Constants.rb#L29)、[```key```](app/Constants.rb#L30) 和 [```reply URL```](app/Constants.rb#L31)。此範例應用程式必須取得 **Microsoft Graph** 的 [以使用者身分傳送郵件] 權限。如需詳細資訊，請參閱[在 Azure 管理入口網站中註冊以瀏覽器為基礎的 Web 應用程式](https://msdn.microsoft.com/office/office365/HowTo/add-common-consent-manually#bk_RegisterWebApp)及[授與適當的權限給 Connect 應用程式](https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/wiki/Grant-permissions-to-the-Connect-application-in-Azure)。

     > **注意事項：**<br />
	 在應用程式註冊過程中，請務必指定 *http://localhost:3000/auth/azureactivedirectory/callback* 做為 [登入 URL]。

## 設定和執行應用程式

1. 如果您還沒有 Bundler 和 Rack，您可以使用下列命令來安裝它們。

	```
	gem install bundler rack
	```
2. 在 [environment.rb](config/environment.rb) 檔案中執行下列動作。
    1. 用已註冊之 Azure 應用程式的用戶端識別碼來取代 *ENTER_YOUR_CLIENT_ID*。
    2. 用已註冊之 Azure 應用程式的金鑰來取代 *ENTER_YOUR_SECRET*。
    3. 以您的租用戶 (格式為 *your_tenant.onmicrosoft.com*) 取代 *ENTER_YOUR_TENANT*。
3. 使用下列命令來安裝 Rails 應用程式和相依項目。

	```
	bundle install
	```
4. 若要啟動 Rails 應用程式，請輸入下列命令。

	```
	rackup -p 3000
	```
5. 在網頁瀏覽器中前往 ```http://localhost:3000```。

## 問題與意見

我們很樂於收到您對於 Office 365 Ruby Connect 範例的意見反應。您可以在此儲存機制的[問題](https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/issues)區段中，將您的問題及建議傳送給我們。

請在 [Stack Overflow](http://stackoverflow.com/questions/tagged/Office365+API) 提出有關 Office 365 開發的一般問題。務必以 [Office365] 和 [API] 標記您的問題或意見。
  
## 其他資源

* [Office 365 API 平台概觀](https://msdn.microsoft.com/office/office365/howto/platform-development-overview)
* [Office 365 API 入門](http://dev.office.com/getting-started/office365apis)
* [Microsoft Graph 概觀](http://graph.microsoft.io/)
* [其他 Microsoft Graph connect 範例](https://github.com/officedev?utf8=%E2%9C%93&query=Microsoft-Graph-Connect)
* [Office 365 API 入門專案和程式碼範例](https://msdn.microsoft.com/office/office365/howto/starter-projects-and-code-samples)
* [Office UI Fabric](https://github.com/OfficeDev/Office-UI-Fabric)

## 著作權
Copyright (c) 2015 Microsoft.著作權所有，並保留一切權利。
