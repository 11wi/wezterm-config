local wezterm = require('wezterm')

-- Host devjump
--     include include/jumpbox-dev.conf
--     proxycommand ssh -W %h:%p kko
--     UserKnownHostsFile ~/.ssh/jumphost

local ssh_domains = {
  {
    name = 'dev',
    remote_address = 'devjump',
    multiplexing = "None",
    assume_shell = 'Posix',
    default_prog = {'bash'},
  },  
}
 

return {
   -- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
   -- ssh_domains = {},
   ssh_domains = ssh_domains,

   -- ssh_backend="Ssh2",

   -- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
   unix_domains = {},

   -- ref: https://wezfurlong.org/wezterm/config/lua/WslDomain.html
   wsl_domains = {
      
   },
}
