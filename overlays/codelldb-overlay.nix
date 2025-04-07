final: prev: {
  codelldb = prev.stdenv.mkDerivation {
    pname = "codelldb";
    version = prev.vscode-extensions.vadimcn.vscode-lldb.version;

    src = prev.vscode-extensions.vadimcn.vscode-lldb;

    # codelldb is located in extension/share/vscode/extensions/vadimcn.vscode-lldb/adapter/
    installPhase = ''
      mkdir -p $out/bin
      cp -v $src/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb $out/bin/
      chmod +x $out/bin/codelldb
    '';

    meta = with prev.lib; {
      description = "CodeLLDB adapter extracted from vadimcn.vscode-lldb";
      homepage = "https://github.com/vadimcn/vscode-lldb";
      license = licenses.mit;
      maintainers = with maintainers; [ ];
      platforms = platforms.all;
    };
  };
}
