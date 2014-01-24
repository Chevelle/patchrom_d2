.class public final Lmiui/provider/ExtraTelephony;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraTelephony$AntiSpamAccount;,
        Lmiui/provider/ExtraTelephony$FirewallLog;,
        Lmiui/provider/ExtraTelephony$Keyword;,
        Lmiui/provider/ExtraTelephony$Whitelist;,
        Lmiui/provider/ExtraTelephony$Blacklist;,
        Lmiui/provider/ExtraTelephony$SimCards;,
        Lmiui/provider/ExtraTelephony$SmsPhrase;,
        Lmiui/provider/ExtraTelephony$MmsSms;,
        Lmiui/provider/ExtraTelephony$Threads;,
        Lmiui/provider/ExtraTelephony$DeletableSyncColumns;,
        Lmiui/provider/ExtraTelephony$SyncColumns;,
        Lmiui/provider/ExtraTelephony$PrivateAddresses;,
        Lmiui/provider/ExtraTelephony$ThreadsColumns;,
        Lmiui/provider/ExtraTelephony$Mx;,
        Lmiui/provider/ExtraTelephony$AdvancedSeen;,
        Lmiui/provider/ExtraTelephony$Mms;,
        Lmiui/provider/ExtraTelephony$Sms;,
        Lmiui/provider/ExtraTelephony$TextBasedSmsColumns;
    }
.end annotation


# static fields
.field public static final BLOCKED_CONV_ADDR:Ljava/lang/String; = "blocked_conv_addr"

.field public static final BLOCKED_FLAG:Ljava/lang/String; = "blocked_flag"

.field public static final BLOCKED_FLAG_ALL_MSG:Ljava/lang/String; = "2"

.field public static final BLOCKED_FLAG_BLOCKED_MSG:Ljava/lang/String; = "1"

.field public static final BLOCKED_FLAG_NO_BLOCKED_MSG:Ljava/lang/String; = "0"

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final CHECK_DUPLICATION:Ljava/lang/String; = "check_duplication"

.field private static CONTACT_INFO_PTN:Ljava/util/regex/Pattern; = null

.field public static final DIRTY_QUERY_LIMIT:Ljava/lang/String; = "dirty_query_limit"

.field public static final NEED_FULL_INSERT_URI:Ljava/lang/String; = "need_full_insert_uri"

.field public static final PRIVACY_FLAG:Ljava/lang/String; = "privacy_flag"

.field public static final PRIVACY_FLAG_ALL_MSG:Ljava/lang/String; = "2"

.field public static final PRIVACY_FLAG_NO_PRIVATE_MSG:Ljava/lang/String; = "0"

.field public static final PRIVACY_FLAG_PRIVATE_MSG:Ljava/lang/String; = "1"

.field public static final SUPPRESS_MAKING_MMS_PREVIEW:Ljava/lang/String; = "supress_making_mms_preview"

.field private static final TAG:Ljava/lang/String; = "ExtraTelephony"

.field public static final THREADS_LIST_TYPE:Ljava/lang/String; = "threads_list_type"

.field public static final THREADS_LIST_TYPE_ALL:Ljava/lang/String; = "0"

.field public static final THREADS_LIST_TYPE_COMPOSITE:Ljava/lang/String; = "1"

.field public static final THREADS_LIST_TYPE_SP:Ljava/lang/String; = "2"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "\\[(.+?)\\]((.|\n)*?);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony;->CONTACT_INFO_PTN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    return-void
.end method

