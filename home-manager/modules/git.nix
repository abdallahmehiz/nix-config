{
  programs.git = {
    enable = true;
    userName = "AbdallahMehiz";
    userEmail = "abdallahmehiz0@gmail.com";
    signing = {
      signByDefault = true;
      key = "9162A076CEF603D3ED77F7470D59A6023709B64A";
    };
    extraConfig = {
      credential = {
        helper = [
          ""
          "!/home/abdallah/.nix-profile/bin/gh auth git-credential"
        ];
      };
      safe.directory = "*";
      core.compression = 0;
      init.defaultBranch = "main";
    };
  };
}
