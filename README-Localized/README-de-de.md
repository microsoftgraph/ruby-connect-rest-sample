## <a name="microsoft-graph-ruby-on-rails-connect-sample"></a>Microsoft Graph Ruby on Rails Connect-Beispiel

[![Buildstatus](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)

Verwenden Sie Microsoft Graph, um auf die Microsoft-Kontoressourcen eines Benutzers über die Webanwendung von Ruby on Rails zuzugreifen. In diesem Beispiel werden direkte REST-Aufrufe des Microsoft Graph-Endpunkts zur Verwendung der Benutzerressourcen verwendet – in diesem Fall, um eine Mail als dieser Benutzer zu senden.

Im Beispiel wird die OmniAuth-Middleware zur Authentifizierung beim Azure AD v2.0-Endpunkt verwendet. Der Azure AD v2.0-Endpunkt ermöglicht Entwicklern, einen einzelnen Codefluss zu schreiben, der die Authentifizierung sowohl für Geschäfts- oder Schulkonten von Benutzern (Azure Active Directory) als auch für persönliche Konten (Microsoft) verarbeitet, einschließlich Office 365-, Outlook.com- und OneDrive-Konten.

Im Beispiel wird auch die Office-Fabric-UI zum Entwerfen und Formatieren der Benutzeroberfläche verwendet.

![Screenshot des Microsoft Ruby on Rails Connect-Beispiels](../readme-images/Microsoft-Graph-Ruby-Connect-UI.png)

## <a name="prerequisites"></a>Voraussetzungen

Um dieses Beispiel verwenden zu können, ist Folgendes erforderlich:

- Ruby 2.1 zum Ausführen des Beispiels auf einem Entwicklungsserver.
- Rails-Framework (das Beispiel wurde auf Rails 4.2 getestet).
- Bundler Dependency Manager.
- Rack-Webserveroberfläche für Ruby.
- Ein [Microsoft-Konto](https://www.outlook.com/) oder ein [Office 365 for Business](https://msdn.microsoft.com/en-us/office/office365/howto/setup-development-environment#bk_Office365Account)-Konto.

## <a name="register-the-application"></a>Registrieren der App

Registrieren Sie eine App im Microsoft App-Registrierungsportal. Dadurch werden die ID und das Kennwort der App generiert, mit der bzw. dem Sie die App für die Authentifizierung konfigurieren.

1. Melden Sie sich beim [Microsoft-App-Registrierungsportal](https://apps.dev.microsoft.com/) entweder mit Ihrem persönlichen oder geschäftlichen Konto oder mit Ihrem Schulkonto an.

2. Klicken Sie auf **App hinzufügen**.

3. Geben Sie einen Namen für die App ein, und wählen Sie **Anwendung erstellen** aus.

    Die Registrierungsseite wird angezeigt, und die Eigenschaften der App werden aufgeführt.

4. Kopieren Sie die Anwendungs-ID: Dies ist der eindeutige Bezeichner für Ihre App.

5. Wählen Sie unter **Anwendungsgeheimnisse** die Option **Neues Kennwort generieren** aus. Kopieren Sie das Anwendungsgeheimnis aus dem Dialogfeld **Neues Kennwort wurde generiert**.

    Sie werden die ID und das Geheimnis der Anwendung verwenden, um die App zu konfigurieren.

6. Wählen Sie unter **Plattformen** die Option **Plattform hinzufügen** > ** Web** aus.

7. Stellen Sie sicher, dass das Kontrollkästchen **Impliziten Fluss zulassen** aktiviert ist, und geben Sie *http://localhost:3000/auth/microsoft_v2_auth/callback* als Umleitungs-URI ein.

    Die Option **Impliziten Fluss zulassen** ermöglicht den OpenID Connect-Hybridfluss. Während der Authentifizierung ermöglicht dies der App, sowohl Anmeldeinformationen (das **id_token**) als auch Artefakte (in diesem Fall ein Autorisierungscode) abzurufen, den die App zum Abrufen eines Zugriffstokens verwendet.

    Der Umleitungs-URI *Http://localhost:3000/autorisierende/microsoft_v2_auth/Rückruf* ist der Wert, den die OmniAuth Middleware entsprechend der Konfiguration verwendet, wenn sie die Authentifizierungsanforderung verarbeitet hat.

8. Wählen Sie **Speichern** aus.

## <a name="build-and-run-the-sample"></a>Erstellen und Ausführen des Beispiels

1. Laden Sie das Beispiel herunter, oder klonen Sie es, und öffnen Sie es dann im gewünschten Editor.
1. Wenn Sie weder über einen Bundler noch über ein Rack verfügen, können Sie sie mithilfe des folgenden Befehls installieren.

    ```
    gem install bundler rack
    ```
2. Nehmen Sie in der Datei [config/environment.rb](config/environment.rb) die folgende Aktion vor.
    1. Ersetzen Sie *ENTER_YOUR_CLIENT_ID* durch die App-ID Ihrer registrierten Anwendung.
    2. Ersetzen Sie *ENTER_YOUR_SECRET* durch das App-Geheimnis Ihrer registrierten Anwendung.

3. Installieren Sie die Rails-Anwendung und -Abhängigkeiten mit dem folgenden Befehl.

    ```
    bundle install
    ```
4. Geben Sie zum Starten der Rails-Anwendung den folgenden Befehl ein.

    ```
    rackup -p 3000
    ```
5. Navigieren Sie im Webbrowser zu ```http://localhost:3000```.

<a name="contributing"></a>
## <a name="contributing"></a>Mitwirkung ##

Wenn Sie einen Beitrag zu diesem Beispiel leisten möchten, finden Sie unter [CONTRIBUTING.MD](/CONTRIBUTING.md) weitere Informationen.

In diesem Projekt wurden die [Microsoft Open Source-Verhaltensregeln](https://opensource.microsoft.com/codeofconduct/) übernommen. Weitere Informationen finden Sie unter [Häufig gestellte Fragen zu Verhaltensregeln](https://opensource.microsoft.com/codeofconduct/faq/), oder richten Sie Ihre Fragen oder Kommentare an [opencode@microsoft.com](mailto:opencode@microsoft.com).

## <a name="questions-and-comments"></a>Fragen und Kommentare

Wir freuen uns, Ihr Feedback zum Microsoft Graph Ruby on Rails Connect-Beispiel zu erhalten. Sie können uns Ihre Fragen und Vorschläge über den Abschnitt [Probleme](https://github.com/microsoftgraph/ruby-connect-rest-sample/issues) dieses Repositorys senden.

Ihr Feedback ist uns wichtig. Nehmen Sie unter [Stack Overflow](http://stackoverflow.com/questions/tagged/office365+or+microsoftgraph) Kontakt mit uns auf. Taggen Sie Ihre Fragen mit [MicrosoftGraph].

## <a name="see-also"></a>Siehe auch

- [Weitere Microsoft Graph Connect-Beispiele](https://github.com/MicrosoftGraph?utf8=%E2%9C%93&query=-Connect)
- [Microsoft Graph Dev Center](http://graph.microsoft.io)
- [Office UI Fabric](https://github.com/OfficeDev/Office-UI-Fabric)

## <a name="copyright"></a>Copyright
Copyright (c) 2016 Microsoft. Alle Rechte vorbehalten.
