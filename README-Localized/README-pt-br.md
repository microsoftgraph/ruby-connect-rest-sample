## <a name="microsoft-graph-ruby-on-rails-connect-sample"></a>Exemplo de conexão com o Microsoft Graph Ruby on Rails

[![Status do build](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)

Utilize o Microsoft Graph para acessar os recursos de conta da Microsoft de um usuário a partir de um aplicativo Web do Ruby on Rails. Este exemplo utiliza chamadas REST diretamente para o ponto de extremidade do Microsoft Graph para trabalhar com os recursos do usuário. Neste caso, para enviar um email como o usuário.

O exemplo usa o middleware de OmniAuth para autenticar no ponto de extremidade do Azure AD versão 2.0. O Azure AD versão 2.0 permite aos desenvolvedores gravar um único fluxo de código para tratar da autenticação de contas pessoais (Microsoft), corporativas ou de estudantes (Azure Active Directory), inclusive contas das plataformas Office 365, Outlook.com e OneDrive.

O exemplo também usa a interface do usuário do Office Fabric para definir o estilo e a formatação da experiência do usuário.

![Captura de tela do exemplo de conexão com o Microsoft Graph para Ruby on Rails](/readme-images/Microsoft-Graph-Ruby-Connect-UI.png)

## <a name="prerequisites"></a>Pré-requisitos

Para utilizar este exemplo, são necessários:

- Ruby 2.4.2 para executar o exemplo em um servidor de desenvolvimento (um arquivo `.ruby-version` é fornecido para gerenciadores de versão do Ruby, como [rbenv](https://github.com/rbenv/rbenv#choosing-the-ruby-version), [chruby](https://github.com/postmodern/chruby#auto-switching) e [rvm](https://rvm.io/workflow/projects)).
- Gerenciador de dependências do Bundler.
- Uma [conta da Microsoft](https://www.outlook.com/) ou uma [conta do Office 365 para empresas](https://msdn.microsoft.com/en-us/office/office365/howto/setup-development-environment#bk_Office365Account)

## <a name="register-the-application"></a>Registrar o aplicativo

Registre um aplicativo no Portal de Registro de Aplicativos da Microsoft. Isso gera a ID do aplicativo e a senha que você usará para configurar o aplicativo para autenticação.

1. Entre no [Portal de Registro de Aplicativos da Microsoft](https://apps.dev.microsoft.com/) usando sua conta pessoal ou uma conta corporativa ou de estudante.

2. Escolha **Adicionar um aplicativo**.

3. Insira um nome para o aplicativo e escolha **Criar aplicativo**.

    A página de registro é exibida, listando as propriedades do seu aplicativo.

4. Copie a ID do aplicativo. Esse é o identificador exclusivo do aplicativo.

5. Em **Segredos do Aplicativo**, escolha **Gerar Nova Senha**. Copie o segredo do aplicativo da caixa de diálogo **Nova senha gerada**.

    Você usará a ID do aplicativo e o segredo do aplicativo para configurar o aplicativo.

6. Em **Plataformas**, escolha **Adicionar plataforma** > **Web**.

7. Não deixe de marcar a caixa de diálogo **Permitir Fluxo Implícito** e inserir *http://localhost:3000/auth/microsoft_v2_auth/callback* como o URI de Redirecionamento.

    A opção **Permitir Fluxo Implícito** habilita o fluxo híbrido do OpenID Connect. Durante a autenticação, isso permite que o aplicativo receba informações de entrada (o **id_token**) e artefatos (neste caso, um código de autorização) que o aplicativo usa para obter um token de acesso.

    O URI de redirecionamento *http://localhost:3000/auth/microsoft_v2_auth/callback* é o valor que o middleware OmniAuth está configurado para usar quando tiver processado a solicitação de autenticação.

8. Escolha **Salvar**.

## <a name="build-and-run-the-sample"></a>Criar e executar o exemplo

1. Baixe ou clone o exemplo e abra-o no editor de sua escolha.
1. Caso você ainda não tenha o [Bundler](http://bundler.io/), é possível instalá-lo com o comando seguinte.

    ```
    gem install bundler
    ```
2. No arquivo [config/environment.rb](config/environment.rb), faça o seguinte.
    1. Substitua *ENTER_YOUR_CLIENT_ID* pela ID do aplicativo registrado.
    2. Substitua *ENTER_YOUR_SECRET* pelo segredo do aplicativo registrado.

3. Instale o aplicativo Rails e as dependências com o seguinte comando.

    ```
    bundle install
    ```
4. Para iniciar o aplicativo Rails, digite o seguinte comando.

    ```
    rackup -p 3000
    ```
5. Acesse ```http://localhost:3000``` no navegador da Web.

<a name="contributing"></a>
## <a name="contributing"></a>Colaboração ##

Se quiser contribuir para esse exemplo, confira [CONTRIBUTING.MD](/CONTRIBUTING.md).

Este projeto adotou o [Código de Conduta do Código Aberto da Microsoft](https://opensource.microsoft.com/codeofconduct/). Para saber mais, confira as [Perguntas frequentes do Código de Conduta](https://opensource.microsoft.com/codeofconduct/faq/) ou contate [opencode@microsoft.com](mailto:opencode@microsoft.com) se tiver outras dúvidas ou comentários.

## <a name="questions-and-comments"></a>Perguntas e comentários

Adoraríamos receber seus comentários sobre o projeto exemplo de Conexão do Microsoft Graph Ruby on Rails. Você pode nos enviar suas perguntas e sugestões por meio da seção [Issues](https://github.com/microsoftgraph/ruby-connect-rest-sample/issues) deste repositório.

Os seus comentários são importantes para nós. Junte-se a nós na página [Stack Overflow](http://stackoverflow.com/questions/tagged/office365+or+microsoftgraph). Marque suas perguntas com [MicrosoftGraph].

## <a name="see-also"></a>Ver também

- [Outros exemplos de conexão usando o Microsoft Graph](https://github.com/MicrosoftGraph?utf8=%E2%9C%93&query=-Connect)
- [Centro de desenvolvimento do Microsoft Graph](http://graph.microsoft.io)
- [Office UI Fabric](https://github.com/OfficeDev/Office-UI-Fabric)

## <a name="copyright"></a>Copyright
Copyright © 2016 Microsoft. Todos os direitos reservados.
