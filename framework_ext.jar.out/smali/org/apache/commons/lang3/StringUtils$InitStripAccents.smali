.class Lorg/apache/commons/lang3/StringUtils$InitStripAccents;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitStripAccents"
.end annotation


# static fields
.field private static final java6Exception:Ljava/lang/Throwable;

.field private static final java6NormalizeMethod:Ljava/lang/reflect/Method;

.field private static final java6NormalizerFormNFD:Ljava/lang/Object;

.field private static final java6Pattern:Ljava/util/regex/Pattern;

.field private static final sunDecomposeMethod:Ljava/lang/reflect/Method;

.field private static final sunException:Ljava/lang/Throwable;

.field private static final sunPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 711
    const-string v9, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;

    .line 716
    sget-object v9, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;

    sput-object v9, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->java6Pattern:Ljava/util/regex/Pattern;

    .line 720
    const/4 v2, 0x0

    .line 721
    .local v2, _java6NormalizerFormNFD:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 722
    .local v1, _java6NormalizeMethod:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 723
    .local v3, _sunDecomposeMethod:Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .line 724
    .local v0, _java6Exception:Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 728
    .local v4, _sunException:Ljava/lang/Throwable;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 729
    const-string v10, "java.text.Normalizer$Form"

    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 730
    .local v8, normalizerFormClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "NFD"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 731
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 732
    const-string v10, "java.text.Normalizer"

    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 733
    .local v7, normalizerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "normalize"

    .line 734
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/CharSequence;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    .line 733
    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 750
    .end local v2           #_java6NormalizerFormNFD:Ljava/lang/Object;
    .end local v7           #normalizerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #normalizerFormClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    sput-object v0, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;

    .line 751
    sput-object v2, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;

    .line 752
    sput-object v1, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;

    .line 753
    sput-object v4, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;

    .line 754
    sput-object v3, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;

    .line 707
    return-void

    .line 735
    :catch_0
    move-exception v5

    .line 737
    .local v5, e1:Ljava/lang/Exception;
    move-object v0, v5

    .line 740
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 741
    const-string v10, "sun.text.Normalizer"

    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 742
    .restart local v7       #normalizerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "decompose"

    .line 743
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    .line 742
    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 744
    .end local v7           #normalizerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v6

    .line 745
    .local v6, e2:Ljava/lang/Exception;
    move-object v4, v6

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 714
    sget-object v0, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 710
    sget-object v0, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 713
    sget-object v0, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 709
    sget-object v0, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 715
    sget-object v0, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 716
    sget-object v0, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->java6Pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$6()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 711
    sget-object v0, Lorg/apache/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method
