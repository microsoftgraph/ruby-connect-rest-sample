## <a name="microsoft-graph-ruby-on-rails-connect-sample"></a>Пример Microsoft Graph Ruby on Rails Connect

[![Состояние сборки](https://api.travis-ci.org/microsoftgraph/ruby-connect-rest-sample.svg?branch=master)](https://travis-ci.org/microsoftgraph/ruby-connect-rest-sample)

Используйте Microsoft Graph для доступа к ресурсам учетной записи Майкрософт, принадлежащей пользователю, в веб-приложении Ruby on Rails. В этом примере показано, как с помощью вызовов REST непосредственно для конечной точки Microsoft Graph можно работать с ресурсами пользователя (в этом случае — чтобы отправить электронное сообщение от имени этого пользователя).

В этом примере показано, как с помощью ПО промежуточного слоя OmniAuth можно обеспечить проверку подлинности с использованием конечной точки Azure AD 2.0. Конечная точка Azure AD версии 2.0 позволяет разработчикам создать один поток кода, обеспечивающий проверку подлинности как для рабочих или учебных (Azure Active Directory), так и для личных учетных записей Майкрософт, в том числе учетных записей Office 365, Outlook.com и OneDrive.

В примере также используется Office Fabric для оформления и форматирования элементов пользовательского интерфейса.

![Снимок экрана с приложением Microsoft Ruby on Rails Connect](/readme-images/Microsoft-Graph-Ruby-Connect-UI.png)

## <a name="prerequisites"></a>Необходимые компоненты

Чтобы воспользоваться этим приложением, необходимо следующее:

- Ruby 2.4.2 для запуска приложения на сервере разработки (файл `.ruby-version` предоставлен для менеджеров версий Ruby, таких как [rbenv](https://github.com/rbenv/rbenv#choosing-the-ruby-version), [chruby](https://github.com/postmodern/chruby#auto-switching) и [rvm](https://rvm.io/workflow/projects));
- диспетчер зависимостей Bundler;
- [учетная запись Майкрософт](https://www.outlook.com/) или [учетная запись Office 365 для бизнеса](https://msdn.microsoft.com/en-us/office/office365/howto/setup-development-environment#bk_Office365Account).

## <a name="register-the-application"></a>Регистрация приложения

Зарегистрируйте приложение на портале регистрации приложений Майкрософт. При этом будут созданы пароль и идентификатор приложения, с помощью которых вы настроите приложение для проверки подлинности.

1. Войдите на [портал регистрации приложений Майкрософт](https://apps.dev.microsoft.com/) с помощью личной, рабочей или учебной учетной записи.

2. Нажмите кнопку **Добавить приложение**.

3. Введите имя приложения и нажмите кнопку **Создать приложение**.

    Откроется страница регистрации со свойствами приложения.

4. Скопируйте идентификатор приложения. Это уникальный идентификатор приложения.

5. В разделе **Секреты приложения** нажмите кнопку **Создать новый пароль**. Скопируйте секрет приложения из диалогового окна **Новый пароль создан**.

    Идентификатор и секрет приложения используются для его настройки.

6. В разделе **Платформы** нажмите **Добавление платформы** > **Интернет**.

7. Установите флажок **Разрешить неявный поток** и введите URI перенаправления *http://localhost:3000/auth/microsoft_v2_auth/callback*.

    Параметр **Разрешить неявный поток** включает гибридный поток OpenID Connect. Благодаря этому при проверке подлинности приложение может получить данные для входа (**id_token**) и артефакты (в данном случае — код авторизации), с помощью которых оно может получить маркер доступа.

    URI перенаправления *http://localhost:3000/auth/microsoft_v2_auth/callback* — это значение, которое ПО промежуточного слоя OmniAuth использует после обработки запроса на проверку подлинности.

8. Нажмите кнопку **Сохранить**.

## <a name="build-and-run-the-sample"></a>Сборка и запуск примера

1. Скачайте или клонируйте пример и откройте его в удобном для себя редакторе.
1. Если у вас еще нет [bundler](http://bundler.io/), можете установить его с помощью приведенной ниже команды.

    ```
    gem install bundler
    ```
2. Выполните указанные ниже действия в файле [config/environment.rb](config/environment.rb).
    1. Замените текст *ENTER_YOUR_CLIENT_ID* на идентификатор приложения для зарегистрированного приложения.
    2. Замените текст *ENTER_YOUR_SECRET* на секрет для зарегистрированного приложения.

3. Установите приложение Rails и зависимости с помощью приведенной ниже команды.

    ```
    bundle install
    ```
4. Чтобы запустить приложение Rails, введите приведенную ниже команду.

    ```
    rackup -p 3000
    ```
5. Введите адрес ```http://localhost:3000``` в веб-браузере.

<a name="contributing"></a>
## <a name="contributing"></a>Участие ##

Если вы хотите добавить код в этот пример, просмотрите статью [CONTRIBUTING.MD](/CONTRIBUTING.md).

Этот проект соответствует [правилам поведения Майкрософт, касающимся обращения с открытым кодом](https://opensource.microsoft.com/codeofconduct/). Читайте дополнительные сведения в [разделе вопросов и ответов по правилам поведения](https://opensource.microsoft.com/codeofconduct/faq/) или отправляйте новые вопросы и замечания по адресу [opencode@microsoft.com](mailto:opencode@microsoft.com).

## <a name="questions-and-comments"></a>Вопросы и комментарии

Мы будем рады получить от вас отзывы о примере Ruby on Rails Connect на базе Microsoft Graph. Вы можете отправлять нам вопросы и предложения на вкладке [Issues](https://github.com/microsoftgraph/ruby-connect-rest-sample/issues) (Вопросы) этого репозитория.

Ваши отзывы важны для нас. Для связи с нами используйте сайт [Stack Overflow](http://stackoverflow.com/questions/tagged/office365+or+microsoftgraph). Помечайте свои вопросы тегом [MicrosoftGraph].

## <a name="see-also"></a>См. также

- [Другие примеры Microsoft Graph Connect](https://github.com/MicrosoftGraph?utf8=%E2%9C%93&query=-Connect)
- [Центр разработки с помощью Microsoft Graph](http://graph.microsoft.io)
- [Office UI Fabric](https://github.com/OfficeDev/Office-UI-Fabric)

## <a name="copyright"></a>Авторское право
(c) Корпорация Майкрософт (Microsoft Corporation), 2016. Все права защищены.
