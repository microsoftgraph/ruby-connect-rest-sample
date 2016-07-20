## Microsoft Graph を使った Office 365 Ruby Connect サンプル

[ ![ビルドの状態](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)

各アプリで Office 365 のサービスとデータの操作を開始するため、最初に Office 365 に接続する必要があります。このサンプルでは、Microsoft Graph (以前は Office 365 統合 API と呼ばれていた) を介して 1 つの API に接続して呼び出す方法を示し、Office Fabric UI を使って Office 365 エクスペリエンスを作成します。

このサンプルをより迅速に実行するため、「[Office 365 API を使う](http://dev.office.com/getting-started/office365apis?platform=option-ruby#setup)」ページに記載された登録の簡略化をお試しください。

![Office 365 Ruby Connect サンプルのスクリーンショット](../readme-images/O365-Ruby-Microsoft-Graph-Connect.png)  

> メモ: コードについて詳しくは、「[Ruby アプリで Microsoft Graph を呼び出す](https://graph.microsoft.io/ja-jp/docs/platform/ruby)」をご覧ください。

## 前提条件

Office 365 Ruby Connect サンプルを使うには、次が必要です。

* 開発サーバー上でサンプルを実行する Ruby 2.1。
* Rails フレームワーク (このサンプルは Rails 4.2 でテストされています)。
* Bundler 依存関係マネージャー。
* Ruby 用の Rack Web サーバー インターフェイス。
* Office 365 アカウント。Office 365 アプリのビルドを開始するために必要なリソースを含む [Office 365 Developer サブスクリプション](https://aka.ms/devprogramsignup) にサインアップできます。

    > **メモ:**<br />
	サブスクリプションをすでにお持ちの場合、上記のリンクをクリックすると、「*申し訳ございません。現在のアカウントに追加できません*」というメッセージが表示されるページに移動します。その場合は、現在使っている Office 365 サブスクリプションのアカウントをご利用いただけます。<br /><br /> 
	Office 365 にすでにサインインしている場合、上記のリンクの [サインイン] ボタンをクリックすると、「*申し訳ございません。お客様のリクエストを処理できません*」というメッセージが表示されます。その場合、その同じページで Office 365 からサインアウトしてから、もう一度サインインしてください。
* アプリケーションを登録する Microsoft Azure テナント。Azure Active Directory (AD) は、アプリケーションでの認証と承認に使う ID サービスを提供します。[Microsoft Azure](https://account.windowsazure.com/SignUp) で試用版サブスクリプションを取得できます。

    > **重要:**<br />
	Azure サブスクリプションが Office 365 テナントにバインドされていることを確認する必要もあります。確認する方法については、Active Directory チームのブログ投稿「[複数の Windows Azure Active Directory を作成して管理する](http://blogs.technet.com/b/ad/archive/2013/11/08/creating-and-managing-multiple-windows-azure-active-directories.aspx)」をご覧ください。「**新しいディレクトリを追加する**」セクションで、この方法を説明しています。また、詳しくは、「[Office 365 開発環境のセットアップ](https://msdn.microsoft.com/office/office365/howto/setup-development-environment#bk_CreateAzureSubscription)」と「**Office 365 アカウントを Azure AD と関連付けて、アプリを作成して管理する**」のセクションをご覧ください。
* Azure に登録されたアプリケーションの [```client ID```](app/Constants.rb#L29)、[```key```](app/Constants.rb#L30)、[```reply URL```](app/Constants.rb#L31) の値。このサンプル アプリケーションには、**Microsoft Graph** の**ユーザーとしてメールを送信する**アクセス許可を付与する必要があります。詳しくは、「[Azure 管理ポータルにブラウザー ベースの Web サーバー アプリを登録する](https://msdn.microsoft.com/office/office365/HowTo/add-common-consent-manually#bk_RegisterWebApp)」 と「[Connect アプリケーションに適切なアクセス許可を付与する](https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/wiki/Grant-permissions-to-the-Connect-application-in-Azure)」をご覧ください。

     > **メモ:**<br />
	 アプリ登録プロセス時に、***サインオン URL** として http://localhost:3000/auth/azureactivedirectory/callback*を必ず指定します。

## アプリの構成と実行

1. Bundler と Rack がない場合は、次のコマンドでインストールできます。

	```
	gem install bundler rack
	```
2. [environment.rb](config/environment.rb) ファイルで、次を実行します。
    1. *ENTER_YOUR_CLIENT_ID* を登録済みの Azure アプリケーションのクライアント ID と置き換えます。
    2. *ENTER_YOUR_SECRET* を登録済みの Azure アプリケーションのキーと置き換えます。
    3. *ENTER_YOUR_TENANT* を *your_tenant.onmicrosoft.com* という形式でテナントと置き換えます。
3. 次のコマンドを使って、Rails アプリケーションと依存関係をインストールします。

	```
	bundle install
	```
4. Rails アプリケーションを起動するには、次のコマンドを入力します。

	```
	rackup -p 3000
	```
5. Web ブラウザーで ```http://localhost:3000``` にアクセスします。

## 質問とコメント

Office 365 Ruby Connect サンプルに関するフィードバックをお寄せください。質問や提案につきましては、このリポジトリの「[問題](https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/issues)」セクションで送信できます。

Office 365 開発全般の質問につきましては、「[スタック オーバーフロー](http://stackoverflow.com/questions/tagged/Office365+API)」に投稿してください。質問やコメントには、必ず [Office365] と [API] のタグを付けてください。
  
## その他の技術情報

* [Office 365 API プラットフォームの概要](https://msdn.microsoft.com/office/office365/howto/platform-development-overview)
*[Office 365 API を使う](http://dev.office.com/getting-started/office365apis)
* [Microsoft Graph の概要](http://graph.microsoft.io/)
* [その他の Microsoft Graph Connect サンプル](https://github.com/officedev?utf8=%E2%9C%93&query=Microsoft-Graph-Connect)
* [Office 365 API スタート プロジェクトとコード サンプル](https://msdn.microsoft.com/office/office365/howto/starter-projects-and-code-samples)
* [Office UI Fabric](https://github.com/OfficeDev/Office-UI-Fabric)

## 著作権
Copyright (c) 2015 Microsoft.All rights reserved.
