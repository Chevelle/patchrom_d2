.class final Lmiui/push/IQ$2;
.super Lmiui/push/IQ;
.source "IQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/push/IQ;->createErrorResponse(Lmiui/push/IQ;Lmiui/push/XMPPError;)Lmiui/push/IQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$request:Lmiui/push/IQ;


# direct methods
.method constructor <init>(Lmiui/push/IQ;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lmiui/push/IQ$2;->val$request:Lmiui/push/IQ;

    invoke-direct {p0}, Lmiui/push/IQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lmiui/push/IQ$2;->val$request:Lmiui/push/IQ;

    invoke-virtual {v0}, Lmiui/push/IQ;->getChildElementXML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
