## Comandos Basicos do git
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

    git log --oneline
mostra cada registro do log em uma linha, é mais clean;

&nbsp;

		git log --pretty=format:'%C(Blue)%h %C(red)%d %C(white)%s - %C(cyan)%cn, %C(green)%cr'
formatação do log, esse comando é um ótimo candidato para o alias;
'%H'  mostra a hash
'%h'  mostra a hash reduzida
'%d'  qual é a branch
'%s'  menssagem do comite
'%cn' mostra o nome da pessoa que fez o comite
'%cr' data do comite
'%C(Blue)'

&nbsp;

		git tag 1.0 -m "release 1.0"

&nbsp;

		git tag -a "nome da tag" -m "texto descritivo da tag" [hash sem nenhum simbolo]
como adicionar uma tag

&nbsp;

		git push origin master --follow-tags
envia apenas as tags;
também ótimo cadidato a alias;

&nbsp;

		git tag
Serve para pontos do sistema, como marcos, versões etc;
Esse comando mostra todas as tags criadas;
Exitem dois tipos: anotada e lightwait;

&nbsp;

		git tag 1.0 -m "release 1.0"
Um exemplo de tag anotada;

&nbsp;

		git tag -a "0.1.0.beta" -m "release 0.1.0.beta" "hash do commit"
Por padrão apenas tags anotadas vão para o repositório remoto;

&nbsp;

		git push origin master --tags
Envia todas as tags, inclusive as lightwiates, não é recomendado;

&nbsp;

		git push origin master --follow-tags
Envia todas as tags que são anotadas para o servidor;
É possível colocar o comando --follow-tags como padrão, pra isso é só abri o git config igual os alias e colocar a opção:
[push] followTags = true

&nbsp;

		git git tag -d "nome da tag"
Elimina a tag local;

&nbsp;

		git push --delete origin "nome da tag"
antes de usar esse comando e apagar a tag do servidor vc deve apagar a tag local;

&nbsp;

		git reset "arquivo"
Na staged area ele faz com que o arquivo volte para o workspace (basicamente o contrário do add) ou sem arquivo serve como oposto do add.;
&nbsp;

		git reset HEAD~1
Igual ao git reset "arquivo", com exceção de que ele volta o numero de commites de acordo com o numero escrito depois do ~;

&nbsp;

		git reset "código do hash" --soft
Se estiver no repositório ele retira o commit do repositório e envia para o staged area;

&nbsp;

		git reset "código do hash" --mixed
Se estiver no repositório ele retira o commit do repositório e envia para um estágio antes do staged area, pode ser o untracked ou modified;
O mixed é o defaul no git;

&nbsp;

		git reset "código do hash" --hard
Se estiver no repositório ele retira o commit do repositório e envia para o untracked area;

&nbsp;

		git revert "código do hash"
Mantem os commites anteriores e gera mais um commit com o mesmo conteudo do hash do comitt que esta declarado no código;
Costuma dar conflito se vc já tiver modificado o mesmo documento, caso contrário gera o novo hash com o resultdo que que foi revertido automaticamente;

&nbsp;

		git checkout "arquivo"
O arquivo editado no unstaged area (modifield) perderá a modificação;

&nbsp;

		git checkout "nome da branch"
Troca a branch em que você esta;

&nbsp;

		git checkout -b "nome da branch"
Pode ser outra branch que não seja a master, esse foi um exemplo;
primeiro o comando esta entrando na master e de la esta criando uma branch;

&nbsp;

		git checkout "Nome de um commit ou a tag"
cria uma branch temporaria (se vc sair sem criar uma branch pra ela a alise feita se perde)

&nbsp;

		git clean
Serve somente para remover arquivos que estão como untracked (apenas na sua maquina, ainda não é conhecido pelo git);

&nbsp;

		git clean -n
Mostra primeiro quais arquivos serão removidos;

&nbsp;

		git clean -n -f
Mostra quias arquivos serão removidos e força a remoção;

&nbsp;

		git rm "Nome do arquivo"
Remove um arquivo tracked, ele primeiro apaga do untracked (da sua maquina) e espera sua confirmação pelo commit;

&nbsp;

		git rm "Nome do arquivo"c--cached
Apaga arquivos mesmo que já estejam no repositório;