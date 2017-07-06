## <a name="microsoft-graph-ruby-on-rails-connect-sample"></a>Exemple de connexion avec Microsoft Graph pour Ruby on Rails

[![État de création](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)

Microsoft Graph permet d’accéder aux ressources de compte Microsoft d’un utilisateur à partir d’une application web Ruby on Rails. Cet exemple utilise les appels REST directement vers le point de terminaison Microsoft Graph pour travailler avec les ressources des utilisateurs, dans ce cas pour envoyer un e-mail en tant qu’utilisateur.

L’exemple utilise l’intergiciel OmniAuth pour l’authentification auprès du point de terminaison Azure AD v2.0. Le point de terminaison Azure AD v2.0 permet aux développeurs d’écrire un flux de code unique qui gère l’authentification des comptes professionnels ou scolaires (Azure Active Directory) et personnels (Microsoft), y compris des comptes Office 365, Outlook.com et OneDrive.

L’exemple utilise également la structure d’interface utilisateur Office pour l’application d’un style à l’expérience utilisateur et sa mise en forme.

![Capture d’écran de l’exemple de connexion Microsoft Ruby on Rails](../readme-images/Microsoft-Graph-Ruby-Connect-UI.png)

## <a name="prerequisites"></a>Conditions préalables

Pour utiliser cet exemple, les éléments suivants sont requis :

- Ruby 2.1 pour exécuter l’exemple sur un serveur de développement.
- La structure Rails (l’exemple a été testé sur Rails 4.2).
- Le gestionnaire de dépendances Bundler.
- L’interface de serveur web Rack pour Ruby.
- Un [compte Microsoft](https://www.outlook.com/) ou un [compte Office 365 pour les entreprises](https://msdn.microsoft.com/en-us/office/office365/howto/setup-development-environment#bk_Office365Account)

## <a name="register-the-application"></a>Inscription de l’application

Inscrivez une application sur le portail d’inscription des applications Microsoft. L’inscription génère l’ID et le mot de passe de l’application que vous utiliserez pour configurer l’application pour l’authentification.

1. Connectez-vous au [portail d’inscription des applications Microsoft](https://apps.dev.microsoft.com/) en utilisant votre compte personnel, professionnel ou scolaire.

2. Choisissez **Ajouter une application**.

3. Entrez un nom pour l’application, puis choisissez **Créer une application**.

    La page d’inscription s’affiche, répertoriant les propriétés de votre application.

4. Copiez l’ID de l’application. Il s’agit de l’identificateur unique de votre application.

5. Sous **Secrets de l'application**, choisissez **Générer un nouveau mot de passe**. Copiez la question secrète de l’application à partir de la boîte de dialogue **Nouveau mot de passe créé**.

    Vous utiliserez l’ID de l’application et la question secrète de l’application pour configurer l’application.

6. Sous **Plateformes**, choisissez **Ajouter une plateforme** > **Web**.

7. Assurez-vous que la case **Autoriser le flux implicite** est cochée, puis entrez *http://localhost:3000/auth/microsoft_v2_auth/callback* comme URI de redirection.

    L’option **Autoriser le flux implicite** active le flux hybride OpenID Connect. Lors de l’authentification, cela permet à l’application de recevoir les informations de connexion (**id_token**) et les artefacts (dans ce cas, un code d’autorisation) qui servent à obtenir un jeton d’accès.

    L’URI de redirection *http://localhost:3000/auth/microsoft_v2_auth/callback* est la valeur que doit utiliser l’intergiciel OmniAuth une fois qu’il a traité la demande d’authentification.

8. Cliquez sur **Enregistrer**.

## <a name="build-and-run-the-sample"></a>Création et exécution de l’exemple

1. Téléchargez ou clonez l’exemple et ouvrez-le dans l’éditeur de votre choix.
1. Si vous n’avez pas encore Bundler et Rack sur votre ordinateur, vous pouvez les installer avec la commande suivante.

    ```
    gem install bundler rack
    ```
2. Dans le fichier [config/environment.rb](config/environment.rb), suivez les étapes ci-dessous :
    1. Remplacez *ENTER_YOUR_CLIENT_ID* par l’ID de votre application inscrite.
    2. Remplacez *ENTER_YOUR_SECRET* par la question secrète de votre application inscrite.

3. Installez l’application Rails et les dépendances avec la commande suivante.

    ```
    bundle install
    ```
4. Pour démarrer l’application Rails, entrez la commande suivante.

    ```
    rackup -p 3000
    ```
5. Accédez à ```http://localhost:3000``` dans votre navigateur web.

<a name="contributing"></a>
## <a name="contributing"></a>Contribution ##

Si vous souhaitez contribuer à cet exemple, voir [CONTRIBUTING.MD](/CONTRIBUTING.md).

Ce projet a adopté le [code de conduite Microsoft Open Source](https://opensource.microsoft.com/codeofconduct/). Pour plus d’informations, reportez-vous à la [FAQ relative au code de conduite](https://opensource.microsoft.com/codeofconduct/faq/) ou contactez [opencode@microsoft.com](mailto:opencode@microsoft.com) pour toute question ou tout commentaire.

## <a name="questions-and-comments"></a>Questions et commentaires

Nous serions ravis de connaître votre opinion sur l’exemple de connexion Microsoft Graph pour Ruby on Rails. Vous pouvez nous faire part de vos questions et suggestions dans la rubrique [Problèmes](https://github.com/microsoftgraph/ruby-connect-rest-sample/issues) de ce référentiel.

Votre avis compte beaucoup pour nous. Communiquez avec nous sur [Stack Overflow](http://stackoverflow.com/questions/tagged/office365+or+microsoftgraph). Posez vos questions avec la balise [MicrosoftGraph].

## <a name="see-also"></a>Voir aussi

- [Autres exemples de connexion avec Microsoft Graph](https://github.com/MicrosoftGraph?utf8=%E2%9C%93&query=-Connect)
- [Centre de développement Microsoft Graph](http://graph.microsoft.io)
- [Structure de l’interface utilisateur Office](https://github.com/OfficeDev/Office-UI-Fabric)

## <a name="copyright"></a>Copyright
Copyright (c) 2016 Microsoft. Tous droits réservés.
