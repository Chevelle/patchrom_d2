.class public Lmiui/telephony/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doYellowPageQuery(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;
    .locals 7
    .parameter "context"
    .parameter "number"
    .parameter "previousResult"
    .parameter "listener"
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    invoke-static {}, Lmiui/provider/yellowpage/YellowPageUtils;->isYellowPageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lmiui/telephony/CallerInfo$1;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lmiui/telephony/CallerInfo$1;-><init>(Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Lmiui/telephony/CallerInfo$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    :cond_0
    return-object p2
.end method

.method public static getColumnIndex(Landroid/net/Uri;Ljava/lang/String;Landroid/database/Cursor;)I
    .locals 4
    .parameter "contactRef"
    .parameter "defaultName"
    .parameter "cursor"

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, url:Ljava/lang/String;
    move-object v1, p1

    .line 139
    .local v1, columnName:Ljava/lang/String;
    const-string v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    :cond_0
    const-string v3, "number"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    const-string v1, "data1"

    .line 151
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, columnIndex:I
    :goto_1
    return v0

    .line 143
    .end local v0           #columnIndex:I
    :cond_2
    const-string v3, "type"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 144
    const-string v1, "data2"

    goto :goto_0

    .line 145
    :cond_3
    const-string v3, "label"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 146
    const-string v1, "data3"

    goto :goto_0

    .line 147
    :cond_4
    const-string v3, "normalized_number"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    const-string v1, "data4"

    goto :goto_0

    .line 151
    :cond_5
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getPresentation(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "number"

    .prologue
    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    :cond_0
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    .line 43
    :goto_0
    return v0

    .line 38
    :cond_1
    const-string v0, "-2"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    goto :goto_0

    .line 40
    :cond_2
    const-string v0, "-3"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    goto :goto_0

    .line 43
    :cond_3
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    goto :goto_0
.end method

.method public static updateDisplayName(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;)V
    .locals 8
    .parameter "context"
    .parameter "ci"
    .parameter "cursor"

    .prologue
    const/16 v7, 0x20

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 50
    const-string v5, "display_name"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 51
    .local v1, columnIndex:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 52
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 53
    .local v4, names:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    const v5, 0x60c0040

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, delimiter:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 58
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2

    .line 59
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .end local v1           #columnIndex:I
    .end local v2           #delimiter:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #names:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmiui/telephony/ExtraCallerInfo;->displayName:Ljava/lang/String;

    .line 69
    return-void

    .line 62
    .restart local v1       #columnIndex:I
    .restart local v2       #delimiter:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #names:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
