## Exemple de connexion de Ruby à Office 365 avec Microsoft Graph

[ ![État de création](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)

La connexion à Office 365 est la première étape que chaque application doit suivre pour commencer à travailler avec les données et services Office 365. Cet exemple explique comment connecter, puis appeler une API via Microsoft Graph (anciennement appelé API unifiée Office 365). Il utilise la structure d’interface utilisateur d’Office pour créer une expérience Office 365.

Consultez la page relative à la [prise en main des API Office 365](http://dev.office.com/getting-started/office365apis?platform=option-ruby#setup) pour enregistrer plus facilement votre application et exécuter plus rapidement cet exemple.

![Capture d’écran d’un exemple de connexion de Ruby à Office 365](../readme-images/O365-Ruby-Microsoft-Graph-Connect.png)  

> Remarque : Pour en savoir plus le code, consultez la rubrique relative à l’[appel de Microsoft Graph dans une application Ruby](https://graph.microsoft.io/fr-fr/docs/platform/ruby).

## Conditions préalables

Pour utiliser l’exemple de connexion de Ruby à Office 365, vous devez disposer des éléments suivants :

* Ruby 2.1 pour exécuter l’exemple sur un serveur de développement.
* La structure Rails (l’exemple a été testé sur Rails 4.2).
* Le gestionnaire de dépendances Bundler.
* L’interface de serveur web Rack pour Ruby.
* Un compte Office 365. Vous pouvez vous inscrire à [Office 365 Developer](https://aka.ms/devprogramsignup) pour accéder aux ressources dont vous avez besoin pour commencer à créer des applications Office 365.

    > **Remarque :**<br /> 
	si vous avez déjà un abonnement, le lien précédent vous renvoie vers une page avec le message suivant : *Désolé, vous ne pouvez pas ajouter ceci à votre compte existant*. Dans ce cas, utilisez un compte lié à votre abonnement Office 365 existant.<br /><br /> 
	Si vous êtes déjà connecté à Office 365, le bouton de connexion dans le lien précédent affiche le message suivant : *Désolé, nous ne pouvons pas traiter votre demande*. Dans ce cas, déconnectez-vous d’Office 365 sur cette même page et connectez-vous à nouveau.
* Un client Microsoft Azure pour enregistrer votre application. Azure Active Directory (AD) fournit des services d’identité que les applications utilisent à des fins d’authentification et d’autorisation. Un abonnement d’évaluation peut être demandé sur le site de [Microsoft Azure](https://account.windowsazure.com/SignUp).

    > **Important :**<br /> 
	vous devez également vous assurer que votre abonnement Azure est lié à votre client Office 365. Pour cela, consultez le billet du blog de l’équipe d’Active Directory relatif à la [création et la gestion de plusieurs fenêtres dans les répertoires Azure Active Directory](http://blogs.technet.com/b/ad/archive/2013/11/08/creating-and-managing-multiple-windows-azure-active-directories.aspx). La section sur l’**ajout d’un nouveau répertoire** vous explique comment procéder. Pour en savoir plus, vous pouvez également consulter la rubrique relative à la [configuration de votre environnement de développement Office 365](https://msdn.microsoft.com/office/office365/howto/setup-development-environment#bk_CreateAzureSubscription) et la section sur l’**association de votre compte Office 365 à Azure Active Directory pour créer et gérer des applications**.
* Les valeurs [```client ID```](app/Constants.rb#L29), [```key```](app/Constants.rb#L30) et [```reply URL```](app/Constants.rb#L31) d’une application enregistrée dans Azure. Cet exemple d’application doit obtenir l’autorisation **Envoyer un courrier électronique en tant qu’utilisateur** pour **Microsoft Graph**. Pour plus d’informations, consultez [Enregistrer une application web basée sur un navigateur avec le portail de gestion Azure](https://msdn.microsoft.com/office/office365/HowTo/add-common-consent-manually#bk_RegisterWebApp) et [accorder les autorisations appropriées à l’application de connexion](https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/wiki/Grant-permissions-to-the-Connect-application-in-Azure).

     > **Remarque :**<br />
	 pendant l’enregistrement de l’application, veillez à sélectionner *http://localhost:3000/auth/azureactivedirectory/callback* comme **URL d’authentification**.

## Configuration et exécution de l’application

1. Si vous n’avez pas encore Bundler et Rack sur votre ordinateur, vous pouvez les installer avec la commande suivante.

	```
	gem install bundler rack
	```
2. Dans le fichier [environment.rb](config/environment.rb), suivez les étapes ci-dessous :
    1. Remplacez *ENTER_YOUR_CLIENT_ID* par l’ID client de votre application Azure enregistrée.
    2. Remplacez *ENTER_YOUR_SECRET* par la clé de votre application Azure enregistrée.
    3. Remplacez *ENTER_YOUR_TENANT* par votre client, dans le formulaire *your_tenant.onmicrosoft.com*.
3. Installez l’application Rails et les dépendances avec la commande suivante.

	```
	bundle install
	```
4. Pour démarrer l’application Rails, entrez la commande suivante.

	```
	rackup -p 3000
	```
5. Accédez à ```http://localhost:3000``` dans votre navigateur web.

## Questions et commentaires

Nous serions ravis de connaître votre opinion sur l’exemple de connexion de Ruby à Office 365. Vous pouvez nous faire part de vos questions et suggestions dans la rubrique [Problèmes](https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/issues) de ce référentiel.

Si vous avez des questions sur le développement d’Office 365, envoyez-les sur [Stack Overflow](http://stackoverflow.com/questions/tagged/Office365+API). Posez vos questions avec les tags [API] et [Office 365].
  
## Ressources supplémentaires

* [Présentation de la plateforme des API Office 365](https://msdn.microsoft.com/office/office365/howto/platform-development-overview)
* [Prise en main des API Office 365](http://dev.office.com/getting-started/office365apis)
* [Présentation de Microsoft Graph](http://graph.microsoft.io/)
* [Autres exemples de connexion avec Microsoft Graph](https://github.com/officedev?utf8=%E2%9C%93&query=Microsoft-Graph-Connect)
* [Exemples de code et projets de lancement pour les API Office 365](https://msdn.microsoft.com/office/office365/howto/starter-projects-and-code-samples)
* [Structure d’interface utilisateur d’Office](https://github.com/OfficeDev/Office-UI-Fabric)

## Copyright
Copyright (c) 2015 Microsoft. Tous droits réservés.
