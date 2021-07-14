let bk =
      https://raw.githubusercontent.com/jcouyang/buildkite.dhall/0.2.0/package.dhall

let lint =
      bk.Command::{
      , label = Some "lint"
      , commands = [ "nix-shell -p shellcheck --run 'shellcheck -x bin/*'" ]
      }

in  [ lint ]
