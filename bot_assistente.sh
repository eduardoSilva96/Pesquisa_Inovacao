#!/bin/bash

PURPLE='0;35'
NC='\033[0m' 
VERSAO=11
	
echo "Olá !! Qual é seu nome ? :"
read nome_user

echo  "$(tput setaf 10)[Bot]:$(tput setaf 7) $nome_user, serei seu assistente para ajudar com instalações e preparação do ambiente!;"
echo "$(tput setaf 10)[Bot]:$(tput setaf 7) Verificando se você já possúi o Git instalado..."
sleep 2

git --version
if [ $? -eq 0 ]
	then
		echo "$(tput setaf 10)[Bot]:$(tput setaf 7) : Você já tem o Git instalado !!!"
	else
		echo "$(tput setaf 10)[Bot]:$(tput setaf 7) : Eita ! não encontrei nenhuma versão do Git instalado, deseja instalar rapidamente (S/N)?"
	read respGit
	if [ \"$respGit\" == \"S\" ]
		then
			echo "$(tput setaf 10)[Bot]:$(tput setaf 7) Você optou por instalar o Git, irei fazer isso rapidinho.."
			sleep 2
			sudo apt install git
			clear
			echo "$(tput setaf 10)[Bot]:$(tput setaf 7) Atualizando..."
			sleep 2
			sudo apt update -y
                        clear
			echo "$(tput setaf 10)[Bot]:$(tput setaf 7) Git Instalado com Sucesso !!!"

		else
			echo "$(tput setaf 10)[Bot]:$(tput setaf 7) Você optou por não instalar o Git.."
	fi
fi

echo  "$(tput setaf 10)[Bot]:$(tput setaf 7)  Verificando aqui se você possui o Java instalado...;"
sleep 2

java -version
if [ $? -eq 0 ]
	then
		echo "$(tput setaf 10)[Bot]:$(tput setaf 7) : Você já tem o java instalado!!!"
	else
		echo "$(tput setaf 10)[Bot]:$(tput setaf 7)  Opa! Não identifiquei nenhuma versão do Java instalado, mas sem problemas, irei resolver isso agora!"
		echo "$(tput setaf 10)[Bot]:$(tput setaf 7)  Confirme para mim se realmente deseja instalar o Java (S/N)?"
	read inst
	if [ \"$inst\" == \"S\" ]
		then
			echo "$(tput setaf 10)[Bot]:$(tput setaf 7)  Ok! Você escolheu instalar o Java ;D"
			echo "$(tput setaf 10)[Bot]:$(tput setaf 7)  Adicionando o repositório!"
			sleep 2
			sudo add-apt-repository ppa:webupd8team/java -y
			clear
			echo "$(tput setaf 10)[Bot]:$(tput setaf 7)  Atualizando! Quase lá."
			sleep 2
			sudo apt update -y
			clear
			
			if [ $VERSAO -eq 11 ]
				then
					echo "$(tput setaf 10)[Bot]:$(tput setaf 7) Preparando para instalar a versão 11 do Java. Confirme a instalação quando solicitado ;D"
					sudo apt install default-jre ; apt install openjdk-11-jre-headless; -y
					clear
					echo "$(tput setaf 10)[Bot]:$(tput setaf 7) Java instalado com sucesso!"
				fi
		else 	
		echo "$(tput setaf 10)[Bot]:$(tput setaf 7)  Você optou por não instalar o Java por enquanto, até a próxima então!"
	fi
fi



#▒█▀▀▀ █▀▀▄ █░░█ █▀▀█ █▀▀█ █▀▀▄ █▀▀█ 　 ▒█▀▀▀█ ▀█▀ █░░ ▀█░█▀ █▀▀█
#▒█▀▀▀ █░░█ █░░█ █▄▄█ █▄▄▀ █░░█ █░░█ 　 ░▀▀▀▄▄ ▒█░ █░░ ░█▄█░ █▄▄█
#▒█▄▄▄ ▀▀▀░ ░▀▀▀ ▀░░▀ ▀░▀▀ ▀▀▀░ ▀▀▀▀ 　 ▒█▄▄▄█ ▄█▄ ▀▀▀ ░░▀░░ ▀░░▀
# ===================================================================
# Todos direitos reservados para o autor: Eduardo da Silva Rego.
# Podera modificar e reproduzir para uso pessoal.
# Proibida a comercialização e a exclusão da autoria.
# ===================================================================

# ┌─┐　 ─┐
# │▒│ /▒/
# │▒│/▒/
# │▒ /▒/─┬─┐
# │▒│▒|▒│▒│
#┌┴─┴─┐-┘─┘
#│▒┌──┘▒▒▒│
#└┐▒▒▒▒▒▒┌┘
#　└┐▒▒▒▒┌
