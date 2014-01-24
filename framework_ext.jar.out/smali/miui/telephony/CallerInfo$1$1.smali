.class Lmiui/telephony/CallerInfo$1$1;
.super Landroid/os/Handler;
.source "CallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/CallerInfo$1;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/CallerInfo$1;


# direct methods
.method constructor <init>(Lmiui/telephony/CallerInfo$1;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lmiui/telephony/CallerInfo$1$1;->this$0:Lmiui/telephony/CallerInfo$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 94
    iget-object v0, p0, Lmiui/telephony/CallerInfo$1$1;->this$0:Lmiui/telephony/CallerInfo$1;

    iget-object v0, v0, Lmiui/telephony/CallerInfo$1;->val$listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lmiui/telephony/CallerInfo$1$1;->this$0:Lmiui/telephony/CallerInfo$1;

    iget-object v0, v0, Lmiui/telephony/CallerInfo$1;->val$listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget-object v1, p0, Lmiui/telephony/CallerInfo$1$1;->this$0:Lmiui/telephony/CallerInfo$1;

    iget v1, v1, Lmiui/telephony/CallerInfo$1;->val$token:I

    iget-object v2, p0, Lmiui/telephony/CallerInfo$1$1;->this$0:Lmiui/telephony/CallerInfo$1;

    iget-object v2, v2, Lmiui/telephony/CallerInfo$1;->val$cookie:Ljava/lang/Object;

    iget-object v3, p0, Lmiui/telephony/CallerInfo$1$1;->this$0:Lmiui/telephony/CallerInfo$1;

    iget-object v3, v3, Lmiui/telephony/CallerInfo$1;->val$previousResult:Lcom/android/internal/telephony/CallerInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 97
    :cond_0
    return-void
.end method
