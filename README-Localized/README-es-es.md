## Ejemplo Connect de Ruby para Office 365 con Microsoft Graph

[ ![Estado de la compilación](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)  

Conectarse a Office 365 es el primer paso que debe realizar cada aplicación para empezar a trabajar con los datos y servicios de Office 365. Este ejemplo muestra cómo conectar y cómo llamar después a una API mediante Microsoft Graph (anteriormente denominada API unificada de Office 365), y usa la interfaz de usuario Fabric de Office para crear una experiencia de Office 365.

Consulte [Introducción a las API de Office 365](http://dev.office.com/getting-started/office365apis?platform=option-ruby#setup), que simplifica el registro para que este ejemplo se ejecute más rápidamente.

![Captura de pantalla del ejemplo Connect de Ruby para Office 365](../readme-images/O365-Ruby-Microsoft-Graph-Connect.png)  

> Nota: Para realizar un análisis exhaustivo del código, consulte [Llamadas a Microsoft Graph en una aplicación de Ruby](https://graph.microsoft.io/es-es/docs/platform/ruby).

## Requisitos previos

Para usar el ejemplo Connect de Ruby para Office 365, se necesita lo siguiente.

* Ruby 2.1 para ejecutar el ejemplo en un servidor de desarrollo.
* Marco Rails (el ejemplo se probó con Rails 4.2).
* Administrador de dependencias Bundler.
* Interfaz de servidor web Rack para Ruby.
* Una cuenta de Office 365. Puede registrarse en [una suscripción a Office 365 Developer](https://aka.ms/devprogramsignup), que incluye los recursos que necesita para comenzar a crear aplicaciones de Office 365.

    > **Nota:**<br /> 
	Si ya dispone de una suscripción, el vínculo anterior le dirige a una página con el mensaje *No se puede agregar a su cuenta actual*. En ese caso, use una cuenta de su suscripción actual a Office 365.<br /><br /> 
	Si ya inició sesión en Office 365, el botón de inicio de sesión del vínculo anterior muestra el mensaje *No podemos procesar su solicitud*. En ese caso, cierre sesión en Office 365 en esa misma página y vuelva a iniciarla.
* Un inquilino de Microsoft Azure para registrar la aplicación. Azure Active Directory (AD) proporciona servicios de identidad que las aplicaciones usan para autenticación y autorización. Se puede adquirir una suscripción de prueba en [Microsoft Azure](https://account.windowsazure.com/SignUp).

    > **Importante:**<br />
	También necesita asegurarse de que su suscripción a Azure está enlazada a su inquilino de Office 365. Para ello, consulte la publicación del blog del equipo de Active Directory, [Crear y administrar varios directorios de Windows Azure Active Directory](http://blogs.technet.com/b/ad/archive/2013/11/08/creating-and-managing-multiple-windows-azure-active-directories.aspx). La sección **Agregar un nuevo directorio** le explicará cómo hacerlo. Para obtener más información, también puede consultar [Configurar el entorno de desarrollo de Office 365](https://msdn.microsoft.com/office/office365/howto/setup-development-environment#bk_CreateAzureSubscription) y la sección **Asociar su cuenta de Office 365 con Azure AD para crear y administrar aplicaciones**.
* Los valores de [```client ID```](app/Constants.rb#L29), [```key```](app/Constants.rb#L30) y [```reply URL```](app/Constants.rb#L31) de una aplicación registrada en Azure. A esta aplicación de ejemplo se le debe conceder el permiso **Enviar correo como usuario** para **Microsoft Graph**. Para obtener información detallada, consulte [Registrar su aplicación web basada en un explorador con el Portal de administración de Azure](https://msdn.microsoft.com/office/office365/HowTo/add-common-consent-manually#bk_RegisterWebApp) y [Conceder los permisos adecuados a la aplicación Connect](https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/wiki/Grant-permissions-to-the-Connect-application-in-Azure).

     > **Nota:**<br />
	 Durante el proceso de registro de la aplicación, asegúrese de especificar *http://localhost:3000/auth/azureactivedirectory/callback* como **Dirección URL de inicio de sesión**.

## Configurar y ejecutar la aplicación

1. Si todavía no tiene Bundler y Rack, puede instalarlos con el siguiente comando.

	```
	gem install bundler rack
	```
2. En el archivo [environment.rb](config/environment.rb) haga lo siguiente.
    1. Reemplace *ENTER_YOUR_CLIENT_ID* por el identificador de cliente de la aplicación registrada en Azure.
    2. Reemplace *ENTER_YOUR_SECRET* por la clave de la aplicación registrada en Azure.
    3. Reemplace *ENTER_YOUR_TENANT* por su inquilino, en el formulario *your_tenant.onmicrosoft.com*.
3. Instale la aplicación Rails y las dependencias con el siguiente comando.

	```
	bundle install
	```
4. Para iniciar la aplicación Rails, escriba el siguiente comando.

	```
	rackup -p 3000
	```
5. Vaya a ```http://localhost:3000``` en el explorador web.

## Preguntas y comentarios

Nos encantaría recibir sus comentarios acerca del ejemplo Connect de Ruby para Office 365. Puede enviarnos sus preguntas y sugerencias a través de la sección [Problemas](https://github.com/OfficeDev/O365-Ruby-Microsoft-Graph-Connect/issues) de este repositorio.

Las preguntas generales sobre desarrollo en Office 365 deben publicarse en [Stack Overflow](http://stackoverflow.com/questions/tagged/Office365+API). Asegúrese de que sus preguntas o comentarios se etiquetan con [Office365] y [API].
  
## Recursos adicionales

* [Información general sobre la plataforma de las API de Office 365](https://msdn.microsoft.com/office/office365/howto/platform-development-overview)
* [Introducción a las API de Office 365](http://dev.office.com/getting-started/office365apis)
* [Información general de Microsoft Graph](http://graph.microsoft.io/)
* [Otros ejemplos Connect de Microsoft Graph](https://github.com/officedev?utf8=%E2%9C%93&query=Microsoft-Graph-Connect)
* [Proyectos de inicio de las API de Office 365 y ejemplos de código](https://msdn.microsoft.com/office/office365/howto/starter-projects-and-code-samples)
* [Interfaz de usuario Fabric de Office](https://github.com/OfficeDev/Office-UI-Fabric)

## Copyright
Copyright (c) 2015 Microsoft. Todos los derechos reservados.
