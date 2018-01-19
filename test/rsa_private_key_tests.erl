-module(rsa_private_key_tests).
-import(rsa_private_key, [factorize_from_d/3, factorize_from_t/2]).
-include_lib("eunit/include/eunit.hrl").

real_rsa_test_() ->
  N = 16#C272F8EF3CF73F5DD9F0CC33632DBBB27C6BDAF7323E977A1874E7884FD6E409BC937687D7C1AD6D272FB514CC24FD3798D32C30DAA947472865BEA2D2F5F952388AD19E87299E819CBB91F510F6547DA36DB552780CBFB24D3859C662F92F9DB1679B6E3F47C9DBAE23E1E228B53115D785976FED1B31B40427EE3BC68B0F64BEE9A7EE292DB9D13986F3F652639584C366727C16CEFE271FC6DD4E5E2060E5111996E694D750C7C0DD7F3EAB3BD7B08FFFE826AE9964528221790A008088F7DAB1647B5D9F689C0ABF118048A5AC40807254A4F98567A36E6F96E4D17F8476CFA216325A51A80DAF7D0238E5BB3C348AE37B52DFF26155064421A1D23CE08B,
  E = 16#010001,
  P = 16#DBFD0613F6F3749158B08346E0073FE5DF90ECBFECBDFECE79CB1E5038101555B58A9CEB2B80E52B1C5EE080FEF327C513F4B43FE49D70008A15E95C00F387BABDEB93007C52EC50A18754EAF7AA823549292B5A59A0AAFC0D0E5E7BF8D616A2ADF34648CD79C59D34E902FA2ED5EC4D6E3F15D2F46797AD777EA29226414EDD,
  Q = 16#E247AF0372636C9CFCEF2F06E65358BDD7602B679691FD8A6C78A687B97FDC87121F3609A1C8F0ADC5BBA5B6A1FF2BA49DE217E242AD67863274109CD028040CFB2BB383C9D4AC6280FABF28C8C3155DDC507DE9472399B6C536A624C50F4755D96014150DE11FD24E7710DC484CE923A05F34DDDB690B4A62C35961FE57D287,
  T = 16#61397C779E7B9FAEECF86619B196DDD93E35ED7B991F4BBD0C3A73C427EB7204DE49BB43EBE0D6B69397DA8A66127E9BCC6996186D54A3A39432DF51697AFCA91C4568CF4394CF40CE5DC8FA887B2A3ED1B6DAA93C065FD9269C2CE3317C97CED8B3CDB71FA3E4EDD711F0F1145A988AEBC2CBB7F68D98DA0213F71DE34587B18052796B5FEB6C5171F3A0D446047E70863AAD2A49BF80E71CC18C3B3648378424B7E1F8E3C6BD776F617C838524C2236F148E0243A74665E2CBBF8897B27E9810CD0EFB8BBBE7F4741E7EB6441C0A56AD7C55B0AC6091784E15492209CD133F24275DEA3F7B614F160E7731374C3361BE2298510810DF2E960112D6D6D1DF94,
  D = 16#A234203E094042A6BA5FA92790AB1CB0C6237E73C880F8010C97B070401185062E3D6099EEBC0C3C4A7CFC740DDB293390934F80AD569A33DC9A0B0D6E276BC44F90554E05780D5617754C4AFECC4D2CC5008649F604C4802AF43FC742D69506D96F10F4456B5012A5D01EE4768AB7187E415D532B9A0CBB1AE068558AC8839C557443722A734121983557CB0E8D8CCCFA8486469907506D44027C8C850172ED99BCD6DA40595FDC150CD5892EE6A6A62B3A65B9CD5914100392DD976B4EB5F9C97DF353244B78AED3D3D49F0D7EA298FD9303FB5F7B34F73B7E33A700270DC737F01DB523F819DEB1F3AC5385E831890E87F50AABA44A551499F1EE50339109,
  [
    ?_assertEqual({P, Q}, factorize_from_d(N, E, D)),
    ?_assertEqual({P, Q}, factorize_from_t(N, T))
  ].