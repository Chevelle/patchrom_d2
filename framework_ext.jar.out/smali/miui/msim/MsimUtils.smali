.class public Lmiui/msim/MsimUtils;
.super Ljava/lang/Object;
.source "MsimUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGemini2()Z
    .locals 2

    .prologue
    .line 8
    const-string v0, "ro.mediatek.gemini_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
