.class public Lmiui/push/IQ$Type;
.super Ljava/lang/Object;
.source "IQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/push/IQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final ERROR:Lmiui/push/IQ$Type;

.field public static final GET:Lmiui/push/IQ$Type;

.field public static final RESULT:Lmiui/push/IQ$Type;

.field public static final SET:Lmiui/push/IQ$Type;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lmiui/push/IQ$Type;

    const-string v1, "get"

    invoke-direct {v0, v1}, Lmiui/push/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    .line 223
    new-instance v0, Lmiui/push/IQ$Type;

    const-string v1, "set"

    invoke-direct {v0, v1}, Lmiui/push/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/IQ$Type;->SET:Lmiui/push/IQ$Type;

    .line 225
    new-instance v0, Lmiui/push/IQ$Type;

    const-string v1, "result"

    invoke-direct {v0, v1}, Lmiui/push/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/IQ$Type;->RESULT:Lmiui/push/IQ$Type;

    .line 227
    new-instance v0, Lmiui/push/IQ$Type;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lmiui/push/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/IQ$Type;->ERROR:Lmiui/push/IQ$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lmiui/push/IQ$Type;->value:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lmiui/push/IQ$Type;
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 238
    if-nez p0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-object v0

    .line 241
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 242
    sget-object v1, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    invoke-virtual {v1}, Lmiui/push/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    sget-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    goto :goto_0

    .line 244
    :cond_2
    sget-object v1, Lmiui/push/IQ$Type;->SET:Lmiui/push/IQ$Type;

    invoke-virtual {v1}, Lmiui/push/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    sget-object v0, Lmiui/push/IQ$Type;->SET:Lmiui/push/IQ$Type;

    goto :goto_0

    .line 246
    :cond_3
    sget-object v1, Lmiui/push/IQ$Type;->ERROR:Lmiui/push/IQ$Type;

    invoke-virtual {v1}, Lmiui/push/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    sget-object v0, Lmiui/push/IQ$Type;->ERROR:Lmiui/push/IQ$Type;

    goto :goto_0

    .line 248
    :cond_4
    sget-object v1, Lmiui/push/IQ$Type;->RESULT:Lmiui/push/IQ$Type;

    invoke-virtual {v1}, Lmiui/push/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    sget-object v0, Lmiui/push/IQ$Type;->RESULT:Lmiui/push/IQ$Type;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lmiui/push/IQ$Type;->value:Ljava/lang/String;

    return-object v0
.end method
