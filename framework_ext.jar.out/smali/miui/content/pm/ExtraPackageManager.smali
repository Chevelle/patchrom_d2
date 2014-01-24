.class public Lmiui/content/pm/ExtraPackageManager;
.super Ljava/lang/Object;
.source "ExtraPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/pm/ExtraPackageManager$1;,
        Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;
    }
.end annotation


# static fields
.field static final ACCOUNT_WHITE_LIST:[Lmiui/content/pm/ExtraPackageManager$WhiteListEntity; = null

.field static final DUOKAN_READER_NAME:Ljava/lang/String; = "com.duokan.reader"

.field static final DUOKAN_READER_SIGNATURES:[Landroid/content/pm/Signature; = null

.field static final GAME_CENTER_NAME:Ljava/lang/String; = "com.xiaomi.gamecenter.sdk.service"

.field static final GAME_CENTER_SIGNATURES:[Landroid/content/pm/Signature; = null

.field static final GOOGLE_SIGNATURES:[Landroid/content/pm/Signature; = null

.field static final MITALK_NAME:Ljava/lang/String; = "com.xiaomi.channel"

.field static final MITALK_SIGNATURES:[Landroid/content/pm/Signature; = null

.field static final MIUI_PLATFORM_SIGNATURES:[Landroid/content/pm/Signature; = null

.field private static final TRUSTED_PACKAGES:[Ljava/lang/String; = null

.field static final TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature; = null

.field static final XIAOMI_ROUTER_NAME:Ljava/lang/String; = "com.xiaomi.router"

.field static final XIAOMI_ROUTER_SIGNATURES:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    new-array v0, v5, [Landroid/content/pm/Signature;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "3082046c30820354a003020102020900e552a8ecb9011b7c300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323632365a170d3339303432333033323632365a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c786568a9aff253ad74c5d3e6fbffa12fed44cd3244f18960ec5511bb551e413115197234845112cc3df9bbacd3e0f4b3528cd87ed397d577dc9008e9cbc6a25fc0664d3a3f440243786db8b250d40f6f148c9a3cd6fbc2dd8d24039bd6a8972a1bdee28c308798bfa9bb3b549877b10f98e265f118c05f264537d95e29339157b9d2a31485e0c823521cca6d0b721a8432600076d669e20ac43aa588b52c11c2a51f04c6bb31ad6ae8573991afe8e4957d549591fcb83ec62d1da35b1727dc6b63001a5ef387b5a7186c1e68da1325772b5307b1bc739ef236b9efe06d52dcaf1e32768e3403e55e3ec56028cf5680cfb33971ccf7870572bc47d3e3affa385020103a381e83081e5301d0603551d0e0416041491ae2f8c72e305f92aa9f7452e2a3160b841a15c3081b50603551d230481ad3081aa801491ae2f8c72e305f92aa9f7452e2a3160b841a15ca18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d820900e552a8ecb9011b7c300c0603551d13040530030101ff300d06092a864886f70d010105050003820101003b3a699ceb497300f2ab86cbd41c513440bf60aa5c43984eb1da140ef30544d9fbbb3733df24b26f2703d7ffc645bf598a5e6023596a947e91731542f2c269d0816a69c92df9bfe8b1c9bc3c54c46c12355bb4629fe6020ca9d15f8d6155dc5586f5616db806ecea2d06bd83e32b5f13f5a04fe3e5aa514f05df3d555526c63d3d62acf00adee894b923c2698dc571bc52c756ffa7a2221d834d10cb7175c864c30872fe217c31442dff0040a67a2fb1c8ba63eac2d5ba3d8e76b4ff2a49b0db8a33ef4ae0dd0a840dd2a8714cb5531a56b786819ec9eb1051d91b23fde06bd9d0708f150c4f9efe6a416ca4a5e0c23a952af931ad3579fb4a8b19de98f64bd9"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->MIUI_PLATFORM_SIGNATURES:[Landroid/content/pm/Signature;

    .line 22
    new-array v0, v5, [Landroid/content/pm/Signature;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308204433082032ba003020102020900c2e08746644a308d300d06092a864886f70d01010405003074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964301e170d3038303832313233313333345a170d3336303130373233313333345a3074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f696430820120300d06092a864886f70d01010105000382010d00308201080282010100ab562e00d83ba208ae0a966f124e29da11f2ab56d08f58e2cca91303e9b754d372f640a71b1dcb130967624e4656a7776a92193db2e5bfb724a91e77188b0e6a47a43b33d9609b77183145ccdf7b2e586674c9e1565b1f4c6a5955bff251a63dabf9c55c27222252e875e4f8154a645f897168c0b1bfc612eabf785769bb34aa7984dc7e2ea2764cae8307d8c17154d7ee5f64a51a44a602c249054157dc02cd5f5c0e55fbef8519fbe327f0b1511692c5a06f19d18385f5c4dbc2d6b93f68cc2979c70e18ab93866b3bd5db8999552a0e3b4c99df58fb918bedc182ba35e003c1b4b10dd244a8ee24fffd333872ab5221985edab0fc0d0b145b6aa192858e79020103a381d93081d6301d0603551d0e04160414c77d8cc2211756259a7fd382df6be398e4d786a53081a60603551d2304819e30819b8014c77d8cc2211756259a7fd382df6be398e4d786a5a178a4763074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964820900c2e08746644a308d300c0603551d13040530030101ff300d06092a864886f70d010104050003820101006dd252ceef85302c360aaace939bcff2cca904bb5d7a1661f8ae46b2994204d0ff4a68c7ed1a531ec4595a623ce60763b167297a7ae35712c407f208f0cb109429124d7b106219c084ca3eb3f9ad5fb871ef92269a8be28bf16d44c8d9a08e6cb2f005bb3fe2cb96447e868e731076ad45b33f6009ea19c161e62641aa99271dfd5228c5c587875ddb7f452758d661f6cc0cccb7352e424cc4365c523532f7325137593c4ae341f4db41edda0d0b1071a7c440f0fe9ea01cb627ca674369d084bd2fd911ff06cdbf2cfa10dc0f893ae35762919048c7efc64c7144178342f70581c9de573af55b390dd7fdb9418631895d5f759f30112687ff621410c069308a"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

    .line 27
    new-array v0, v5, [Landroid/content/pm/Signature;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "3082028b308201f4a00302010202044baf2eea300d06092a864886f70d0101050500308189310b300906035504061302434e310f300d06035504080c06e58c97e4baac3112301006035504070c09e58c97e4baace5b882312d302b060355040a0c24e58c97e4baace5b08fe7b1b3e7a791e68a80e69c89e99990e8b4a3e4bbbbe585ace58fb831123010060355040b0c09e8bdafe4bbb6e983a83112301006035504030c09e7aea1e79086e59198301e170d3130303332383130323635305a170d3335303332323130323635305a308189310b300906035504061302434e310f300d06035504080c06e58c97e4baac3112301006035504070c09e58c97e4baace5b882312d302b060355040a0c24e58c97e4baace5b08fe7b1b3e7a791e68a80e69c89e99990e8b4a3e4bbbbe585ace58fb831123010060355040b0c09e8bdafe4bbb6e983a83112301006035504030c09e7aea1e79086e5919830819f300d06092a864886f70d010101050003818d00308189028181008b0a35791ef2ed5107f6e8cbe3b74ee308a98b4f777b1c7dd7f63578f0bf788bff1c4e3900a8eed13b5b4763c22bbf6f9404e7bf91c555171756cce2cced01b99e265d74ffa77bd58a6a87f442c766758953282d6868a700f34bfc07c4389d6da3ab4cb2b8219c7f7d65837f69559dec82981472b9c57560edf693a510ebfcbf0203010001300d06092a864886f70d0101050500038181008b0562dee241538b22b53e12e5a0adcf5ade76470591256a41bde1bf6d5bcf3ed125114cb509df6d747a291a73093bd7068dc3640d2ab18a9b44626484a7b10020e0a59df1535983b582b3230d422cdea1feeedb16e9c838e2e1957ffc72e84bc83febbb97706ae2e190dab9d6483a353abcedd531398742ebdac12661f447ab"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->MITALK_SIGNATURES:[Landroid/content/pm/Signature;

    .line 34
    new-array v0, v5, [Landroid/content/pm/Signature;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "3082035f30820247a00302010202045ebcfb14300d06092a864886f70d01010b0500305f310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e67311a3018060355040a131144756f6b616e20546563686e6f6c6f67793110300e0603550403130757616e672059693020170d3131303831343039313431375a180f32303631303830313039313431375a305f310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e67311a3018060355040a131144756f6b616e20546563686e6f6c6f67793110300e0603550403130757616e6720596930820122300d06092a864886f70d01010105000382010f003082010a0282010100a2054effddadade500d8f80f09c23a979bb7c3351c3b265373f719b37b0a9c3686eb51f328c286fbe76400ff65a34044b62028d2806837de4538830d30d1857843f494d3093304deebc52d1e0f0c8c95354d2c7b1ba7dd7b80596ad17c4b0b0ffb287c567cdb97a48a084dacb6089bc795320559e2eb1c8e9f724955acbeb78c7d58e46322e6daa0e75c6d27a00ef1f352d7420b8a27a052b1942d0d2c10c2a48a3dd4d7d55818c01eed0dc2e18ef7c7203078e1d4d2dc3660efb1e3fc01a8b29b2b64bba7a0f5bba56c7f8666717fc1ba80cf72823487c5164ef8ecea3a9e1e9434cfc7e985ac2601addd1d2bb03b8e31d4e93adf6be93d090c83df4bd749db0203010001a321301f301d0603551d0e041604140fd5297793ef0c30b382c46a946202b2d3eeb3d2300d06092a864886f70d01010b050003820101002c393ac2352ec41602d86dc83384c5562d014e155feacc46dcda1f4f8d060cdd57a348616b20c0e0fc6db9c730112326db9796dbf797ebc45c6cad0cf42e285752bd6ec1d51b13f9583e45be4ec153ae81815aa826fa5c70ab51c228f9b1491919b4b28e747bc706eb0c400c884b01a70fade2679d2b0ca40c39ff241b953728851435ac6567cd363788fd77c6b3fe420c90ad098fde2c3b199855b6bed171b86d9cef091d2691e872ef3a3f63b96c1ff58bfd2b5c7b45f6fb80b5cd58a7fd5bf42df1543009a6c7b3c97fc28da5d9ee91879fa6b213531216997f4ea7e4c52dccfbfa1de79a6724ed7bb3c073029cf137b953e909b15ad57b075011fdda7ce8"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->DUOKAN_READER_SIGNATURES:[Landroid/content/pm/Signature;

    .line 41
    new-array v0, v5, [Landroid/content/pm/Signature;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308202353082019ea00302010202044ff68795300d06092a864886f70d0101050500305e310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310d300b060355040a130457414c49310d300b060355040b130457414c49310d300b0603550403130457414c493020170d3132303730363036333730395a180f32323538313230343036333730395a305e310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310d300b060355040a130457414c49310d300b060355040b130457414c49310d300b0603550403130457414c4930819f300d06092a864886f70d010101050003818d00308189028181009643933db422075411bda24ac36b56ad57c997e9ca0d27ed8e8e40d6f199e6aabde81e87a28b61e5b0f6ab26cbd080dfdc41a2b74b75b611350ebbed1c3de0d77ff4f0988d4a608f07bfaebf20d029af7edff1d5e578a12568ef07c58804625d0c9730d377420c8b116f2b77f4ad9e5c48c4fc8e00dd305ac16db701bb67860d0203010001300d06092a864886f70d01010505000381810087a68109035b396c4ad0f870a125d8d736a288e89bf9902fcdac9a047be24b8832f0f0e2f55bfe5b5bfcab753d37e39089d9fdb80609d3244816678f008c18a5cae89b79dee77bf7e11641b6d1009446efb05f91692b8d8c3e5010d13f4fad2144244b6983291041d0126733f3dc1c4cf5341ca194587cb9f0b05251b8943597"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->GAME_CENTER_SIGNATURES:[Landroid/content/pm/Signature;

    .line 48
    new-array v0, v5, [Landroid/content/pm/Signature;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "3082028b308201f4a00302010202044baf2eea300d06092a864886f70d0101050500308189310b300906035504061302434e310f300d06035504080c06e58c97e4baac3112301006035504070c09e58c97e4baace5b882312d302b060355040a0c24e58c97e4baace5b08fe7b1b3e7a791e68a80e69c89e99990e8b4a3e4bbbbe585ace58fb831123010060355040b0c09e8bdafe4bbb6e983a83112301006035504030c09e7aea1e79086e59198301e170d3130303332383130323635305a170d3335303332323130323635305a308189310b300906035504061302434e310f300d06035504080c06e58c97e4baac3112301006035504070c09e58c97e4baace5b882312d302b060355040a0c24e58c97e4baace5b08fe7b1b3e7a791e68a80e69c89e99990e8b4a3e4bbbbe585ace58fb831123010060355040b0c09e8bdafe4bbb6e983a83112301006035504030c09e7aea1e79086e5919830819f300d06092a864886f70d010101050003818d00308189028181008b0a35791ef2ed5107f6e8cbe3b74ee308a98b4f777b1c7dd7f63578f0bf788bff1c4e3900a8eed13b5b4763c22bbf6f9404e7bf91c555171756cce2cced01b99e265d74ffa77bd58a6a87f442c766758953282d6868a700f34bfc07c4389d6da3ab4cb2b8219c7f7d65837f69559dec82981472b9c57560edf693a510ebfcbf0203010001300d06092a864886f70d0101050500038181008b0562dee241538b22b53e12e5a0adcf5ade76470591256a41bde1bf6d5bcf3ed125114cb509df6d747a291a73093bd7068dc3640d2ab18a9b44626484a7b10020e0a59df1535983b582b3230d422cdea1feeedb16e9c838e2e1957ffc72e84bc83febbb97706ae2e190dab9d6483a353abcedd531398742ebdac12661f447ab"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->XIAOMI_ROUTER_SIGNATURES:[Landroid/content/pm/Signature;

    .line 59
    new-array v0, v7, [[Landroid/content/pm/Signature;

    sget-object v1, Lmiui/content/pm/ExtraPackageManager;->GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/content/pm/ExtraPackageManager;->MITALK_SIGNATURES:[Landroid/content/pm/Signature;

    aput-object v1, v0, v5

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;

    new-instance v1, Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;

    const-string v2, "com.xiaomi.channel"

    sget-object v3, Lmiui/content/pm/ExtraPackageManager;->MITALK_SIGNATURES:[Landroid/content/pm/Signature;

    invoke-direct {v1, v2, v3, v6}, Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;-><init>(Ljava/lang/String;[Landroid/content/pm/Signature;Lmiui/content/pm/ExtraPackageManager$1;)V

    aput-object v1, v0, v4

    new-instance v1, Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;

    const-string v2, "com.duokan.reader"

    sget-object v3, Lmiui/content/pm/ExtraPackageManager;->DUOKAN_READER_SIGNATURES:[Landroid/content/pm/Signature;

    invoke-direct {v1, v2, v3, v6}, Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;-><init>(Ljava/lang/String;[Landroid/content/pm/Signature;Lmiui/content/pm/ExtraPackageManager$1;)V

    aput-object v1, v0, v5

    new-instance v1, Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;

    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    sget-object v3, Lmiui/content/pm/ExtraPackageManager;->GAME_CENTER_SIGNATURES:[Landroid/content/pm/Signature;

    invoke-direct {v1, v2, v3, v6}, Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;-><init>(Ljava/lang/String;[Landroid/content/pm/Signature;Lmiui/content/pm/ExtraPackageManager$1;)V

    aput-object v1, v0, v7

    new-instance v1, Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;

    const-string v2, "com.xiaomi.router"

    sget-object v3, Lmiui/content/pm/ExtraPackageManager;->XIAOMI_ROUTER_SIGNATURES:[Landroid/content/pm/Signature;

    invoke-direct {v1, v2, v3, v6}, Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;-><init>(Ljava/lang/String;[Landroid/content/pm/Signature;Lmiui/content/pm/ExtraPackageManager$1;)V

    aput-object v1, v0, v8

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->ACCOUNT_WHITE_LIST:[Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;

    .line 149
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.android.googlequicksearchbox"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.syncadapters.calendar"

    aput-object v1, v0, v5

    const-string v1, "com.google.android.syncadapters.contacts"

    aput-object v1, v0, v7

    const-string v1, "com.google.android.talk"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "com.google.android.tts"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.google.android.voicesearch"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/content/pm/ExtraPackageManager;->TRUSTED_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    return-void
.end method

.method static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 7
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 126
    if-nez p0, :cond_1

    .line 127
    if-nez p1, :cond_0

    const/4 v6, 0x1

    .line 146
    :goto_0
    return v6

    .line 127
    :cond_0
    const/4 v6, -0x1

    goto :goto_0

    .line 131
    :cond_1
    if-nez p1, :cond_2

    .line 132
    const/4 v6, -0x2

    goto :goto_0

    .line 134
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 135
    .local v3, set1:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 136
    .local v5, sig:Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    .end local v5           #sig:Landroid/content/pm/Signature;
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 139
    .local v4, set2:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 140
    .restart local v5       #sig:Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 143
    .end local v5           #sig:Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 144
    const/4 v6, 0x0

    goto :goto_0

    .line 146
    :cond_5
    const/4 v6, -0x3

    goto :goto_0
.end method

.method public static isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z
    .locals 10
    .parameter "pm"
    .parameter "accountType"
    .parameter "serviceUid"
    .parameter "callingUid"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 91
    const/16 v8, 0x3e9

    if-eq p3, v8, :cond_0

    const/16 v8, 0x2648

    if-ne p3, v8, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v6

    .line 95
    :cond_1
    const-string v8, "com.xiaomi"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 96
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, callerPkg:Ljava/lang/String;
    const/4 v4, 0x0

    .line 99
    .local v4, info:Landroid/content/pm/PackageInfo;
    const/16 v8, 0x40

    :try_start_0
    invoke-virtual {p0, v1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 104
    :goto_1
    if-eqz v4, :cond_3

    .line 107
    sget-object v8, Lmiui/content/pm/ExtraPackageManager;->MIUI_PLATFORM_SIGNATURES:[Landroid/content/pm/Signature;

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v8, v9}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v8

    if-eqz v8, :cond_0

    .line 112
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->ACCOUNT_WHITE_LIST:[Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;

    .local v0, arr$:[Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v2, v0, v3

    .line 113
    .local v2, entity:Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;
    iget-object v8, v2, Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 114
    iget-object v8, v2, Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;->signatures:[Landroid/content/pm/Signature;

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v8, v9}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 112
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 122
    .end local v0           #arr$:[Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;
    .end local v1           #callerPkg:Ljava/lang/String;
    .end local v2           #entity:Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;
    .end local v3           #i$:I
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    .end local v5           #len$:I
    :cond_3
    invoke-virtual {p0, p2, p3}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 100
    .restart local v1       #callerPkg:Ljava/lang/String;
    .restart local v4       #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public static isTrustedAppEntry(Ljava/util/jar/JarEntry;Ljava/lang/String;)Z
    .locals 2
    .parameter "je"
    .parameter "pkgName"

    .prologue
    .line 159
    const-string v0, "classes.dex"

    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->TRUSTED_PACKAGES:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTrustedSystemSignature([Landroid/content/pm/Signature;)Z
    .locals 5
    .parameter "signature"

    .prologue
    .line 79
    sget-object v0, Lmiui/content/pm/ExtraPackageManager;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    .local v0, arr$:[[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 80
    .local v3, sig:[Landroid/content/pm/Signature;
    invoke-static {v3, p0}, Lmiui/content/pm/ExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v4

    if-nez v4, :cond_0

    .line 82
    const/4 v4, 0x1

    .line 85
    .end local v3           #sig:[Landroid/content/pm/Signature;
    :goto_1
    return v4

    .line 79
    .restart local v3       #sig:[Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v3           #sig:[Landroid/content/pm/Signature;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
