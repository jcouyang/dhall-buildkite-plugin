let bk =
      https://raw.githubusercontent.com/jcouyang/buildkite.dhall/0.3.0/package.dhall sha256:58893f017494437f31e55ef37f71cdd53eac3d7f11f9be85dcf63fa22a101a62

let test =
      bk.Command::{
      , label = Some "test"
      , commands = [ "dhall <<< '1 + 2'" ]
      , plugins = Some
        [ toMap
            { `jcouyang/dhall#master` = toMap { os = bk.PluginConfigValue.L0 "linux" } }
        ]
      }

in  [ test ]
