.class Lcom/android/server/DevicePolicyManagerService$MMACpolicyDescription;
.super Lcom/android/server/DevicePolicyManagerService$PolicyFileDescription;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MMACpolicyDescription"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 246
    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/android/server/DevicePolicyManagerService$PolicyFileDescription;-><init>(Ljava/lang/String;I)V

    .line 247
    return-void
.end method


# virtual methods
.method doPolicyReload()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method isPolicyAdmin(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;)Z
    .locals 1
    .parameter "admin"

    .prologue
    .line 251
    iget-boolean v0, p1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isMMACadmin:Z

    return v0
.end method
