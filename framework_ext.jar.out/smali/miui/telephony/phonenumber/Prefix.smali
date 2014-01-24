.class public Lmiui/telephony/phonenumber/Prefix;
.super Ljava/lang/Object;
.source "Prefix.java"


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final PREFIX_10193:Ljava/lang/String; = "10193"

.field public static final PREFIX_11808:Ljava/lang/String; = "11808"

.field public static final PREFIX_12520:Ljava/lang/String; = "12520"

.field public static final PREFIX_12583:Ljava/lang/String; = "12583"

.field public static final PREFIX_12593:Ljava/lang/String; = "12593"

.field public static final PREFIX_17900:Ljava/lang/String; = "17900"

.field public static final PREFIX_17901:Ljava/lang/String; = "17901"

.field public static final PREFIX_17908:Ljava/lang/String; = "17908"

.field public static final PREFIX_17909:Ljava/lang/String; = "17909"

.field public static final PREFIX_17911:Ljava/lang/String; = "17911"

.field public static final PREFIX_17950:Ljava/lang/String; = "17950"

.field public static final PREFIX_17951:Ljava/lang/String; = "17951"

.field public static final PREFIX_17960:Ljava/lang/String; = "17960"

.field public static final PREFIX_17961:Ljava/lang/String; = "17961"

.field public static final PREFIX_17968:Ljava/lang/String; = "17968"

.field public static final PREFIX_17969:Ljava/lang/String; = "17969"

.field public static final PREFIX_17990:Ljava/lang/String; = "17990"

.field public static final PREFIX_17991:Ljava/lang/String; = "17991"

.field public static final PREFIX_17995:Ljava/lang/String; = "17995"

.field public static final PREFIX_17996:Ljava/lang/String; = "17996"

.field public static final SMS_PREFIXES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "12520"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/telephony/phonenumber/Prefix;->SMS_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSmsPrefix(Ljava/lang/String;)Z
    .locals 5
    .parameter "prefix"

    .prologue
    .line 111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 112
    sget-object v0, Lmiui/telephony/phonenumber/Prefix;->SMS_PREFIXES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 113
    .local v3, sms:Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    const/4 v4, 0x1

    .line 118
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #sms:Ljava/lang/String;
    :goto_1
    return v4

    .line 112
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #sms:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #sms:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static parse(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 7
    .parameter "buffer"
    .parameter "start"
    .parameter "length"

    .prologue
    const/16 v6, 0x35

    const/16 v5, 0x36

    const/16 v4, 0x31

    const/16 v3, 0x39

    const/16 v2, 0x30

    .line 37
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->isChinaEnvironment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const-string v0, ""

    .line 107
    :goto_0
    return-object v0

    .line 41
    :cond_0
    if-gtz p2, :cond_1

    .line 42
    const-string v0, ""

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
    :cond_2
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 47
    :pswitch_0
    const/4 v0, 0x4

    if-le p2, v0, :cond_2

    .line 48
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_1

    .line 50
    :pswitch_2
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2

    .line 51
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_2

    const-string v0, "10193"

    goto :goto_0

    .line 55
    :pswitch_3
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_2

    .line 56
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_2

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_2

    const-string v0, "11808"

    goto :goto_0

    .line 60
    :pswitch_4
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_2

    .line 61
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_3

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_3

    const-string v0, "12593"

    goto :goto_0

    .line 62
    :cond_3
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "12520"

    goto/16 :goto_0

    .line 66
    :pswitch_5
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    .line 67
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_4

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_4

    const-string v0, "17900"

    goto/16 :goto_0

    .line 68
    :cond_4
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_5

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_5

    const-string v0, "17901"

    goto/16 :goto_0

    .line 69
    :cond_5
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_6

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_6

    const-string v0, "17908"

    goto/16 :goto_0

    .line 70
    :cond_6
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_7

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_7

    const-string v0, "17909"

    goto/16 :goto_0

    .line 71
    :cond_7
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_8

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_8

    const-string v0, "17911"

    goto/16 :goto_0

    .line 72
    :cond_8
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_9

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_9

    const-string v0, "17950"

    goto/16 :goto_0

    .line 73
    :cond_9
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_a

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_a

    const-string v0, "17951"

    goto/16 :goto_0

    .line 74
    :cond_a
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_b

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_b

    const-string v0, "17960"

    goto/16 :goto_0

    .line 75
    :cond_b
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_c

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_c

    const-string v0, "17961"

    goto/16 :goto_0

    .line 76
    :cond_c
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_d

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_d

    const-string v0, "17968"

    goto/16 :goto_0

    .line 77
    :cond_d
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_e

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_e

    const-string v0, "17969"

    goto/16 :goto_0

    .line 78
    :cond_e
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_f

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_f

    const-string v0, "17990"

    goto/16 :goto_0

    .line 79
    :cond_f
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_10

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_10

    const-string v0, "17991"

    goto/16 :goto_0

    .line 80
    :cond_10
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_11

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_11

    const-string v0, "17995"

    goto/16 :goto_0

    .line 81
    :cond_11
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_2

    const-string v0, "17996"

    goto/16 :goto_0

    .line 94
    :pswitch_6
    const/16 v0, 0xa

    if-lt p2, v0, :cond_2

    .line 95
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_1

    .line 97
    :pswitch_7
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-lt v0, v4, :cond_2

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-gt v0, v3, :cond_2

    .line 98
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 48
    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 95
    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_7
    .end packed-switch
.end method
