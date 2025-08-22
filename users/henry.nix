# /etc/nixos/users/user1.nix
{ ... }:
{
  users.users.henry = {
    isNormalUser = true;
    description = "Henry";
    extraGroups = [ "wheel" "networkmanager" "docker"];
    hashedPassword = "$6$uNdtmBtoLo7fuIy.$F2ke1Yo7AUIBPY0X5nX9eo2bC2Oqq5nRf9MXrLMMNRc04ntSeRews5Z35KpnnpAEdTl9uJky0n0gOk4lgZaIl0";
  };

}
