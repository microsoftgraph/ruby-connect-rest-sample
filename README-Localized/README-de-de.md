## Office 365 Ruby Connect-Beispiel unter Verwendung von Microsoft Graph

[ ![Buildstatus](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)  

Für die Arbeit mit Office 365-Diensten und -Daten muss jede App zunächst eine Verbindung zu Office 365 herstellen. In diesem Beispiel wird gezeigt, wie die Verbindung zu und dann der Aufruf einer API über Microsoft Graph (wurde zuvor als vereinheitlichte Office 365-API bezeichnet) erfolgt. Ferner wird darin die Office Fabric-Benutzeroberfläche zum Erstellen einer Office 365-Erfahrung verwendet.

Rufen Sie die Seite [Erste Schritte mit Office 365-APIs](http://dev.office.com/getting-started/office365apis?platform=option-ruby#setup) auf. Auf dieser wird die Registrierung vereinfacht, damit Sie dieses Beispiel schneller ausführen können.

![Screenshot des Office 365 Ruby Connect-Beispiels](../readme-images/O365-Ruby-Microsoft-Graph-Connect.png)  

> Hinweis: Eine ausführliche Anzeige des Codes finden Sie unter [Aufrufen von Microsoft Graph in einer Ruby-App](https://graph.microsoft.io/de-de/docs/platform/ruby).

## Voraussetzungen

Zum Verwenden des Office 365 Ruby Connect-Beispiels ist Folgendes erforderlich.

* Zum Ausführen des Beispiels ist Ruby 2.1 auf einem Entwicklungsserver erforderlich.
* Rails-Framework (das Beispiel wurde auf Rails 4.2 getestet).
* Bundler Dependency Manager.
* Rack-Webserveroberfläche für Ruby.
* Ein Office 365-Konto. Sie können sich für [ein Office 365-Entwicklerabonnement](https://aka.ms/devprogramsignup) registrieren. Dieses umfasst die Ressourcen, die Sie zum Erstellen von Office 365-Apps benötigen.

    > **Hinweis:**<br />
	Wenn Sie bereits über ein Abonnement verfügen, gelangen Sie über den vorherigen Link zu einer Seite mit der Meldung *Leider können Sie Ihrem aktuellen Konto diesen Inhalt nicht hinzufügen*. Verwenden Sie in diesem Fall ein Konto aus Ihrem aktuellen Office 365-Abonnement.<br /><br /> 
	Wenn Sie bereits bei Office 365 angemeldet sind, wird auf der Anmeldeschaltfläche im vorherigen Link die Meldung *Ihre Anforderung konnte leider nicht verarbeitet werden* angezeigt. Melden Sie sich in diesem Fall aus Office 365 auf derselben Seite ab, und melden Sie sich erneut an.
* Ein Microsoft Azure-Mandant zum Registrieren Ihrer Anwendung. Von Azure Active Directory (AD) werden Identitätsdienste bereitgestellt, die durch Anwendungen für die Authentifizierung und Autorisierung verwendet werden. Ein Testabonnement kann auf [Microsoft Azure](https://account.windowsazure.com/SignUp) erworben werden.

    > **Wichtig:**<br />
	Sie müssen zudem sicherstellen, dass Ihr Azure-Abonnement an Ihren Office 365-Mandanten gebunden ist. Rufen Sie dafür den Blogpost [Creating and Managing Multiple Windows Azure Active Directories](http://blogs.technet.com/b/ad/archive/2013/11/08/creating-and-managing-multiple-windows-azure-active-directories.aspx) des Active Directory-Teams auf. Im Abschnitt **Adding a new directory** finden Sie Informationen über die entsprechende Vorgehensweise. Weitere Informationen finden Sie zudem unter [Einrichten Ihrer Office 365-Entwicklungsumgebung](https://msdn.microsoft.com/office/office365/howto/setup-development-environment#bk_CreateAzureSubscription) im Abschnitt **Verknüpfen Ihres Office 365-Kontos mit Azure AD zum Erstellen und Verwalten von Apps**.
* Eine [```client ID```](app/Constants.rb#L29), ein [```key```](app/Constants.rb#L30) und [```reply URL```](app/Constants.rb#L31)-Werte einer in Azure registrierten Anwendung. Dieser Beispielanwendung muss die Berechtigung **E-Mails unter einem anderen Benutzernamen senden** für **Microsoft Graph** gewährt werden. Ausführliche Informationen finden Sie unter [Registrieren der browserbasierten Web-App mithilfe des Azure-Verwaltungsportals](https://msdn.microsoft.com/office/office365/HowTo/add-common-consent-manually#bk_RegisterWebApp) und im Thema über das [Gewähren entsprechender Berechtigungen zur Connect-Anwendung](https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/wiki/Grant-permissions-to-the-Connect-application-in-Azure).

     > **Hinweis:**<br />
	 Stellen Sie während des App-Registrierungsvorgangs sicher, dass Sie *http://localhost:3000/auth/azureactivedirectory/callback* als die **Anmelde-URL**. angeben.

## Konfigurieren und Ausführen der App

1. Wenn Sie weder über einen Bundler noch über ein Rack verfügen, können Sie sie mithilfe des folgenden Befehls installieren.

	```
	gem install bundler rack
	```
2. Nehmen Sie in der Datei [environment.rb](config/environment.rb) die folgende Aktion vor.
    1. Ersetzen Sie *IHRE_CLIENT_ID_EINGEBEN* durch die Client-ID Ihrer registrierten Azure-Anwendung.
    2. Ersetzen Sie *IHR_GEHEIMNIS_EINGEBEN* durch den Schlüssel Ihrer registrierten Azure-Anwendung.
    3. Ersetzen Sie *IHREN_MANDANTEN_EINGEBEN* durch Ihren Mandanten in der Form *Ihr_Mandant.onmicrosoft.com*.
3. Installieren Sie die Rails-Anwendung und -Abhängigkeiten mit dem folgenden Befehl.

	```
	bundle install
	```
4. Geben Sie zum Starten der Rails-Anwendung den folgenden Befehl ein.

	```
	rackup -p 3000
	```
5. Navigieren Sie im Webbrowser zu ```http://localhost:3000```.

## Fragen und Kommentare

Wir schätzen Ihr Feedback hinsichtlich des Office 365 Ruby Connect-Beispiels. Sie können uns Ihre Fragen und Vorschläge über den Abschnitt [Probleme](https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/issues) dieses Repositorys senden.

Allgemeine Fragen über die Office 365-Entwicklung sollten in [Stack Overflow](http://stackoverflow.com/questions/tagged/Office365+API) gepostet werden. Stellen Sie sicher, dass Ihre Fragen oder Kommentare mit [Office365] und [API] markiert sind.
  
## Zusätzliche Ressourcen

* [Office 365 APIs-Plattformübersicht](https://msdn.microsoft.com/office/office365/howto/platform-development-overview)
* [Erste Schritte mit Office 365-APIs](http://dev.office.com/getting-started/office365apis)
* [Übersicht über Microsoft Graph](http://graph.microsoft.io/)
* [Weitere Microsoft Graph Connect-Beispiele](https://github.com/officedev?utf8=%E2%9C%93&query=Microsoft-Graph-Connect)
* [Office 365 APIs-Startprojekt und -Codebeispiele](https://msdn.microsoft.com/office/office365/howto/starter-projects-and-code-samples)
* [Office-UI-Fabric](https://github.com/OfficeDev/Office-UI-Fabric)

## Copyright
Copyright (c) 2015 Microsoft. Alle Rechte vorbehalten.
