.class public Lmiui/util/ErrorReportUtils$ReportErrorTask;
.super Landroid/os/AsyncTask;
.source "ErrorReportUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/ErrorReportUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportErrorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mJsPost:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "jsPost"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 132
    iput-object p1, p0, Lmiui/util/ErrorReportUtils$ReportErrorTask;->mJsPost:Lorg/json/JSONObject;

    .line 133
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/util/ErrorReportUtils$ReportErrorTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 137
    iget-object v0, p0, Lmiui/util/ErrorReportUtils$ReportErrorTask;->mJsPost:Lorg/json/JSONObject;

    #calls: Lmiui/util/ErrorReportUtils;->httpSendErrorReport(Lorg/json/JSONObject;)V
    invoke-static {v0}, Lmiui/util/ErrorReportUtils;->access$000(Lorg/json/JSONObject;)V

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method
