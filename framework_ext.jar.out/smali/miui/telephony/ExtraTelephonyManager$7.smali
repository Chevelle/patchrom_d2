.class final Lmiui/telephony/ExtraTelephonyManager$7;
.super Landroid/content/BroadcastReceiver;
.source "ExtraTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/ExtraTelephonyManager;->waitAndGetSimId(Landroid/content/Context;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

.field final synthetic val$tm:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;Landroid/telephony/TelephonyManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lmiui/telephony/ExtraTelephonyManager$7;->val$future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    iput-object p2, p0, Lmiui/telephony/ExtraTelephonyManager$7;->val$tm:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 375
    const-string v0, "IMSI"

    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lmiui/telephony/ExtraTelephonyManager$7;->val$future:Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    iget-object v1, p0, Lmiui/telephony/ExtraTelephonyManager$7;->val$tm:Landroid/telephony/TelephonyManager;

    #calls: Lmiui/telephony/ExtraTelephonyManager;->getSimIdByPhoneType(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    invoke-static {v1}, Lmiui/telephony/ExtraTelephonyManager;->access$300(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 379
    :cond_0
    return-void
.end method
