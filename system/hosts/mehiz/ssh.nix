{ ... }:
{
  services.openssh = {
    enable = true;
    openFirewall = true;
    settings = {
      PermitRootLogin = "no";
      Subsystem = "sftp internal-sftp";
    };
  };
  programs.ssh.startAgent = true;
}
