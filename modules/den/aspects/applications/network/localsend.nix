{
  den.aspects.applications.network.localsend = {
    homeManager = { pkgs, ... }: {
      home.packages = with pkgs; [
        localsend
      ];
    };

    firewall = {
      networking.firewall.allowedTCPPorts = [ 53317 ];
      networking.firewall.allowedUDPPorts = [ 53317 ];
    };

    homePersist.files = [
      ".local/share/org.localsend.localsend_app/shared_preferences.json"
    ];
  };
}
