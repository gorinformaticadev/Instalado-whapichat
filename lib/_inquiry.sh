#!/bin/bash
get_urls() {
  system_create_user
  system_set_user_mod
  system_update
  instalacao_firewall
  iniciar_firewall
  parar_firewall
  system_set_timezone
  system_node_install
  system_docker_install
  system_docker_start
  system_puppeteer_dependencies
  system_pm2_install
  system_snapd_install
  system_nginx_install
  system_nginx_conf
  system_certbot_install
  system_clone
  backend_db_create
  backend_chrome_install
  backend_set_user
  backend_set_env
  backend_node_dependencies
  backend_node_build
  whatsappweb_update
  backend_db_migrate
  backend_db_seed
  backend_start_pm2
  backend_nginx_setup
  frontend_set_env
  frontend_node_dependencies
  frontend_node_build
  frontend_serverjs
  frontend_start_pm2
  frontend_nginx_setup
  system_nginx_restart
  system_certbot_setup
  iniciar_firewall
  system_success
}

get_urls_arm() {
  system_create_user
  system_set_user_mod
  system_update
  instalacao_firewall
  iniciar_firewall
  parar_firewall
  system_set_timezone
  system_node_install
  system_docker_install_arm
  system_docker_start
  system_puppeteer_dependencies
  system_pm2_install
  system_snapd_install
  system_nginx_install
  system_nginx_conf
  system_certbot_install
  system_clone
  backend_db_create
  backend_chrome_install_arm
  backend_set_env_arm
  backend_node_dependencies
  backend_node_build
  whatsappweb_update
  backend_db_migrate
  backend_db_seed
  backend_start_pm2
  backend_nginx_setup
  frontend_set_env
  frontend_node_dependencies
  frontend_node_build
  frontend_serverjs
  frontend_start_pm2
  frontend_nginx_setup
  system_nginx_restart
  system_certbot_setup
  iniciar_firewall
  system_success
}


software_update() {
  
  whatsappweb_update
}

instancia_instalar() {
  system_clone
  criar_banco_dados
  backend_set_env
  backend_node_dependencies
  backend_node_build
  backend_db_migrate
  backend_db_seed
  backend_start_pm2
  backend_nginx_setup
  frontend_set_env
  frontend_node_dependencies
  frontend_node_build
  frontend_serverjs
  frontend_start_pm2
  frontend_nginx_setup
  system_nginx_restart
  system_certbot_setup
  system_success
}

instancia_instalar_arm() {
  system_clone
  criar_banco_dados
  backend_set_env_arm
  backend_node_dependencies
  backend_node_build
  backend_db_migrate
  backend_db_seed
  backend_start_pm2
  backend_nginx_setup
  frontend_set_env
  frontend_node_dependencies
  frontend_node_build
  frontend_serverjs
  frontend_start_pm2
  frontend_nginx_setup
  system_nginx_restart
  system_certbot_setup
  system_success
}

izing_atualizar() {
  git_update
  backend_node_dependencies
  backend_node_build
  backend_db_migrate
  backend_db_seed
  restart_pm2
  frontend_node_dependencies
  frontend_node_build
}

ativar_firewall () {
  iniciar_firewall
}

desativar_firewall () {
  parar_firewall
}

inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 O que você precisa fazer?${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [1] Instalar\n"
  printf "   [2] Instalar Instância\n"
  printf "   [3] Instalar ARM\n"
  printf "   [4] Instalar Instância arm\n"
  printf "   [5] Atualizar\n"
  printf "   [6] Atualizar Conector WWebJS whatsapp.js\n"
  printf "   [7] Ativar Firewall\n"
  printf "   [8] Desativar Firewall\n"
  printf "   [9] Renovar certificado\n"
  printf "   [10] Alterar dominios\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    1) get_urls
       exit
       ;;

    2) instancia_instalar
       exit
       ;;

    3) get_urls_arm
       exit
       ;;

    4) instancia_instalar_arm
       exit
       ;;

    5) software_update
       exit
       ;;
	  
	   6) izing_atualizar
       exit
       ;;
	  
     7) 
      ativar_firewall 
       exit
       ;;
	  
     8) 
      desativar_firewall
       exit
       ;;

    *) exit
       ;;
  esac
}

