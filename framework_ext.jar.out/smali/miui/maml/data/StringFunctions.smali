.class public Lmiui/maml/data/StringFunctions;
.super Lmiui/maml/data/Expression$FunctionImpl;
.source "StringFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/StringFunctions$1;,
        Lmiui/maml/data/StringFunctions$Fun;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private final mFun:Lmiui/maml/data/StringFunctions$Fun;


# direct methods
.method private constructor <init>(Lmiui/maml/data/StringFunctions$Fun;I)V
    .locals 0
    .parameter "f"
    .parameter "i"

    .prologue
    .line 54
    invoke-direct {p0, p2}, Lmiui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 55
    iput-object p1, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    .line 56
    return-void
.end method

.method public static load()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 37
    const-string v0, "strToLowerCase"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 38
    const-string v0, "strToUpperCase"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 39
    const-string v0, "strTrim"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_TRIM:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 40
    const-string v0, "strReplace"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 41
    const-string v0, "strReplaceAll"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 42
    const-string v0, "strReplaceFirst"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 44
    const-string v0, "strContains"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 45
    const-string v0, "strStartsWith"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 46
    const-string v0, "strEndsWith"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 47
    const-string v0, "strIsEmpty"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 48
    const-string v0, "strMatches"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 49
    const-string v0, "strIndexOf"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 50
    const-string v0, "strLastIndexOf"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 51
    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
    .locals 11
    .parameter "paraExps"
    .parameter "var"

    .prologue
    const-wide/high16 v7, -0x4010

    const-wide/high16 v5, 0x3ff0

    const-wide/16 v3, 0x0

    .line 61
    sget-object v9, Lmiui/maml/data/StringFunctions$1;->$SwitchMap$miui$maml$data$StringFunctions$Fun:[I

    iget-object v10, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v10}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 70
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-virtual {v9, p2}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, str0:Ljava/lang/String;
    sget-object v9, Lmiui/maml/data/StringFunctions$1;->$SwitchMap$miui$maml$data$StringFunctions$Fun:[I

    iget-object v10, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v10}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 75
    const/4 v9, 0x1

    aget-object v9, p1, v9

    invoke-virtual {v9, p2}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, str1:Ljava/lang/String;
    sget-object v9, Lmiui/maml/data/StringFunctions$1;->$SwitchMap$miui$maml$data$StringFunctions$Fun:[I

    iget-object v10, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v10}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_2

    .line 95
    const-string v5, "Expression"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to evalute FunctionExpression, invalid function: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v7}, Lmiui/maml/data/StringFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v1           #str0:Ljava/lang/String;
    .end local v2           #str1:Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v3

    .line 68
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/data/StringFunctions;->evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v4}, Lmiui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v3

    goto :goto_0

    .line 73
    .restart local v1       #str0:Ljava/lang/String;
    :pswitch_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_1
    move-wide v3, v5

    goto :goto_0

    .line 78
    .restart local v2       #str1:Ljava/lang/String;
    :pswitch_2
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    move-wide v3, v5

    goto :goto_0

    :cond_2
    move-wide v5, v3

    goto :goto_1

    .line 80
    :pswitch_3
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_2
    move-wide v3, v5

    goto :goto_0

    :cond_3
    move-wide v5, v3

    goto :goto_2

    .line 82
    :pswitch_4
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_3
    move-wide v3, v5

    goto :goto_0

    :cond_4
    move-wide v5, v3

    goto :goto_3

    .line 85
    :pswitch_5
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_5

    :goto_4
    move-wide v3, v5

    goto :goto_0

    :cond_5
    move-wide v5, v3

    goto :goto_4

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/util/regex/PatternSyntaxException;
    const-string v5, "Expression"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invaid pattern of matches: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    .end local v0           #e:Ljava/util/regex/PatternSyntaxException;
    :pswitch_6
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    int-to-double v3, v3

    goto :goto_0

    :cond_6
    move-wide v3, v7

    goto :goto_0

    .line 93
    :pswitch_7
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    int-to-double v7, v3

    :cond_7
    move-wide v3, v7

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 71
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_1
    .end packed-switch

    .line 76
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 8
    .parameter "paraExps"
    .parameter "var"

    .prologue
    const/4 v4, 0x0

    .line 106
    sget-object v5, Lmiui/maml/data/StringFunctions$1;->$SwitchMap$miui$maml$data$StringFunctions$Fun:[I

    iget-object v6, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v6}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 116
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5, p2}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, str0:Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v1, v4

    .line 152
    .end local v1           #str0:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 114
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/data/StringFunctions;->evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 120
    .restart local v1       #str0:Ljava/lang/String;
    :cond_1
    sget-object v5, Lmiui/maml/data/StringFunctions$1;->$SwitchMap$miui$maml$data$StringFunctions$Fun:[I

    iget-object v6, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v6}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 128
    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v5, p2}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, str1:Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-virtual {v5, p2}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, str2:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 133
    sget-object v5, Lmiui/maml/data/StringFunctions$1;->$SwitchMap$miui$maml$data$StringFunctions$Fun:[I

    iget-object v6, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v6}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 151
    const-string v5, "Expression"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to evaluteStr FunctionExpression, invalid function: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v7}, Lmiui/maml/data/StringFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 152
    goto :goto_0

    .line 122
    .end local v2           #str1:Ljava/lang/String;
    .end local v3           #str2:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 126
    :pswitch_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 135
    .restart local v2       #str1:Ljava/lang/String;
    .restart local v3       #str2:Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 138
    :pswitch_5
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/util/regex/PatternSyntaxException;
    const-string v4, "Expression"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invaid pattern of replaceAll: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    .end local v0           #e:Ljava/util/regex/PatternSyntaxException;
    :pswitch_6
    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto/16 :goto_0

    .line 146
    :catch_1
    move-exception v0

    .line 147
    .restart local v0       #e:Ljava/util/regex/PatternSyntaxException;
    const-string v4, "Expression"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invaid pattern of replaceFirst:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 120
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 133
    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
