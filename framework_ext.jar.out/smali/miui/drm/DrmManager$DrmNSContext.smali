.class Lmiui/drm/DrmManager$DrmNSContext;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrmNSContext"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/drm/DrmManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lmiui/drm/DrmManager$DrmNSContext;-><init>()V

    return-void
.end method


# virtual methods
.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "prefix"

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, uri:Ljava/lang/String;
    const-string v1, "o-ex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    const-string v0, "http://odrl.net/1.1/ODRL-EX"

    .line 104
    :cond_0
    :goto_0
    return-object v0

    .line 99
    :cond_1
    const-string v1, "o-dd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    const-string v0, "http://odrl.net/1.1/ODRL-DD"

    goto :goto_0

    .line 101
    :cond_2
    const-string v1, "oma-dd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const-string v0, "http://www.openmobilealliance.com/oma-dd"

    goto :goto_0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .parameter "val"

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method
