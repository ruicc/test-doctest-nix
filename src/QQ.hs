module QQ where
import Language.Haskell.TH
import Language.Haskell.TH.Quote

r :: QuasiQuoter
r = QuasiQuoter {
    quoteExp  = return . LitE . StringL,
    quotePat  = \_ -> fail "quotePat",
    quoteType = \_ -> fail "quoteType",
    quoteDec  = \_ -> fail "quoteDec"
}
