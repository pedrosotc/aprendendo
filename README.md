# Aprendendo
Projetos pequenos para ensinar como usar algumas ferramentas, metodos e linguagens

Obs.: É interessante que saiba o que é "untracked","staged", "unstaged";
Não esquecer de criar um gitignore, você pode usar o "www.gitignore.io"
para isso;
Para que seus comites sejam padronizados dar uma olhada em  
https://www.conventionalcommits.org/en/v1.0.0/

&nbsp;

		git init
Apenas inicia o projeto

&nbsp;

		git remote -v
Serve para ver todos os repositórios remotos disponiveis na maquina;

&nbsp;

		git remote add origin "url do repositório"
adiciona o repositório remoto na minha maquina

&nbsp;

		git clone "url do repositório"
já faz o git init, serve para se o projeto já existe no git

&nbsp;

		git config --global core.editor code
Serve pra não abrir aquele editor chato do git que ninguém entende. 
O code pode ser o editor que vc quiser; Parametros que podem ser usados:
Helper, editor (nesse eu coloco "Code" por que utilizo "VSCode"), name, 
email, etc.

&nbsp;

		git config --edit
Se vc deixar o comando como mostrado acima ele vai para o local, então 
sería a mesma coisas que escrever "git config --local --edit", mas esse
arquivo não é muito manipulado, mas vc pode querer trocar um usuario  de 
email em uma determinada maquina ou algo parecido, para acrescentar um 
email é só acrescentar "[user] email = "seuEmail";

&nbsp;

		git config --list
mostra toda a configuração do git

&nbsp;

		git config --system --edit
posso abrir para editar a configuração, mas essas são coisas muito gerais, 
não costumam ser alteradas.

&nbsp;

		git config --global --edit
Você acessa a configuração do seu usuário;
É legal criar um alias para comandos simples e repetitivos, por exemplo
"[alias] s = !git status -s", então é só rodar "git s" para obter 
"git status -s", mas não crie alias para tudo, só pra coisas repetitivas 
que não são perigosas;

&nbsp;

		git status
serve para ver quais arquivos estão na "untracked"(local na minha maquina) 
e "staged area"(area do git que esta esperando pelo commit);
"git status -s" mostra uma versão reduzida;

&nbsp;

		git add
Serve para colocar o seu código local da maquina em uma área reservada chamada
"unstaged area";
"git add." adicionas todos os arquivos para o commit; outro exemplo seria
git add "nome do arquivo";

&nbsp;

		git add --all
Igual que o "git add.", mas o all serve quando vc esta em outra pasta do 
repositorio;

&nbsp;

		git commit -m "um comentário"
serve para subir os aquivos que estão na "staged area" para o repositório

&nbsp;

		git add. && commit -m
adiciona todos os arquivos e já comita com comentarios; ótimo candidato para
um alias;

&nbsp;

		git commit --amend --no-edit
Serve para comitar a atualização atual junto com a anterior;

&nbsp;

		git stash
Serve pra vc manter as alterações de alguma versão ou branch enquanto vc tem
que ver outra que esta mais urgente. Pois vc pode voltar o seu código para a 
sua maquina sem precisar comita-lo no repositório. Esse comando ficaria no 
lugar do commit, vc deve usa-lo depois do "git add.";

&nbsp;

		git stash list
mostra todos os stashes que vc tem;

&nbsp;

		git stash clear
Limpa todos os stashes que você criou;
	
&nbsp;

		git stash apply
Serve para voltar seu código para a "unstaget area" sem apagar o stash

&nbsp;

		git stash pop
Serve para voltar seu código para a "unstaget area" e depois remove o seu 
stash da sua lista;

&nbsp;

## UML diagrams


###Sequence Diagram
                    
```seq
Untracked -> Staged (Tracked): git add .
Staged (Tracked) ->> Unmodified (Tracked) : git commit
Unmodified (Tracked) --> Untracked : git remove file
Unmodified (Tracked) --> Modifield (Tracked) : edit 
Modifield (Tracked) -> Staged (Tracked) : Stage the file 
```
###End


###Sequence Diagram
```mermaid           
seq
Andrew->China: Says Hello 
Note right of China: China thinks\nabout it 
China-->Andrew: How are you? 
Andrew->>China: I am good thanks!
```

###End
