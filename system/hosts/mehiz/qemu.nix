{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    qemu
    virtio-win
    virt-manager
  ];

  programs.virt-manager.enable = true;
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;

  # UEFI firmware support
  systemd.tmpfiles.rules = [ "L+ /var/lib/qemu/firmware - - - - ${pkgs.qemu}/share/qemu/firmware" ];
}
