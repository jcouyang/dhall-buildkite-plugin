let bk =
      https://raw.githubusercontent.com/jcouyang/buildkite.dhall/0.2.0/package.dhall

let test =
      bk.Command::{
      , label = Some "test"
      , commands = [ "dhall <<< '1 + 2'" ]
      , plugins = Some [ toMap { jcouyang/dhall = toMap { os = "linux" } } ]
      }

in  [ test ]
