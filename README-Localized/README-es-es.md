## <a name="microsoft-graph-ruby-on-rails-connect-sample"></a>Ejemplo de Microsoft Graph Ruby on Rails Connect

[![Estado de compilación](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)

Utilizar Microsoft Graph para tener acceso a los recursos de la cuenta de Microsoft del usuario desde una aplicación web Ruby on Rails. Este ejemplo utiliza llamadas REST directamente al extremo de Microsoft Graph para trabajar con recursos del usuario: en este caso, para enviar un correo electrónico como el usuario.

El ejemplo usa OmniAuth middleware para autenticarse en el extremo de Azure AD v2.0. El extremo de Azure AD v2.0 permite a los desarrolladores escribir un flujo de código simple que trata la autenticación tanto para las cuentas profesional o educativa (Azure Active Directory) como personales (Microsoft) de los usuarios, incluidas las cuentas de Office 365, Outlook.com y OneDrive.

El ejemplo también usa la UI de Office Fabric para aplicar estilos y formatos a la experiencia del usuario.

![Captura de pantalla del ejemplo Microsoft Ruby on Rails Connect ](../readme-images/Microsoft-Graph-Ruby-Connect-UI.png)

## <a name="prerequisites"></a>Requisitos previos

Para usar este ejemplo de código, se requiere lo siguiente:

- Ruby 2.4.2 para ejecutar el ejemplo en un servidor de desarrollo.
- Administrador de dependencias Bundler.
- Una [cuenta de Microsoft](https://www.outlook.com/) o una [cuenta de Office 365 para empresas](https://msdn.microsoft.com/en-us/office/office365/howto/setup-development-environment#bk_Office365Account)

## <a name="register-the-application"></a>Registrar la aplicación

Registre una aplicación en el Portal de registro de aplicaciones de Microsoft. Esta acción generará el ID y la contraseña de aplicación que usará para configurar la aplicación para la autenticación.

1. Inicie sesión en el [Portal de registro de aplicaciones de Microsoft](https://apps.dev.microsoft.com/) mediante su cuenta personal, profesional o educativa.

2. Seleccione **Agregar una aplicación**.

3. Escriba un nombre para la aplicación y seleccione **Crear aplicación**.

    Se muestra la página de registro, indicando las propiedades de la aplicación.

4. Copie el identificador de la aplicación. Se trata del identificador único para su aplicación.

5. En **Secretos de aplicación**, seleccione **Generar nueva contraseña**. Copie el secreto de aplicación del cuadro de diálogo **Nueva contraseña generada**.

    Deberá usar el ID y el secreto de aplicación para configurar la aplicación.

6. En **Plataformas**, elija **Agregar plataforma** > **Web**.

7. Asegúrese de que la casilla **Permitir flujo implícito** está seleccionada y escriba *http://localhost:3000/auth/microsoft_v2_auth/callback* como URI de redireccionamiento.

    La opción **Permitir flujo implícito**habilita el flujo híbrido de OpenID Connect. Durante la autenticación, esto permite que la aplicación reciba tanto la información de inicio de sesión (el **id_token**) como los artefactos (en este caso, un código de autorización) que la aplicación usa para obtener un token de acceso.

    El URI de redireccionamiento *http://localhost:3000/auth/microsoft_v2_auth/callback* es el valor con el que el middleware de OmniAuth se ha configurado para usar una vez que haya procesado la solicitud de autenticación.

8. Seleccione **Guardar**.

## <a name="build-and-run-the-sample"></a>Compilar y ejecutar el ejemplo

1. Descargar o clonar el ejemplo y abrirlo en el editor de su elección.
1. Si todavía no tiene Bundler ni Rack, puede instalarlos con el siguiente comando.

    ```
    gem install bundler rack
    ```
2. En el archivo [config/environment.rb](config/environment.rb) realice lo siguiente:
    1. Reemplace *ENTER_YOUR_CLIENT_ID* por el identificador de su aplicación registrada.
    2. Reemplace *ENTER_YOUR_SECRET* por el secreto de su aplicación registrada.

3. Instale la aplicación Rails y las dependencias con el siguiente comando.

    ```
    bundle install
    ```
4. Para iniciar la aplicación Rails, escriba el siguiente comando.

    ```
    rackup -p 3000
    ```
5. Vaya a ```http://localhost:3000``` en el explorador web.

<a name="contributing"></a>
## <a name="contributing"></a>Colaboradores ##

Si le gustaría contribuir a este ejemplo, consulte [CONTRIBUTING.MD](/CONTRIBUTING.md).

Este proyecto ha adoptado el [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/) (Código de conducta de código abierto de Microsoft). Para obtener más información, consulte las [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) (Preguntas más frecuentes del código de conducta) o póngase en contacto con [opencode@microsoft.com](mailto:opencode@microsoft.com) con otras preguntas o comentarios.

## <a name="questions-and-comments"></a>Preguntas y comentarios

Nos encantaría recibir sus comentarios acerca del ejemplo de Microsoft Graph Ruby on Rails Connect. Puede enviarnos sus preguntas y sugerencias a través de la sección [Problemas](https://github.com/microsoftgraph/ruby-connect-rest-sample/issues) de este repositorio.

Sus comentarios son importantes para nosotros. Conecte con nosotros en [Desbordamiento de pila](http://stackoverflow.com/questions/tagged/office365+or+microsoftgraph). Etiquete sus preguntas con [MicrosoftGraph].

## <a name="see-also"></a>Vea también

- [Otros ejemplos de Microsoft Graph Connect](https://github.com/MicrosoftGraph?utf8=%E2%9C%93&query=-Connect)
- [Centro de desarrollo de Microsoft Graph](http://graph.microsoft.io)
- [Office UI Fabric](https://github.com/OfficeDev/Office-UI-Fabric)

## <a name="copyright"></a>Copyright
Copyright (c) 2016 Microsoft. Todos los derechos reservados.
