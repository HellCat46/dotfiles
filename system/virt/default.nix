{config, pkgs, ...}:
{
  imports = [
    ./docker.nix
    ./libvirt.nix
  ];

  environment.systemPackages = with pkgs; [
    dnsmasq
    iptables
    virt-manager
    qemu-utils

  ];
}
