.class Landroid/net/wifi/WifiStateMachine$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, workSource:Landroid/os/WorkSource;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/WifiStateMachine;->startScan(ILandroid/os/WorkSource;)V

    .line 733
    return-void
.end method
