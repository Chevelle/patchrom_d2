.class Lcom/android/bluetooth/map/BluetoothMasActivity$2;
.super Ljava/lang/Object;
.source "BluetoothMasActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMasActivity;->createView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMasActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMasActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasActivity$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 179
    if-eqz p2, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/bluetooth/map/BluetoothMasActivity;->mAlwaysAllowedValue:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMasActivity;->access$102(Lcom/android/bluetooth/map/BluetoothMasActivity;Z)Z

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/bluetooth/map/BluetoothMasActivity;->mAlwaysAllowedValue:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMasActivity;->access$102(Lcom/android/bluetooth/map/BluetoothMasActivity;Z)Z

    goto :goto_0
.end method
