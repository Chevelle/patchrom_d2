.class public Lcom/android/bluetooth/pan/PanService$ConnectState;
.super Ljava/lang/Object;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConnectState"
.end annotation


# instance fields
.field addr:[B

.field error:I

.field local_role:I

.field remote_role:I

.field state:I


# direct methods
.method public constructor <init>([BIIII)V
    .locals 0
    .parameter "address"
    .parameter "state"
    .parameter "error"
    .parameter "local_role"
    .parameter "remote_role"

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->addr:[B

    .line 320
    iput p2, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->state:I

    .line 321
    iput p3, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->error:I

    .line 322
    iput p4, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->local_role:I

    .line 323
    iput p5, p0, Lcom/android/bluetooth/pan/PanService$ConnectState;->remote_role:I

    .line 324
    return-void
.end method
