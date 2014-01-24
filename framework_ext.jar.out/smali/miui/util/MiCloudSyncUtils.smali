.class public Lmiui/util/MiCloudSyncUtils;
.super Ljava/lang/Object;
.source "MiCloudSyncUtils.java"


# static fields
.field private static final AUTHORITIES_NEED_ACTIVATE:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYNC_FOR_SIM_PREFIX:Ljava/lang/String; = "sync_for_sim_"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/util/MiCloudSyncUtils;->AUTHORITIES_NEED_ACTIVATE:Ljava/util/Set;

    .line 35
    sget-object v0, Lmiui/util/MiCloudSyncUtils;->AUTHORITIES_NEED_ACTIVATE:Ljava/util/Set;

    const-string v1, "sms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lmiui/util/MiCloudSyncUtils;->AUTHORITIES_NEED_ACTIVATE:Ljava/util/Set;

    const-string v1, "call_log"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSimAvailability(Landroid/app/Activity;ILjava/lang/Runnable;)Z
    .locals 9
    .parameter "activity"
    .parameter "simIndex"
    .parameter "simNotReadyCallback"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 128
    invoke-static {p0}, Lmiui/msim/telephony/MiuiTelephonyManager;->getInstance(Landroid/content/Context;)Lmiui/msim/telephony/IMiuiTelephonyManager;

    move-result-object v4

    .line 129
    .local v4, tm:Lmiui/msim/telephony/IMiuiTelephonyManager;
    invoke-interface {v4, p1}, Lmiui/msim/telephony/IMiuiTelephonyManager;->getSimState(I)I

    move-result v2

    .line 131
    .local v2, state:I
    packed-switch v2, :pswitch_data_0

    .line 142
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_0

    .line 144
    const v1, 0x60c0240

    .line 150
    .local v1, msgRes:I
    :goto_0
    const v7, 0x60c023d

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, title:Ljava/lang/String;
    new-instance v7, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    invoke-direct {v7, v5}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;-><init>(I)V

    invoke-virtual {v7, v3}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setTitle(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setMessage(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setCancelable(Z)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->create()Lmiui/widget/SimpleDialogFragment;

    move-result-object v0

    .line 158
    .local v0, dialog:Lmiui/widget/SimpleDialogFragment;
    const v5, 0x104000a

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Lmiui/widget/SimpleDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 159
    new-instance v5, Lmiui/util/MiCloudSyncUtils$1;

    invoke-direct {v5, p2}, Lmiui/util/MiCloudSyncUtils$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v5}, Lmiui/widget/SimpleDialogFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v7, "SimNotReady"

    invoke-virtual {v0, v5, v7}, Lmiui/widget/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v5, v6

    .line 168
    .end local v0           #dialog:Lmiui/widget/SimpleDialogFragment;
    .end local v1           #msgRes:I
    .end local v3           #title:Ljava/lang/String;
    :pswitch_1
    return v5

    .line 136
    :pswitch_2
    const v1, 0x60c018a

    .line 137
    .restart local v1       #msgRes:I
    goto :goto_0

    .line 139
    .end local v1           #msgRes:I
    :pswitch_3
    const v1, 0x60c023e

    .line 140
    .restart local v1       #msgRes:I
    goto :goto_0

    .line 146
    .end local v1           #msgRes:I
    :cond_0
    const v1, 0x60c023f

    .restart local v1       #msgRes:I
    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static getAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;)Z
    .locals 4
    .parameter "cr"
    .parameter "simIndex"
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync_for_sim_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "account"
    .parameter "authority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 189
    .local v1, syncInfo:Landroid/content/SyncInfo;
    iget-object v2, v1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    const/4 v2, 0x1

    .line 194
    .end local v1           #syncInfo:Landroid/content/SyncInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static needActivate(Ljava/lang/String;)Z
    .locals 1
    .parameter "authority"

    .prologue
    .line 114
    sget-object v0, Lmiui/util/MiCloudSyncUtils;->AUTHORITIES_NEED_ACTIVATE:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .parameter "account"
    .parameter "authority"
    .parameter "syncOn"

    .prologue
    .line 41
    if-eqz p2, :cond_0

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 48
    .end local v0           #extras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {p0, p1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 2
    .parameter "cr"
    .parameter "simIndex"
    .parameter "account"
    .parameter "authority"
    .parameter "value"

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync_for_sim_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateSyncStatus(Landroid/content/Context;Ljava/util/List;Lmiui/widget/SyncStatePreference;ZZZLjava/lang/String;)V
    .locals 22
    .parameter "context"
    .parameter
    .parameter "syncPref"
    .parameter "updateSummary"
    .parameter "noSim"
    .parameter "isActivating"
    .parameter "summary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Lmiui/widget/SyncStatePreference;",
            "ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    .line 54
    .local v9, mDateFormat:Ljava/text/DateFormat;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    .line 55
    .local v10, mTimeFormat:Ljava/text/DateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 56
    .local v6, date:Ljava/util/Date;
    invoke-virtual/range {p2 .. p2}, Lmiui/widget/SyncStatePreference;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, authority:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lmiui/widget/SyncStatePreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 59
    .local v2, account:Landroid/accounts/Account;
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v12

    .line 61
    .local v12, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    .line 63
    .local v15, syncEnabled:Z
    if-nez v12, :cond_4

    const/4 v5, 0x0

    .line 65
    .local v5, authorityIsPending:Z
    :goto_0
    if-nez v12, :cond_5

    const/4 v7, 0x0

    .line 67
    .local v7, initialSync:Z
    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lmiui/util/MiCloudSyncUtils;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 69
    .local v3, activelySyncing:Z
    if-eqz v12, :cond_6

    iget-wide v0, v12, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_6

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    const/4 v8, 0x1

    .line 73
    .local v8, lastSyncFailed:Z
    :goto_2
    if-nez v15, :cond_0

    .line 74
    const/4 v8, 0x0

    .line 77
    :cond_0
    if-eqz p3, :cond_2

    .line 78
    if-nez v12, :cond_7

    const-wide/16 v13, 0x0

    .line 80
    .local v13, successEndTime:J
    :goto_3
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-eqz v18, :cond_8

    .line 81
    invoke-virtual {v6, v13, v14}, Ljava/util/Date;->setTime(J)V

    .line 82
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 84
    .local v17, timeString:Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 85
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 87
    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 92
    .end local v13           #successEndTime:J
    .end local v17           #timeString:Ljava/lang/String;
    :cond_2
    :goto_4
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v16

    .line 94
    .local v16, syncState:I
    if-eqz v3, :cond_9

    if-ltz v16, :cond_9

    if-nez v7, :cond_9

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setActive(Z)V

    .line 96
    if-eqz v5, :cond_a

    if-ltz v16, :cond_a

    if-nez v7, :cond_a

    const/16 v18, 0x1

    :goto_6
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setPending(Z)V

    .line 99
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setNoSim(Z)V

    .line 100
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lmiui/widget/SyncStatePreference;->setFailed(Z)V

    .line 101
    if-nez p4, :cond_b

    if-eqz v15, :cond_b

    const/16 v18, 0x1

    :goto_7
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setChecked(Z)V

    .line 102
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v11

    .line 104
    .local v11, masterSyncAutomatically:Z
    if-nez p4, :cond_c

    if-eqz v11, :cond_c

    const/16 v18, 0x1

    :goto_8
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setEnabled(Z)V

    .line 105
    if-eqz v11, :cond_3

    .line 106
    invoke-static {v4}, Lmiui/util/MiCloudSyncUtils;->needActivate(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 107
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setActivating(Z)V

    .line 108
    if-nez p4, :cond_d

    if-nez p5, :cond_d

    const/16 v18, 0x1

    :goto_9
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setEnabled(Z)V

    .line 111
    :cond_3
    return-void

    .line 63
    .end local v3           #activelySyncing:Z
    .end local v5           #authorityIsPending:Z
    .end local v7           #initialSync:Z
    .end local v8           #lastSyncFailed:Z
    .end local v11           #masterSyncAutomatically:Z
    .end local v16           #syncState:I
    :cond_4
    iget-boolean v5, v12, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_0

    .line 65
    .restart local v5       #authorityIsPending:Z
    :cond_5
    iget-boolean v7, v12, Landroid/content/SyncStatusInfo;->initialize:Z

    goto/16 :goto_1

    .line 69
    .restart local v3       #activelySyncing:Z
    .restart local v7       #initialSync:Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 78
    .restart local v8       #lastSyncFailed:Z
    :cond_7
    iget-wide v13, v12, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    goto/16 :goto_3

    .line 89
    .restart local v13       #successEndTime:J
    :cond_8
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 94
    .end local v13           #successEndTime:J
    .restart local v16       #syncState:I
    :cond_9
    const/16 v18, 0x0

    goto :goto_5

    .line 96
    :cond_a
    const/16 v18, 0x0

    goto :goto_6

    .line 101
    :cond_b
    const/16 v18, 0x0

    goto :goto_7

    .line 104
    .restart local v11       #masterSyncAutomatically:Z
    :cond_c
    const/16 v18, 0x0

    goto :goto_8

    .line 108
    :cond_d
    const/16 v18, 0x0

    goto :goto_9
.end method
