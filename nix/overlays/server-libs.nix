final: prev: {
  haskell = prev.haskell // {
    packages = prev.haskell.packages // {
      ${prev.ghcName} = prev.haskell.packages.${prev.ghcName}.override (old: {
        overrides = prev.lib.composeExtensions
          (old.overrides or (_: _: { }))
          (hfinal: hprev: {
            arrows-extra = prev.haskell.lib.dontCheck (
              final.haskell.packages.${prev.ghcName}.callCabal2nix "arrows-extra" ../../server/lib/arrows-extra { }
            );
            ci-info = prev.haskell.lib.dontCheck (
              final.haskell.packages.${prev.ghcName}.callCabal2nix "ci-info" ../../server/lib/ci-info { }
            );
            ekg-json = prev.haskell.lib.dontCheck (
              final.haskell.packages.${prev.ghcName}.callCabal2nix "ekg-json" ../../server/lib/ekg-json { }
            );
            ekg-prometheus = prev.haskell.lib.dontCheck (
              final.haskell.packages.${prev.ghcName}.callCabal2nix "ekg-prometheus" ../../server/lib/ekg-prometheus { }
            );
            hasura-base = prev.haskell.lib.dontCheck (
              final.haskell.packages.${prev.ghcName}.callCabal2nix "hasura-base" ../../server/lib/hasura-base { }
            );
            hasura-error-message = prev.haskell.lib.dontCheck (
              final.haskell.packages.${prev.ghcName}.callCabal2nix "hasura-error-message" ../../server/lib/hasura-error-message { }
            );
            hasura-extras = prev.haskell.lib.dontCheck (
              final.haskell.packages.${prev.ghcName}.callCabal2nix "hasura-extras" ../../server/lib/hasura-extras { }
            );
            hasura-json-encoding = prev.haskell.lib.dontCheck (
              final.haskell.packages.${prev.ghcName}.callCabal2nix "hasura-json-encoding" ../../server/lib/hasura-json-encoding { }
            );
            hasura-prelude = prev.haskell.lib.dontCheck (
              final.haskell.packages.${prev.ghcName}.callCabal2nix "hasura-prelude" ../../server/lib/hasura-prelude { }
            );
            incremental = prev.haskell.lib.dontCheck (
              final.haskell.packages.${prev.ghcName}.callCabal2nix "incremental" ../../server/lib/incremental { }
            );
            schema-parsers = prev.haskell.lib.dontCheck (
              final.haskell.packages.${prev.ghcName}.callCabal2nix "schema-parsers" ../../server/lib/schema-parsers { }
            );
            kriti-lang = prev.haskell.lib.dontCheck (
              final.haskell.packages.${prev.ghcName}.callHackage "kriti-lang" "0.3.1" { }
            );
            libdeflate-hs = prev.haskell.lib.dontCheck (
              final.haskell.packages.${prev.ghcName}.callCabal2nix "libdeflate-hs"
                (final.fetchFromGitHub {
                  owner = "hasura";
                  repo = "libdeflate-hs";
                  rev = "e6f020a1a24d07516d753fbb6f30758774f76372";
                  sha256 = "14nabiar6i873x8z1b6higd20ld7441zzywbdc64ih140f6qdi2c";
                })
                { }
            );
          });
      });
    };
  };
}