.method public static getBlacklistId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 10
    .parameter "context"
    .parameter "number"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v2, 0x0

    .line 676
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v8

    .line 694
    :goto_0
    return-wide v0

    .line 680
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 683
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 685
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 688
    :catch_0
    move-exception v7

    .line 689
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in getBlacklistId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-wide v0, v8

    .line 694
    goto :goto_0

    .line 691
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getCallBlockType(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 3
    .parameter "context"
    .parameter "number"
    .parameter "isContact"

    .prologue
    .line 798
    const/4 v1, 0x0

    .line 799
    .local v1, blockType:I
    const/4 v0, 0x0

    .line 802
    .local v0, action:I
    invoke-static {p0}, Lmiui/provider/ExtraSettings$AntiSpam;->isUnknownCallActionEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isInBlacklist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 804
    :cond_1
    invoke-static {p0}, Lmiui/provider/ExtraSettings$AntiSpam;->getCallActionForBlacklist(Landroid/content/Context;)I

    move-result v0

    .line 805
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 806
    const/4 v1, 0x2

    .line 824
    :cond_2
    :goto_0
    return v1

    .line 808
    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    .line 810
    :cond_4
    invoke-static {p0}, Lmiui/provider/ExtraSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 813
    const/4 v1, 0x1

    .line 815
    invoke-static {p0}, Lmiui/provider/ExtraSettings$AntiSpam;->isVipCallActionEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 817
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, Lmiui/provider/ExtraTelephony;->isVipOfDndm(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 818
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSmsBlockType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "number"
    .parameter "body"

    .prologue
    .line 914
    const/4 v1, 0x0

    .line 915
    .local v1, blockType:I
    const/4 v0, 0x0

    .line 916
    .local v0, action:I
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 919
    .local v2, isContact:Z
    invoke-static {p0}, Lmiui/provider/ExtraSettings$AntiSpam;->isUnknownSmsActionEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isInBlacklist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 921
    :cond_1
    invoke-static {p0}, Lmiui/provider/ExtraSettings$AntiSpam;->getSmsActionForBlacklist(Landroid/content/Context;)I

    move-result v0

    .line 922
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 923
    const/4 v1, 0x1

    .line 941
    :cond_2
    :goto_0
    return v1

    .line 925
    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    .line 927
    :cond_4
    invoke-static {p0}, Lmiui/provider/ExtraSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 930
    const/4 v1, 0x1

    .line 932
    if-nez v2, :cond_2

    invoke-static {p0, p1, p2}, Lmiui/provider/ExtraTelephony;->shouldFilter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 933
    const/4 v1, 0x6

    goto :goto_0

    .line 937
    :cond_5
    if-nez v2, :cond_2

    invoke-static {p0, p1, p2}, Lmiui/provider/ExtraTelephony;->shouldFilter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 938
    const/4 v1, 0x6

    goto :goto_0
.end method

.method public static getWhitelistId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 10
    .parameter "context"
    .parameter "number"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v2, 0x0

    .line 737
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v8

    .line 755
    :goto_0
    return-wide v0

    .line 741
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 744
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 746
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 752
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 749
    :catch_0
    move-exception v7

    .line 750
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in getWhitelistId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-wide v0, v8

    .line 755
    goto :goto_0

    .line 752
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static isContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 632
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 637
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 639
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    move v0, v8

    .line 643
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 646
    :goto_1
    return v0

    :cond_0
    move v0, v9

    .line 639
    goto :goto_0

    .line 640
    :catch_0
    move-exception v7

    .line 641
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    const-string v1, "Cursor exception in isContact()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    move v0, v9

    .line 646
    goto :goto_1

    .line 643
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInBlacklist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 653
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    :cond_0
    :goto_0
    return v8

    .line 657
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 660
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 662
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 666
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v0

    .line 662
    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_1

    .line 663
    :catch_0
    move-exception v7

    .line 664
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in isInBlacklist(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInWhitelist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 714
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    :cond_0
    :goto_0
    return v8

    .line 718
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 721
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 723
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 727
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v0

    .line 723
    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_1

    .line 724
    :catch_0
    move-exception v7

    .line 725
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in isInWhitelist(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 727
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static isMiuiPattern(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "message"

    .prologue
    const/4 v9, 0x1

    .line 880
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 881
    .local v0, ContactTypes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x6060017

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 882
    .local v1, contactEntries:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v10, v1

    if-ge v3, v10, :cond_0

    .line 883
    aget-object v10, v1, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 885
    :cond_0
    sget-object v10, Lmiui/provider/ExtraTelephony;->CONTACT_INFO_PTN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 886
    .local v5, m:Ljava/util/regex/Matcher;
    const/4 v7, 0x0

    .line 887
    .local v7, successiveType:I
    const/4 v4, 0x0

    .line 888
    .local v4, lastEnd:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 889
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 890
    .local v6, start:I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 891
    .local v2, end:I
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 892
    .local v8, type:Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v10, v4, 0x1

    if-eq v6, v10, :cond_1

    if-nez v7, :cond_2

    .line 893
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 895
    const/4 v10, 0x2

    if-ne v7, v10, :cond_3

    .line 903
    .end local v2           #end:I
    .end local v6           #start:I
    .end local v8           #type:Ljava/lang/String;
    :goto_2
    return v9

    .line 899
    .restart local v2       #end:I
    .restart local v6       #start:I
    .restart local v8       #type:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    .line 901
    :cond_3
    move v4, v2

    .line 902
    goto :goto_1

    .line 903
    .end local v2           #end:I
    .end local v6           #start:I
    .end local v8           #type:Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public static isServiceNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1063
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return v1

    .line 1066
    :cond_1
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1067
    .local v0, phoneNumber:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 1068
    goto :goto_0

    .line 1069
    :cond_2
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "106"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 1070
    goto :goto_0
.end method

.method public static isVipOfDndm(Landroid/content/Context;Ljava/lang/String;ZZ)Z
    .locals 3
    .parameter "context"
    .parameter "number"
    .parameter "isContact"
    .parameter "needCheckContact"

    .prologue
    .line 767
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 768
    const/4 v0, 0x0

    .line 787
    :goto_0
    return v0

    .line 770
    :cond_0
    const/4 v0, 0x0

    .line 772
    .local v0, isVip:Z
    invoke-static {p0}, Lmiui/provider/ExtraSettings$AntiSpam;->getVipListForQuietMode(Landroid/content/Context;)I

    move-result v1

    .line 773
    .local v1, list:I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 782
    :pswitch_0
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isInWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 783
    goto :goto_0

    .line 775
    :pswitch_1
    if-nez p3, :cond_1

    .line 776
    move v0, p2

    goto :goto_0

    .line 778
    :cond_1
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 780
    goto :goto_0

    .line 773
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static removeBlacklist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    .line 701
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 702
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->getBlacklistId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 703
    .local v0, id:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 704
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 708
    :cond_0
    return-void
.end method

.method private static shouldFilter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "number"
    .parameter "body"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 833
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lmiui/provider/ExtraSettings$AntiSpam;->isSmsFilterEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 870
    :goto_0
    return v0

    .line 838
    :cond_1
    invoke-static {p0, p2}, Lmiui/provider/ExtraTelephony;->isMiuiPattern(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    .line 839
    goto :goto_0

    .line 843
    :cond_2
    invoke-static {p0, p1}, Lmiui/provider/yellowpage/YellowPageUtils;->isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    .line 844
    goto :goto_0

    .line 848
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v5, "data"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 852
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 854
    :cond_4
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 855
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 856
    .local v8, keyword:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 857
    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    .line 865
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 858
    goto :goto_0

    .line 862
    .end local v8           #keyword:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 863
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    const-string v1, "Cursor exception in shouldFilter()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 865
    .end local v7           #e:Ljava/lang/Exception;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 870
    :cond_6
    invoke-static {p0, p1, p2}, Lmiui/provider/ExtraGuard;->checkSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 865
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
