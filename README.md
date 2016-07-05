Nome: Gabriela e Renata
1/2016
Professor: Renato Coral
UnB - FGA

Para executar de maneira correta a aplicação deve-se instalar corretamente o Ruby e o Ruby on Rails. 
Após isso, será necessário abrir a pasta do projeto no terminal e instalar as seguintes Gems:

- gem 'foundation-rails'
- gem 'devise'
- gem 'redis', '~>3.3.0'
- gem 'hiredis', '~>0.6.1'
- gem 'activeadmin', github: 'activeadmin'

Para isso, deve-se dar o comando bundle install no terminal e logo após instalar cada Gem:

$ rails g foundation:install
$ rails g devise:install
$ sudo apt-get install redis-server (Digite redis-server no terminal para receber instruções,
caso não funcione esse comando)
$ rails g active_admin:install

Tendo feito isso será necessário dar o comando rake db:migrate para que os dados de usuário admin padrão sejam migrados para o banco de dados.
Agora basta dar o comando rails s no terminal para que a página web seja exibida no browser.
Acesse a página http://localhost:3000 para vizualizar a aplicação.
Para ter acesso ao carrinho de compras o usuário deve cadastrar-se e permanecer logado no sistema. Assim poderá incluir e 
remover produtos do carrinho.
O usuário pode remover produtos diretamente no carrinho de compras, pode editar suas informações cadastrais clicando no botão superior 
que exibe seu E-mail e pode dar log out clicando no botão superior sair.
A área restrita Admin só poderá ser acessada pelo usuário administrador do sistema cuja senha e login são : 
adminrg@gmail.com , senha: 123456 . Estes foram definidos por padrão em db/seeds.rb
Na área Admin pode-se incluir, excluir ou editar produtos e também pode-se cadastrar e deletar usuários.