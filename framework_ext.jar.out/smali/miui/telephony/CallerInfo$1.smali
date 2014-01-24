.class final Lmiui/telephony/CallerInfo$1;
.super Landroid/os/AsyncTask;
.source "CallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/CallerInfo;->doYellowPageQuery(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lmiui/provider/yellowpage/model/YellowPagePhone;",
        ">;"
    }
.end annotation


# instance fields
.field private mYpImgLoadedHandler:Landroid/os/Handler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cookie:Ljava/lang/Object;

.field final synthetic val$listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$previousResult:Lcom/android/internal/telephony/CallerInfo;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lmiui/telephony/CallerInfo$1;->val$previousResult:Lcom/android/internal/telephony/CallerInfo;

    iput-object p2, p0, Lmiui/telephony/CallerInfo$1;->val$listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iput p3, p0, Lmiui/telephony/CallerInfo$1;->val$token:I

    iput-object p4, p0, Lmiui/telephony/CallerInfo$1;->val$cookie:Ljava/lang/Object;

    iput-object p5, p0, Lmiui/telephony/CallerInfo$1;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lmiui/telephony/CallerInfo$1;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmiui/telephony/CallerInfo$1;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lmiui/telephony/CallerInfo$1;->mYpImgLoadedHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/telephony/CallerInfo$1;->doInBackground([Ljava/lang/Void;)Lmiui/provider/yellowpage/model/YellowPagePhone;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lmiui/provider/yellowpage/model/YellowPagePhone;
    .locals 3
    .parameter "params"

    .prologue
    .line 103
    iget-object v0, p0, Lmiui/telephony/CallerInfo$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lmiui/telephony/CallerInfo$1;->val$number:Ljava/lang/String;

    iget-object v2, p0, Lmiui/telephony/CallerInfo$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lmiui/provider/yellowpage/YellowPageUtils;->isYellowPageEnable(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lmiui/provider/yellowpage/YellowPageUtils;->getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/provider/yellowpage/model/YellowPagePhone;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    check-cast p1, Lmiui/provider/yellowpage/model/YellowPagePhone;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/telephony/CallerInfo$1;->onPostExecute(Lmiui/provider/yellowpage/model/YellowPagePhone;)V

    return-void
.end method

.method protected onPostExecute(Lmiui/provider/yellowpage/model/YellowPagePhone;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 109
    iget-object v0, p0, Lmiui/telephony/CallerInfo$1;->val$previousResult:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    const/4 v1, 0x2

    iput v1, v0, Lmiui/telephony/ExtraCallerInfo;->queryState:I

    .line 110
    iget-object v0, p0, Lmiui/telephony/CallerInfo$1;->val$previousResult:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iput-object p1, v0, Lmiui/telephony/ExtraCallerInfo;->ypPhone:Lmiui/provider/yellowpage/model/YellowPagePhone;

    .line 111
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiui/provider/yellowpage/model/YellowPagePhone;->isYellowPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lmiui/telephony/CallerInfo$1$2;

    invoke-direct {v0, p0}, Lmiui/telephony/CallerInfo$1$2;-><init>(Lmiui/telephony/CallerInfo$1;)V

    invoke-static {v0}, Lmiui/provider/yellowpage/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lmiui/telephony/CallerInfo$1;->val$listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lmiui/telephony/CallerInfo$1;->val$listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget v1, p0, Lmiui/telephony/CallerInfo$1;->val$token:I

    iget-object v2, p0, Lmiui/telephony/CallerInfo$1;->val$cookie:Ljava/lang/Object;

    iget-object v3, p0, Lmiui/telephony/CallerInfo$1;->val$previousResult:Lcom/android/internal/telephony/CallerInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 129
    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lmiui/telephony/CallerInfo$1;->val$previousResult:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    const/4 v1, 0x1

    iput v1, v0, Lmiui/telephony/ExtraCallerInfo;->queryState:I

    .line 91
    new-instance v0, Lmiui/telephony/CallerInfo$1$1;

    invoke-direct {v0, p0}, Lmiui/telephony/CallerInfo$1$1;-><init>(Lmiui/telephony/CallerInfo$1;)V

    iput-object v0, p0, Lmiui/telephony/CallerInfo$1;->mYpImgLoadedHandler:Landroid/os/Handler;

    .line 99
    return-void
.end method
