final: prev: {
  plugins-smear-cursor = prev.vimUtils.buildVimPlugin {
    name = "smear_cursor";
    src = prev.fetchFromGitHub {
      owner = "sphamba";
      repo = "smear-cursor.nvim";
      rev = "8820b313e49a018c7d56fc309c51363c0e9ae653";
      hash = "sha256-WNNiqt0Syi3dMY9KITAS0VDYF0mvo5bGqYj3eFuMPK8=";
    };

  };
}
