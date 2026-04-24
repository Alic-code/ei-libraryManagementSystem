# libraryManagementSystem-aulaSenai


![people-at-modern-book-library-isometric-color-illustration-bookstore-shelves-university-students-reading-searching-textbooks-public-library-3d-concept-isolated-on-blue-bac](https://github.com/EduardoVitorInocencio/libraryManagementSystem-aulaSenai/assets/136349773/124e0bfc-56cd-4472-bb53-e43e4ca7841c)

O conceito por trás deste projeto é criar um sistema de gerenciamento de biblioteca que seja
capaz de emitir empréstimo de livros e permitir que os usuários verifiquem pesquisem livros pelos seus títulos de forma
categorica. Ele mantém registro de todos os detalhes sobre os livros da biblioteca, seu
preço, status e número total de livros disponíveis na Biblioteca.





![images](https://github.com/EduardoVitorInocencio/libraryManagementSystem-aulaSenai/assets/136349773/87c261b4-c666-4967-a131-9390c827a512)




  
##  ℹ️ Neste projeto de banco de dados, você deve criar as seguintes tabelas:


### _`tbl_publisher:`_ Esta tabela armazena informações sobre as editoras dos livros.


- _```publisher_PublisherName:```_ O nome da editora. Este é o identificador único para cada editora e é a chave primária da tabela.
- _```publisher_PublisherAddress:```_ O endereço da editora.
- _```publisher_PublisherPhone:```_ O número de telefone da editora.

###_`tbl_book:`_ Esta tabela contém detalhes sobre os livros.

- _```book_BookID:```_ O identificador único do livro. É uma chave primária autoincrementada.
- _```book_Title:```_ O título do livro.
- _```book_PublisherName:```_ O nome da editora do livro. É uma chave estrangeira referenciando a tabela tbl_publisher.

### ![#c5f015](https://via.placeholder.com/15/c5f015/000000?text=+)    _`tbl_library_branch:`_ Esta tabela mantém informações sobre as filiais da biblioteca.

- _```library_branch_BranchID:```_ O identificador único da filial da biblioteca. É uma chave primária autoincrementada.
- _```library_branch_BranchName:```_ O nome da filial da biblioteca.
- _```library_branch_BranchAddress:```_ O endereço da filial da biblioteca.

### ![#c5f015](https://via.placeholder.com/15/c5f015/000000?text=+)  _`tbl_borrower:`_ Aqui são registrados os dados dos tomadores de empréstimo dos livros.

- _```borrower_CardNo:```_ O número do cartão do tomador de empréstimo. É uma chave primária autoincrementada.
- _```borrower_BorrowerName:```_ O nome do tomador de empréstimo.
- _```borrower_BorrowerAddress:```_ O endereço do tomador de empréstimo.
- _```borrower_BorrowerPhone:```_ O número de telefone do tomador de empréstimo.

### _`tbl_book_loans:`_ Esta tabela registra os empréstimos de livros feitos pelos tomadores de empréstimo.

- _```book_loans_LoansID:```_ O identificador único do empréstimo. É uma chave primária autoincrementada.
- _```book_loans_BookID:```_ O ID do livro emprestado. É uma chave estrangeira referenciando a tabela tbl_book.
- _```book_loans_BranchID:```_ O ID da filial da biblioteca onde o livro está emprestado. É uma chave estrangeira referenciando a tabela tbl_library_branch.
- _```book_loans_CardNo:```_ O número do cartão do tomador de empréstimo. É uma chave estrangeira referenciando a tabela _tbl_borrower_.
- _```book_loans_DateOut:```_ A data em que o livro foi emprestado.
- _```book_loans_DueDate:```_ A data de vencimento do empréstimo.

### _`tbl_book_copies:`_ Aqui são registradas as cópias dos livros disponíveis em cada filial da biblioteca.

- _```book_copies_CopiesID:```_ O identificador único da cópia do livro. É uma chave primária autoincrementada.
- _```book_copies_BookID:```_ O ID do livro. É uma chave estrangeira referenciando a tabela tbl_book.
- _```book_copies_BranchID:```_ O ID da filial da biblioteca. É uma chave estrangeira referenciando a tabela tbl_library_branch.
- _```book_copies_No_Of_Copies:```_ O número de cópias disponíveis.

### _`tbl_book_authors:`_ Esta tabela registra os autores dos livros.

- _```book_authors_AuthorID:```_ O identificador único do autor. É uma chave primária autoincrementada.
- _```book_authors_BookID:```_  O ID do livro. É uma chave estrangeira referenciando a tabela tbl_book.
- _```book_authors_AuthorName:```_ O nome do autor.


## 📄 Pré-requisitos

 - Modelo de entidade relacional (MER) desenvolvido no BR Modelo ou draw.io
 - Modelagem lógica
 - Modelagem física
 - Comandos básicos DDL e DML
 - Conceitos sobre SQL
 - Conceitos básicos sobre MySQL



![35988bf09ce2be958e36f4bc8f4575d1](https://github.com/EduardoVitorInocencio/libraryManagementSystem-aulaSenai/assets/136349773/86a546b7-6ad4-46ed-9a73-9d6dc5c38c0a)


## ⚠️ Para utilizar este repositório, siga os passos abaixo para fazer um fork no GitHub:

#### _Passo 1: Acesse o GitHub_

 - Abra seu navegador da web e acesse o site do GitHub em github.com.

#### _Passo 2: Faça login_

 - Se você já tem uma conta no GitHub, faça login com suas credenciais.
Caso contrário, crie uma nova conta fornecendo as informações necessárias.


#### _Passo 3: Encontre o repositório_

 - Use a barra de pesquisa no topo da página para encontrar o repositório que deseja fazer um fork. Você pode pesquisar pelo nome do repositório ou pelo nome do usuário/organização que o possui.

#### _Passo 4: Abra o repositório_

 - Depois de encontrar o repositório, clique nele para abrir a página.


#### _Passo 5: Faça o fork_

 - No canto superior direito da página do repositório, você verá um botão "Fork". Clique nele.


#### _Passo 6: Escolha o destino_

 - Uma janela pop-up aparecerá, solicitando que você escolha para onde deseja fazer o fork. Normalmente, você fará o fork para sua própria conta, então deixe selecionada a opção que mostra seu nome de usuário.


#### _Passo 7: Confirme o fork_

 - Após selecionar o destino, clique no botão "Fork" para confirmar. O GitHub agora criará uma cópia do repositório no seu perfil.


#### _Passo 8: Aguarde o processo_

 - O GitHub começará a criar o fork. Dependendo do tamanho do repositório e da sua conexão com a internet, isso pode levar alguns instantes.


#### _Passo 9: Fork concluído_

 - Assim que o fork for concluído, você será redirecionado para a página do repositório em sua conta. Agora você tem uma cópia do repositório original em seu perfil do GitHub.
Agora você pode clonar esse repositório forked para sua máquina local e começar a trabalhar nele. Lembre-se de sincronizar regularmente seu fork com o repositório original, especialmente se estiver colaborando com outras pessoas ou se o repositório original estiver sendo atualizado com frequência.
