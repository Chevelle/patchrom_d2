.class Lcom/android/bluetooth/map/BluetoothMasTestActivity$2;
.super Ljava/lang/Object;
.source "BluetoothMasTestActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMasTestActivity;->createView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMasTestActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMasTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 161
    if-eqz p2, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasTestActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mAlwaysAllowedValue:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->access$102(Lcom/android/bluetooth/map/BluetoothMasTestActivity;Z)Z

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasTestActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mAlwaysAllowedValue:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->access$102(Lcom/android/bluetooth/map/BluetoothMasTestActivity;Z)Z

    goto :goto_0
.end method
