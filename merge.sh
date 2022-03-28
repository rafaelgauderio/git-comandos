#!/bin/bash

#ramificações branch

git branch
# exibe o ramo que etamos = main

git checkout -b nome_nova_branch
git log --oneline
# vai aparecer agora que tem mais uma branch
git branch 
# vai para a nova branch automaticamente ao criar uma
# a nova branch herda todos os commits do ramo main ao ser criada
# criar arquivos e modificar alguns arquivos
git add . # adicionar os arquivos modificados na nova branch
git commit -m "nome do commit novo"
#fazer novas alterações
git add .
git commit -m "nome do segundo commit"
git log --oneline
# verificase que todos os ramos criados foram vinculados ao nome_nova_branch

git checkout main
git branch
# observa-se que voltamos ao ramo main que não contém as alterações que fizemos no ramo nome_nova_branch
# fazer algumas alterações nos arquivos. Isso gera um conflito de merge. Temos alterações no ramo main que não temos
# no ramo nome_nova_branch e vice-versa.
git add .
git commit -m "modificações dos arquivos na branch main"
git log --online --graph --all
git log --graph --all
# observar um gráfico de todos os commits 
q # para sair e voltar ao bash
# agora fazendo a fusão do ramo main com o branch criado
git merge nome_nova_branch
# tem que abrir os arquivos com conflito e arrumar as linhas que tiver:
# <<<<<<<<<<<<< HEAD (Current Change)
# >>>>>>>>>>>>> nome_nova_branch (Incomming change)
# pode aceitar ambas as alterações ou apenas uma

git status # veririca-se que ainda há alterações?
git merge --abort # cancelar o merge
git add .
git commit -m "fusao das branch e resolução do conflito"
git log --oneline
 # estamos na branch main e com a tag HEAD no nosso último commit
 # Depois do merge a branch main a nova estamos com a mesma tag na head

























