.class public Lmiui/net/exception/MiCloudServerException;
.super Ljava/lang/Exception;
.source "MiCloudServerException.java"


# instance fields
.field public statusCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "statusCode"

    .prologue
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 11
    iput p1, p0, Lmiui/net/exception/MiCloudServerException;->statusCode:I

    .line 12
    return-void
.end method

.method public static isMiCloudServerException(I)Z
    .locals 2
    .parameter "statusCode"

    .prologue
    .line 19
    const/16 v0, 0x190

    if-eq p0, v0, :cond_0

    const/16 v0, 0x191

    if-eq p0, v0, :cond_0

    const/16 v0, 0x193

    if-eq p0, v0, :cond_0

    const/16 v0, 0x196

    if-eq p0, v0, :cond_0

    div-int/lit8 v0, p0, 0x64

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lmiui/net/exception/MiCloudServerException;->statusCode:I

    return v0
.end method
