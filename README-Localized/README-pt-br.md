## Exemplo de conexão com o Office 365 para Ruby usando o Microsoft Graph

[ ![Status da Compilação](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)

A primeira etapa para que os aplicativos comecem a funcionar com dados e serviços do Office 365 é estabelecer uma conexão com essa plataforma. Este exemplo mostra como conectar e chamar uma única API através do Microsoft Graph (antiga API unificada do Office 365) e usa o Office Fabric UI para criar uma experiência do Office 365.

experimente a página [Introdução às APIs do Office 365](http://dev.office.com/getting-started/office365apis?platform=option-ruby#setup), que simplifica o registro para que você possa executar esse exemplo com mais rapidez.

![Captura de tela do exemplo de conexão com o Office 365 para Ruby](../readme-images/O365-Ruby-Microsoft-Graph-Connect.png)

> Observação: para ter uma visão detalhada do código, confira o artigo [Chamar o Microsoft Graph em um aplicativo Ruby](https://graph.microsoft.io/pt-br/docs/platform/ruby).

## Pré-requisitos

Para usar o exemplo de conexão com o Office 365 para Ruby, é necessário o seguinte:

* Ruby 2.1 para executar o exemplo em um servidor de desenvolvimento.
* Estrutura do Rails (o exemplo foi testado nos Rails 4.2).
* Gerenciador de dependências do Bundler.
* Interface de servidor Web Rack para Ruby.
* Uma conta do Office 365. Inscreva-se para uma [Assinatura de Desenvolvedor do Office 365](https://aka.ms/devprogramsignup), que inclui os recursos necessários para começar a criação de aplicativos do Office 365.

    > **Observação:**<br />
	caso já tenha uma assinatura, o link anterior direciona você para uma página com a mensagem *Não é possível adicioná-la à sua conta atual*. Nesse caso, use uma conta de sua assinatura atual do Office 365.<br /><br />
	Se você já entrou no Office 365, o botão Entrar no link anterior mostra a mensagem *Não é possível processar sua solicitação*. Nesse caso, saia do Office 365 nesta mesma página e entre novamente.
* Um locatário do Microsoft Azure para registrar o seu aplicativo. O Active Directory (AD) do Azure fornece serviços de identidade que os aplicativos usam para autenticação e autorização. Você pode adquirir uma assinatura de avaliação no [Microsoft Azure](https://account.windowsazure.com/SignUp).

    > **Importante:**<br />
	você também deve assegurar que a assinatura do Azure esteja vinculada ao locatário do Office 365. Para saber como fazer isso, confira a postagem de blog da equipe do Active Directory, [Criando e gerenciando vários Active Directories do Microsoft Azure](http://blogs.technet.com/b/ad/archive/2013/11/08/creating-and-managing-multiple-windows-azure-active-directories.aspx). A seção **Adicionando um novo diretório** explica como fazer isso. Para saber mais, confira o artigo [Configurar o ambiente de desenvolvimento do Office 365](https://msdn.microsoft.com/office/office365/howto/setup-development-environment#bk_CreateAzureSubscription) e a seção **Associar uma conta do Office 365 ao AD do Azure para criar e gerenciar aplicativos**.
* Os valores de [```client ID```](app/Constants.rb#L29), de [```key```](app/Constants.rb#L30) e de [```reply URL```](app/Constants.rb#L31) de um aplicativo registrado no Azure. Esse exemplo de aplicativo deve ter a permissão **Enviar email como usuário** concedida para o **Microsoft Graph**. Para obter informações detalhadas, confira o artigo [Registrar o aplicativo Web baseado em navegador com o Portal de Gerenciamento do Azure ](https://msdn.microsoft.com/office/office365/HowTo/add-common-consent-manually#bk_RegisterWebApp) e [conceda as permissões adequadas para o aplicativo de conexão](https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/wiki/Grant-permissions-to-the-Connect-application-in-Azure).

     > **Observação:**<br />
	 durante o processo de registro do aplicativo, não deixe de especificar *http://localhost:3000/auth/azureactivedirectory/callback* como a **URL de Entrada**.

## Configurar e executar o aplicativo

1. Caso ainda não tenha os recursos Bundler e Rack, você pode instalá-los com o seguinte comando.

	```
	gem install bundler rack
	```
2. No arquivo [environment.rb](config/environment.rb), faça o seguinte.
    1. Substitua *ENTER_YOUR_CLIENT_ID* pela ID do cliente do aplicativo Azure registrado.
    2. Substitua *ENTER_YOUR_SECRET* pela chave do aplicativo Azure registrado.
    3. Substitua *ENTER_YOUR_TENANT* pelo locatário, no formulário *your_tenant.onmicrosoft.com*.
3. Instale o aplicativo Rails e as dependências com o seguinte comando.

	```
	bundle install
	```
4. Para iniciar o aplicativo Rails, digite o seguinte comando.

	```
	rackup -p 3000
	```
5. Acesse ```http://localhost:3000``` no navegador da Web.

## Perguntas e comentários

Gostaríamos de saber sua opinião sobre o exemplo de conexão com o Office 365 para Ruby. Você pode enviar perguntas e sugestões na seção [Problemas](https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/issues) deste repositório.

Faça a postagem de perguntas sobre desenvolvimento do Office 365 em geral na página do [Stack Overflow](http://stackoverflow.com/questions/tagged/Office365+API). Não deixe de marcar as perguntas ou comentários com [Office365] e [API].
  
## Recursos adicionais

* [Visão geral da plataforma de APIs do Office 365](https://msdn.microsoft.com/office/office365/howto/platform-development-overview)
* [Introdução às APIs do Office 365](http://dev.office.com/getting-started/office365apis)
* [Visão geral do Microsoft Graph](http://graph.microsoft.io/)
* [Outros exemplos de conexão usando o Microsoft Graph](https://github.com/officedev?utf8=%E2%9C%93&query=Microsoft-Graph-Connect)
* [Exemplos de código e projetos iniciais de APIs do Office 365](https://msdn.microsoft.com/office/office365/howto/starter-projects-and-code-samples)
* [Office UI Fabric](https://github.com/OfficeDev/Office-UI-Fabric)

## Direitos autorais
Copyright © 2015 Microsoft. Todos os direitos reservados.
