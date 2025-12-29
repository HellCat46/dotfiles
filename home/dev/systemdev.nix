{ config, pkgs, ...}:
{
  
  home.packages = with pkgs; [
    #thonny
    arduino-ide
    godot-mono
    dotnetCorePackages.sdk_9_0-bin
    #d-spy
    #bustle
    gdb 
    clang
    ninja
    cmake
    clang-tools
    android-tools
  ];
}