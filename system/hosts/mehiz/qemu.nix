{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    qemu_full
    virtio-win
    virt-manager
  ];

  programs.virt-manager.enable = true;
  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        swtpm.enable = true;
        ovmf = {
          enable = true;
          packages = [ pkgs.OVMFFull.fd ];
        };
      };
    };
    waydroid.enable = true;
  };
  virtualisation.spiceUSBRedirection.enable = true;

  # UEFI firmware support
  systemd.tmpfiles.rules = [ "L+ /var/lib/qemu/firmware - - - - ${pkgs.qemu}/share/qemu/firmware" ];
}
