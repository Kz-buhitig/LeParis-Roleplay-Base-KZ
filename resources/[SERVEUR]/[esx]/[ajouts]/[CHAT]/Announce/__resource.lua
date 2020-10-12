description 'Announce ESX - Cheleber'

version '1.0.0'

client_script {

  'client/main.lua'

}

server_scripts {

  '@mysql-async/lib/MySQL.lua',
  'server/main.lua'

}
