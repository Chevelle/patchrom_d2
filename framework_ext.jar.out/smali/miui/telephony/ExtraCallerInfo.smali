.class public Lmiui/telephony/ExtraCallerInfo;
.super Ljava/lang/Object;
.source "ExtraCallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/ExtraCallerInfo$AntiSpamQueryState;
    }
.end annotation


# instance fields
.field public company:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public queryState:I

.field public ypPhone:Lmiui/provider/yellowpage/model/YellowPagePhone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getExtraCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;)Lmiui/telephony/ExtraCallerInfo;
    .locals 3
    .parameter "context"
    .parameter "info"
    .parameter "cursor"

    .prologue
    .line 27
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    .line 28
    .local v1, extra:Lmiui/telephony/ExtraCallerInfo;
    const/4 v2, 0x0

    iput-object v2, v1, Lmiui/telephony/ExtraCallerInfo;->company:Ljava/lang/String;

    .line 29
    const/4 v2, 0x0

    iput v2, v1, Lmiui/telephony/ExtraCallerInfo;->queryState:I

    .line 30
    const-string v2, "company"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 31
    .local v0, columnIndex:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 32
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmiui/telephony/ExtraCallerInfo;->company:Ljava/lang/String;

    .line 34
    :cond_0
    invoke-static {p0, p1, p2}, Lmiui/telephony/CallerInfo;->updateDisplayName(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;)V

    .line 35
    return-object v1
.end method
