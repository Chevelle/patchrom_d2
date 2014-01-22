.class public Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;
.super Ljava/lang/Object;
.source "BluetoothMasAppIf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMasAppIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OwnerInfo"
.end annotation


# instance fields
.field public Name:Ljava/lang/String;

.field public Number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMasAppIf;


# direct methods
.method protected constructor <init>(Lcom/android/bluetooth/map/BluetoothMasAppIf;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;->this$0:Lcom/android/bluetooth/map/BluetoothMasAppIf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
