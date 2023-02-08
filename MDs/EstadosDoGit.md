###Estados do Git

**Untracked:** são aqueles que o Git não está rastreando, ou seja, são arquivos novos ou existentes na pasta de trabalho, mas que ainda não foram adicionados ao repositório Git.

&nbsp;

**Modified (modificado):** o arquivo foi alterado na pasta de trabalho, mas ainda não foi adicionado ao index (staging area).

&nbsp;

**Staged (estagiado):** o arquivo foi adicionado ao index e está pronto para ser incluído no próximo commit;

&nbsp;

**Unstaged (não estagiado):**o arquivo foi alterado na pasta de trabalho depois de ter sido adicionado ao index, mas ainda não foi adicionado novamente ao index;

&nbsp;

                    
```mermaid
sequenceDiagram
	participant Ut as Untracked
	participant S as Staged (Tracked)
	participant Unm as Unmodified (Tracked)
	participant M as Modifield (Tracked)

	Ut -> S: git add .
	S ->> Unm : git commit
	Unm --> Ut : git remove file
	Unm --> M : edit 
	M -> S : Stage the file 
```
