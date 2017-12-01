## <a name="microsoft-graph-ruby-on-rails-connect-sample"></a>Microsoft Graph Ruby on Rails Connect サンプル

[![ビルドの状態](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)

Microsoft Graph を使用して、Ruby on Rails の Web アプリケーション内から Microsoft アカウントのユーザー リソースにアクセスします。このサンプルでは、Microsoft Graph エンドポイントへの REST の直接呼び出しを使ってユーザー リソースを操作します。ここでは、ユーザーとして電子メールを送信します。

サンプルでは、OmniAuth ミドルウェアを使って、Azure AD v2.0 エンドポイントに対する認証を行います。Azure AD v2.0 エンドポイントにより、開発者はユーザーの職場または学校 (Azure Active Directory) アカウント、または Office 365、Outlook.com、および OneDrive の各アカウントなどの個人用 (Microsoft) アカウントの両方に対する認証を処理する単一のコード フローを記述することができます。

サンプルでは、ユーザー エクスペリエンスのスタイル設定と書式設定に Office Fabric UI も使用します。

![Microsoft Ruby on Rails Connect サンプルのスクリーンショット](/readme-images/Microsoft-Graph-Ruby-Connect-UI.png)

## <a name="prerequisites"></a>前提条件

このサンプルを使用するには、以下が必要です。

- 開発サーバー上のサンプルを実行するための Ruby 2.4.2 (`.ruby-version` ファイルは、[rbenv](https://github.com/rbenv/rbenv#choosing-the-ruby-version)、[chruby](https://github.com/postmodern/chruby#auto-switching)、[rvm](https://rvm.io/workflow/projects) などの Ruby バージョン マネージャーに対して提供されます)。
- Bundler 依存関係マネージャー。
- [Microsoft アカウント](https://www.outlook.com/)または[ビジネス向けの Office 365 アカウント](https://msdn.microsoft.com/en-us/office/office365/howto/setup-development-environment#bk_Office365Account)

## <a name="register-the-application"></a>アプリケーションを登録する

Microsoft アプリ登録ポータルでアプリを登録します。これにより、認証するアプリの構成に使用するアプリ ID とパスワードが生成されます。

1. 個人用アカウント、あるいは職場または学校アカウントのいずれかを使用して、[Microsoft アプリ登録ポータル](https://apps.dev.microsoft.com/)にサインインします。

2. **[アプリの追加]** を選択します。

3. アプリの名前を入力して、**[作成]** を選択します。

    登録ページが表示され、アプリのプロパティが一覧表示されます。

4. `Application Id` をコピーします。これは、アプリの一意識別子です。

5. **[アプリケーション シークレット]** で、**[新しいパスワードを生成する]** を選択します。**[新しいパスワードが生成されました]** ダイアログからアプリ シークレットをコピーします。

    アプリを構成するには、アプリケーション ID とアプリ シークレットを使用します。

6. **[プラットフォーム]** で、**[プラットフォームの追加]** > **[Web]** の順に選択します。

7. **[暗黙的フローを許可する]** のチェック ボックスが選択されていることを確認して、リダイレクト URI として「*http://localhost:3000/auth/microsoft_v2_auth/callback*」を入力します。

    **[暗黙的フローを許可する]** オプションにより、OpenID Connect ハイブリッド フローが有効になります。これにより、認証時にアプリはサインイン情報 (**id_token**) と成果物 (この場合は認証コード) の両方を受け取れるようになり、アプリはアクセス トークンを取得するときにこれらを使用できます。

    リダイレクト URI *http://localhost:3000/auth/microsoft_v2_auth/callback* は、認証要求が処理されたときに OmniAuth ミドルウェアで使用するように構成される値です。

8. **[保存]** を選択します。

## <a name="build-and-run-the-sample"></a>サンプルのビルドと実行

1. サンプルをダウンロードまたは複製し、任意のエディターで開きます。
1. [Bundler](http://bundler.io/) がない場合は、次のコマンドでインストールできます。

    ```
    gem install bundler
    ```
2. [config/environment.rb](config/environment.rb) ファイルで、次を実行します。
    1. *ENTER_YOUR_CLIENT_ID* を登録済みのアプリケーションのアプリ ID と置き換えます。
    2. *ENTER_YOUR_SECRET* を登録済みのアプリケーションのアプリ シークレットと置き換えます。

3. 次のコマンドを使って、Rails アプリケーションと依存関係をインストールします。

    ```
    bundle install
    ```
4. Rails アプリケーションを起動するには、次のコマンドを入力します。

    ```
    rackup -p 3000
    ```
5. Web ブラウザーで ```http://localhost:3000``` にアクセスします。

<a name="contributing"></a>
## <a name="contributing"></a>投稿 ##

このサンプルに投稿する場合は、[CONTRIBUTING.MD](/CONTRIBUTING.md) を参照してください。

このプロジェクトでは、[Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/) が採用されています。詳細については、「[規範に関する FAQ](https://opensource.microsoft.com/codeofconduct/faq/)」を参照してください。または、その他の質問やコメントがあれば、[opencode@microsoft.com](mailto:opencode@microsoft.com) までにお問い合わせください。

## <a name="questions-and-comments"></a>質問とコメント

Microsoft Graph Ruby on Rails Connect のサンプルに関するフィードバックをお寄せください。質問や提案につきましては、このリポジトリの「[問題](https://github.com/microsoftgraph/ruby-connect-rest-sample/issues)」セクションで送信できます。

お客様からのフィードバックを重視しています。[スタック オーバーフロー](http://stackoverflow.com/questions/tagged/office365+or+microsoftgraph)でご連絡いただけます。ご質問には [MicrosoftGraph] のタグを付けてください。

## <a name="see-also"></a>関連項目

- [その他の Microsoft Graph Connect サンプル](https://github.com/MicrosoftGraph?utf8=%E2%9C%93&query=-Connect)
- [Microsoft Graph のデベロッパー センター](http://graph.microsoft.io)
- [Office UI Fabric](https://github.com/OfficeDev/Office-UI-Fabric)

## <a name="copyright"></a>著作権
Copyright (c) 2016 Microsoft. All rights reserved.
