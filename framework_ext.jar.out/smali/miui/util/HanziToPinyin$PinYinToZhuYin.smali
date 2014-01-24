.class Lmiui/util/HanziToPinyin$PinYinToZhuYin;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PinYinToZhuYin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;
    }
.end annotation


# static fields
.field private static final sPinyinToZhuyin:[Ljava/lang/String;

.field private static final sRoot:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 379
    const/16 v0, 0xa6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u3105"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "p"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u3106"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "m"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u3107"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u3108"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u3109"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u310a"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u310b"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u310c"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u310d"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u310e"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u310f"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u3110"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u3111"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u3112"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "zh"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u3113"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "ch"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u3114"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "sh"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u3115"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u3116"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u3117"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u3118"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u3119"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u3127"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\u311c"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\u3127"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\u3129"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "ao"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "ai"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "an"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "ang"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "ou"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "ong"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\u3128\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "ei"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "eng"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "er"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\u3126"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "ie"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\u3127\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "iu"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\u3127\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "in"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\u3127\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "ing"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\u3127\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "iong"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\u3129\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "ui"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "\u3128\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "un"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "\u3128\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "ue"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "\u3129\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "ve"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "\u3129\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "van"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "\u3129\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "vn"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "\u3129\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "zhi"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "\u3113"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "chi"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "\u3114"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "shi"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "\u3115"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "ri"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "\u3116"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "zi"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "\u3117"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "ci"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "\u3118"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "si"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "\u3119"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "yi"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "\u3127"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "ye"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "\u3127\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "you"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "\u3127\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "yin"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "\u3127\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "ying"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "\u3127\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "wu"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "wei"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "\u3128\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "wen"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "\u3128\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "yu"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "\u3129"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "yue"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "\u3129\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "yuan"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "\u3129\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "yun"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "\u3129\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "yong"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "\u3129\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "ju"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "\u3110\u3129"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "jue"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "\u3110\u3129\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "juan"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "\u3110\u3129\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "jun"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "\u3110\u3129\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "qu"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "\u3111\u3129"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "que"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "\u3111\u3129\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "quan"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "\u3111\u3129\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "qun"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "\u3111\u3129\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "xu"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "\u3112\u3129"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "xue"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "\u3112\u3129\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "xuan"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "\u3112\u3129\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "xun"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "\u3112\u3129\u3123"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/util/HanziToPinyin$PinYinToZhuYin;->sPinyinToZhuyin:[Ljava/lang/String;

    .line 430
    invoke-static {}, Lmiui/util/HanziToPinyin$PinYinToZhuYin;->build()Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;

    move-result-object v0

    sput-object v0, Lmiui/util/HanziToPinyin$PinYinToZhuYin;->sRoot:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    return-void
.end method

.method private static build()Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 433
    const/4 v7, 0x0

    .line 434
    .local v7, specials:Z
    new-instance v6, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;

    invoke-direct {v6, v11}, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;-><init>(Lmiui/util/HanziToPinyin$1;)V

    .line 435
    .local v6, root:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;
    const-string v9, ""

    iput-object v9, v6, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;->output:Ljava/lang/String;

    .line 436
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v9, Lmiui/util/HanziToPinyin$PinYinToZhuYin;->sPinyinToZhuyin:[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_4

    .line 437
    sget-object v9, Lmiui/util/HanziToPinyin$PinYinToZhuYin;->sPinyinToZhuyin:[Ljava/lang/String;

    aget-object v8, v9, v2

    .line 438
    .local v8, v:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 439
    const/4 v7, 0x1

    .line 436
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 443
    :cond_0
    move-object v1, v6

    .line 444
    .local v1, current:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;
    const/4 v3, 0x0

    .local v3, l:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, len:I
    :goto_2
    if-ge v3, v4, :cond_3

    .line 445
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 448
    .local v0, ch:C
    iget-object v5, v1, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;->children:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;

    .line 449
    .local v5, n:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;
    :goto_3
    if-eqz v5, :cond_1

    iget-char v9, v5, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;->ch:C

    if-eq v9, v0, :cond_1

    iget-object v5, v5, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;->next:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;

    goto :goto_3

    .line 450
    :cond_1
    if-nez v5, :cond_2

    .line 451
    new-instance v5, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;

    .end local v5           #n:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;
    invoke-direct {v5, v11}, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;-><init>(Lmiui/util/HanziToPinyin$1;)V

    .line 452
    .restart local v5       #n:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;
    iput-char v0, v5, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;->ch:C

    .line 453
    iget-object v9, v1, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;->children:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;

    iput-object v9, v5, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;->next:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;

    .line 454
    iput-object v5, v1, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;->children:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;

    .line 456
    :cond_2
    move-object v1, v5

    .line 444
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 458
    .end local v0           #ch:C
    .end local v5           #n:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;
    :cond_3
    iput-boolean v7, v1, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;->specials:Z

    .line 459
    sget-object v9, Lmiui/util/HanziToPinyin$PinYinToZhuYin;->sPinyinToZhuyin:[Ljava/lang/String;

    add-int/lit8 v10, v2, 0x1

    aget-object v9, v9, v10

    iput-object v9, v1, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;->output:Ljava/lang/String;

    goto :goto_1

    .line 462
    .end local v1           #current:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;
    .end local v3           #l:I
    .end local v4           #len:I
    .end local v8           #v:Ljava/lang/String;
    :cond_4
    return-object v6
.end method

.method private static convert(Ljava/lang/String;ILjava/lang/StringBuilder;)I
    .locals 7
    .parameter "pinyin"
    .parameter "start"
    .parameter "builder"

    .prologue
    .line 466
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 467
    .local v5, length:I
    const/4 v3, 0x0

    .line 468
    .local v3, lastValidMatch:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;
    move v4, p1

    .line 470
    .local v4, lastValidMatchLength:I
    move v2, p1

    .line 471
    .local v2, index:I
    sget-object v1, Lmiui/util/HanziToPinyin$PinYinToZhuYin;->sRoot:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;

    .local v1, current:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;
    :goto_0
    if-ge v2, v5, :cond_3

    if-eqz v1, :cond_3

    .line 472
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 473
    .local v0, ch:C
    iget-object v1, v1, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;->children:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;

    :goto_1
    if-eqz v1, :cond_0

    iget-char v6, v1, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;->ch:C

    if-eq v6, v0, :cond_0

    iget-object v1, v1, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;->next:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;

    goto :goto_1

    .line 474
    :cond_0
    if-eqz v1, :cond_2

    iget-object v6, v1, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;->output:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-boolean v6, v1, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;->specials:Z

    if-eqz v6, :cond_1

    add-int/lit8 v6, v5, -0x1

    if-ne v2, v6, :cond_2

    .line 475
    :cond_1
    move-object v3, v1

    .line 476
    add-int/lit8 v4, v2, 0x1

    .line 471
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    .end local v0           #ch:C
    :cond_3
    if-eqz v3, :cond_4

    .line 481
    iget-object v6, v3, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;->output:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :cond_4
    sub-int v6, v4, p1

    return v6
.end method

.method public static convert(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pinyin"
    .parameter "builder"

    .prologue
    .line 487
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 508
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 491
    .restart local p0
    :cond_1
    if-nez p1, :cond_2

    .line 492
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .restart local p1
    :goto_1
    const/4 v2, 0x0

    .line 498
    .local v2, start:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 499
    .local v1, length:I
    :goto_2
    if-eq v2, v1, :cond_4

    .line 500
    invoke-static {p0, v2, p1}, Lmiui/util/HanziToPinyin$PinYinToZhuYin;->convert(Ljava/lang/String;ILjava/lang/StringBuilder;)I

    move-result v0

    .line 501
    .local v0, converted:I
    if-gtz v0, :cond_3

    .line 503
    const-string p0, ""

    goto :goto_0

    .line 494
    .end local v0           #converted:I
    .end local v1           #length:I
    .end local v2           #start:I
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 505
    .restart local v0       #converted:I
    .restart local v1       #length:I
    .restart local v2       #start:I
    :cond_3
    add-int/2addr v2, v0

    .line 506
    goto :goto_2

    .end local v0           #converted:I
    :cond_4
    move-object p0, p1

    .line 508
    goto :goto_0
.end method
