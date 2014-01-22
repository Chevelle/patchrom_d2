.class public Lcom/android/bluetooth/hfp/AtPhonebook;
.super Ljava/lang/Object;
.source "AtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfp/AtPhonebook$1;,
        Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final CALLS_PROJECTION:[Ljava/lang/String; = null

.field private static final DBG:Z = false

.field private static final INCOMING_CALL_WHERE:Ljava/lang/String; = "type=1"

.field private static final MAX_PHONEBOOK_SIZE:I = 0x4000

.field private static final MISSED_CALL_WHERE:Ljava/lang/String; = "type=3"

.field private static final OUTGOING_CALL_WHERE:Ljava/lang/String; = "type=2"

.field private static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothAtPhonebook"

.field private static final VISIBLE_PHONEBOOK_WHERE:Ljava/lang/String; = "in_visible_group=1"


# instance fields
.field final TYPE_READ:I

.field final TYPE_SET:I

.field final TYPE_TEST:I

.field final TYPE_UNKNOWN:I

.field private mCharacterSet:Ljava/lang/String;

.field private mCheckingAccessPermission:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCpbrIndex1:I

.field private mCpbrIndex2:I

.field private mCurrentPhonebook:Ljava/lang/String;

.field private final mPhonebooks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;",
            ">;"
        }
    .end annotation
.end field

.field private mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/hfp/AtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/hfp/AtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 6
    .parameter "context"
    .parameter "headsetState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    .line 94
    iput v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->TYPE_UNKNOWN:I

    .line 95
    iput v5, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->TYPE_READ:I

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->TYPE_SET:I

    .line 97
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->TYPE_TEST:I

    .line 100
    iput-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    .line 102
    iput-object p2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 103
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "DC"

    new-instance v2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "RC"

    new-instance v2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "MC"

    new-instance v2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "ME"

    new-instance v2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "ME"

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    .line 110
    iput v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    iput v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 111
    iput-boolean v5, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 112
    return-void
.end method

.method private checkAccessPermission(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "remoteDevice"

    .prologue
    .line 558
    const-string v2, "checkAccessPermission"

    invoke-static {v2}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z

    move-result v1

    .line 561
    .local v1, trust:Z
    if-eqz v1, :cond_0

    .line 562
    const/4 v2, 0x1

    .line 574
    :goto_0
    return v2

    .line 565
    :cond_0
    const-string v2, "checkAccessPermission - ACTION_CONNECTION_ACCESS_REQUEST"

    invoke-static {v2}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    const-string v2, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 570
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 573
    iget-object v2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 574
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getMaxPhoneBookSize(I)I
    .locals 2
    .parameter "currSize"

    .prologue
    const/16 v0, 0x64

    .line 430
    monitor-enter p0

    if-ge p1, v0, :cond_0

    .line 431
    .local v0, maxSize:I
    :goto_0
    :try_start_0
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    .line 432
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->roundUpToPowerOfTwo(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .end local v0           #maxSize:I
    :cond_0
    move v0, p1

    .line 430
    goto :goto_0

    .restart local v0       #maxSize:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static getPhoneType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 578
    packed-switch p0, :pswitch_data_0

    .line 591
    const-string v0, "O"

    :goto_0
    return-object v0

    .line 580
    :pswitch_0
    const-string v0, "H"

    goto :goto_0

    .line 582
    :pswitch_1
    const-string v0, "M"

    goto :goto_0

    .line 584
    :pswitch_2
    const-string v0, "W"

    goto :goto_0

    .line 587
    :pswitch_3
    const-string v0, "F"

    goto :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    .locals 3
    .parameter "pb"
    .parameter "force"

    .prologue
    const/4 v1, 0x0

    .line 356
    monitor-enter p0

    if-nez p1, :cond_1

    move-object v0, v1

    .line 369
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 359
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    .line 360
    .local v0, pbr:Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    if-nez v0, :cond_2

    .line 361
    new-instance v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    .end local v0           #pbr:Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$1;)V

    .line 363
    .restart local v0       #pbr:Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    :cond_2
    if-nez p2, :cond_3

    iget-object v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 364
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->queryPhonebook(Ljava/lang/String;Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 365
    goto :goto_0

    .line 356
    .end local v0           #pbr:Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 596
    const-string v0, "BluetoothAtPhonebook"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return-void
.end method

.method private declared-synchronized queryPhonebook(Ljava/lang/String;Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;)Z
    .locals 8
    .parameter "pb"
    .parameter "pbr"

    .prologue
    const/4 v7, 0x0

    .line 374
    monitor-enter p0

    const/4 v6, 0x1

    .line 376
    .local v6, ancillaryPhonebook:Z
    :try_start_0
    const-string v0, "ME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    const/4 v6, 0x0

    .line 378
    const-string v3, "in_visible_group=1"

    .line 389
    .local v3, where:Ljava/lang/String;
    :goto_0
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 394
    :cond_0
    if-eqz v6, :cond_6

    .line 395
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/hfp/AtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 16384"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 398
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    move v0, v7

    .line 413
    .end local v3           #where:Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return v0

    .line 379
    :cond_1
    :try_start_1
    const-string v0, "DC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    const-string v3, "type=2"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0

    .line 381
    .end local v3           #where:Ljava/lang/String;
    :cond_2
    const-string v0, "RC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    const-string v3, "type=1"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0

    .line 383
    .end local v3           #where:Ljava/lang/String;
    :cond_3
    const-string v0, "MC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 384
    const-string v3, "type=3"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0

    .end local v3           #where:Ljava/lang/String;
    :cond_4
    move v0, v7

    .line 386
    goto :goto_1

    .line 400
    .restart local v3       #where:Ljava/lang/String;
    :cond_5
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberColumn:I

    .line 401
    const/4 v0, -0x1

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->typeColumn:I

    .line 402
    const/4 v0, -0x1

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I

    .line 412
    :goto_2
    const-string v0, "BluetoothAtPhonebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshed phonebook "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " results"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v0, 0x1

    goto :goto_1

    .line 404
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/hfp/AtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1 LIMIT 16384"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 406
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_7

    move v0, v7

    goto :goto_1

    .line 408
    :cond_7
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberColumn:I

    .line 409
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "data2"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->typeColumn:I

    .line 410
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 374
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private roundUpToPowerOfTwo(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 436
    shr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    .line 437
    shr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    .line 438
    shr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    .line 439
    shr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    .line 440
    shr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    .line 441
    add-int/lit8 v0, p1, 0x1

    return v0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 116
    return-void
.end method

.method public getCheckingAccessPermission()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    return v0
.end method

.method public getLastDialledNumber()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 120
    new-array v2, v9, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "number"

    aput-object v1, v2, v0

    .line 121
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type=2"

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 124
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 134
    :goto_0
    return-object v4

    .line 126
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v9, :cond_1

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 130
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 131
    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 132
    .local v6, column:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, number:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v4, v8

    .line 134
    goto :goto_0
.end method

.method public handleCpbrCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 15
    .parameter "atString"
    .parameter "type"
    .parameter "remoteDevice"

    .prologue
    .line 255
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleCpbrCommand - atString = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 256
    const/4 v4, 0x0

    .line 257
    .local v4, atCommandResult:I
    const/4 v2, -0x1

    .line 258
    .local v2, atCommandErrorCode:I
    const/4 v3, 0x0

    .line 259
    .local v3, atCommandResponse:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 344
    const-string v12, "handleCpbrCommand - invalid chars"

    invoke-static {v12}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 345
    const/16 v2, 0x19

    .line 346
    iget-object v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v12, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 266
    :pswitch_0
    const-string v12, "handleCpbrCommand - test command"

    invoke-static {v12}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 268
    const-string v12, "SM"

    iget-object v13, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 269
    const/4 v11, 0x0

    .line 282
    .local v11, size:I
    :goto_1
    if-nez v11, :cond_1

    .line 284
    const/4 v11, 0x1

    .line 286
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "+CPBR: (1-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "),30,30"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    const/4 v4, 0x1

    .line 288
    if-eqz v3, :cond_2

    .line 289
    iget-object v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v12, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseStringNative(Ljava/lang/String;)Z

    .line 290
    :cond_2
    iget-object v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v12, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    goto :goto_0

    .line 271
    .end local v11           #size:I
    :cond_3
    iget-object v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object v10

    .line 272
    .local v10, pbr:Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    if-nez v10, :cond_4

    .line 273
    const/4 v2, 0x3

    .line 274
    iget-object v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v12, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    goto :goto_0

    .line 277
    :cond_4
    iget-object v12, v10, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 278
    .restart local v11       #size:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleCpbrCommand - size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 279
    iget-object v12, v10, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 280
    const/4 v12, 0x0

    iput-object v12, v10, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    goto :goto_1

    .line 297
    .end local v10           #pbr:Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    .end local v11           #size:I
    :pswitch_1
    const-string v12, "handleCpbrCommand - set/read command"

    invoke-static {v12}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 298
    iget v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    .line 300
    const/4 v2, 0x3

    .line 301
    iget-object v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v12, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    goto :goto_0

    .line 307
    :cond_5
    const-string v12, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_6

    .line 308
    iget-object v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v12, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    goto/16 :goto_0

    .line 311
    :cond_6
    const-string v12, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v1, v12, v13

    .line 312
    .local v1, atCommand:Ljava/lang/String;
    const-string v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 313
    .local v9, indices:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    array-length v12, v9

    if-ge v6, v12, :cond_7

    .line 315
    aget-object v12, v9, v6

    const/16 v13, 0x3b

    const/16 v14, 0x20

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v6

    .line 313
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 317
    :cond_7
    const/4 v12, 0x0

    :try_start_0
    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 318
    .local v7, index1:I
    array-length v12, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    .line 319
    move v8, v7

    .line 329
    .local v8, index2:I
    :goto_3
    iput v7, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 330
    iput v8, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    .line 331
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 333
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->checkAccessPermission(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 334
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 335
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/AtPhonebook;->processCpbrCommand()I

    move-result v4

    .line 336
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    iput v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 337
    iget-object v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v12, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    goto/16 :goto_0

    .line 321
    .end local v8           #index2:I
    :cond_8
    const/4 v12, 0x1

    :try_start_1
    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .restart local v8       #index2:I
    goto :goto_3

    .line 323
    .end local v7           #index1:I
    .end local v8           #index2:I
    :catch_0
    move-exception v5

    .line 324
    .local v5, e:Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleCpbrCommand - exception - invalid chars: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 325
    const/16 v2, 0x19

    .line 326
    iget-object v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v12, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    goto/16 :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleCpbsCommand(Ljava/lang/String;I)V
    .locals 11
    .parameter "atString"
    .parameter "type"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 196
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCpbsCommand - atString = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 197
    const/4 v3, 0x0

    .line 198
    .local v3, atCommandResult:I
    const/4 v1, -0x1

    .line 199
    .local v1, atCommandErrorCode:I
    const/4 v2, 0x0

    .line 200
    .local v2, atCommandResponse:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 246
    const-string v7, "handleCpbsCommand - invalid chars"

    invoke-static {v7}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 247
    const/16 v1, 0x19

    .line 249
    :goto_0
    if-eqz v2, :cond_0

    .line 250
    iget-object v7, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v7, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseStringNative(Ljava/lang/String;)Z

    .line 251
    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v7, v3, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    .line 252
    return-void

    .line 202
    :pswitch_0
    const-string v7, "handleCpbsCommand - read command"

    invoke-static {v7}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 204
    const-string v7, "SM"

    iget-object v8, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 205
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+CPBS: \"SM\",0,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfp/AtPhonebook;->getMaxPhoneBookSize(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    const/4 v3, 0x1

    .line 207
    goto :goto_0

    .line 209
    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-direct {p0, v7, v9}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object v5

    .line 210
    .local v5, pbr:Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    if-nez v5, :cond_2

    .line 211
    const/4 v1, 0x4

    .line 212
    goto :goto_0

    .line 214
    :cond_2
    iget-object v7, v5, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 215
    .local v6, size:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+CPBS: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v6}, Lcom/android/bluetooth/hfp/AtPhonebook;->getMaxPhoneBookSize(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    iget-object v7, v5, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 217
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 218
    const/4 v3, 0x1

    .line 219
    goto :goto_0

    .line 221
    .end local v5           #pbr:Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    .end local v6           #size:I
    :pswitch_1
    const-string v7, "handleCpbsCommand - test command"

    invoke-static {v7}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 222
    const-string v2, "+CPBS: (\"ME\",\"SM\",\"DC\",\"RC\",\"MC\")"

    .line 223
    const/4 v3, 0x1

    .line 224
    goto/16 :goto_0

    .line 226
    :pswitch_2
    const-string v7, "handleCpbsCommand - set command"

    invoke-static {v7}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 227
    const-string v7, "="

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, args:[Ljava/lang/String;
    array-length v7, v0

    const/4 v8, 0x2

    if-lt v7, v8, :cond_3

    aget-object v7, v0, v9

    instance-of v7, v7, Ljava/lang/String;

    if-nez v7, :cond_4

    .line 230
    :cond_3
    const/4 v1, 0x4

    .line 231
    goto/16 :goto_0

    .line 233
    :cond_4
    aget-object v7, v0, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, pb:Ljava/lang/String;
    :goto_1
    const-string v7, "\""

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 235
    :cond_5
    :goto_2
    const-string v7, "\""

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 236
    :cond_6
    invoke-direct {p0, v4, v10}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object v7

    if-nez v7, :cond_7

    const-string v7, "SM"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 238
    const/4 v1, 0x3

    .line 239
    goto/16 :goto_0

    .line 241
    :cond_7
    iput-object v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    .line 242
    const/4 v3, 0x1

    .line 243
    goto/16 :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleCscsCommand(Ljava/lang/String;I)V
    .locals 8
    .parameter "atString"
    .parameter "type"

    .prologue
    const/4 v7, 0x1

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCscsCommand - atString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 153
    const/4 v3, 0x0

    .line 154
    .local v3, atCommandResult:I
    const/4 v1, -0x1

    .line 155
    .local v1, atCommandErrorCode:I
    const/4 v2, 0x0

    .line 156
    .local v2, atCommandResponse:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 186
    const-string v5, "handleCscsCommand - Invalid chars"

    invoke-static {v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 187
    const/16 v1, 0x19

    .line 189
    :goto_0
    if-eqz v2, :cond_0

    .line 190
    iget-object v5, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v5, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseStringNative(Ljava/lang/String;)Z

    .line 191
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v5, v3, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    .line 192
    return-void

    .line 158
    :pswitch_0
    const-string v5, "handleCscsCommand - Read Command"

    invoke-static {v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+CSCS: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    const/4 v3, 0x1

    .line 161
    goto :goto_0

    .line 163
    :pswitch_1
    const-string v5, "handleCscsCommand - Test Command"

    invoke-static {v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 164
    const-string v2, "+CSCS: (\"UTF-8\",\"IRA\",\"GSM\")"

    .line 165
    const/4 v3, 0x1

    .line 166
    goto :goto_0

    .line 168
    :pswitch_2
    const-string v5, "handleCscsCommand - Set Command"

    invoke-static {v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 169
    const-string v5, "="

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, args:[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    aget-object v5, v0, v7

    instance-of v5, v5, Ljava/lang/String;

    if-nez v5, :cond_2

    .line 171
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v5, v3, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    goto :goto_0

    .line 174
    :cond_2
    const-string v5, "="

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v7

    .line 175
    .local v4, characterSet:Ljava/lang/String;
    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 176
    const-string v5, "GSM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "IRA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "UTF8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 178
    :cond_3
    iput-object v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 179
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 181
    :cond_4
    const/4 v1, 0x4

    .line 183
    goto/16 :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method processCpbrCommand()I
    .locals 22

    .prologue
    .line 447
    const-string v1, "processCpbrCommand"

    invoke-static {v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 448
    const/4 v9, 0x0

    .line 449
    .local v9, atCommandResult:I
    const/4 v7, -0x1

    .line 450
    .local v7, atCommandErrorCode:I
    const/4 v8, 0x0

    .line 451
    .local v8, atCommandResponse:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v20, response:Ljava/lang/StringBuilder;
    const-string v1, "SM"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    const/4 v9, 0x1

    move v10, v9

    .line 551
    .end local v9           #atCommandResult:I
    .local v10, atCommandResult:I
    :goto_0
    return v10

    .line 461
    .end local v10           #atCommandResult:I
    .restart local v9       #atCommandResult:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object v17

    .line 462
    .local v17, pbr:Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    if-nez v17, :cond_1

    .line 463
    const/4 v7, 0x3

    move v10, v9

    .line 464
    .end local v9           #atCommandResult:I
    .restart local v10       #atCommandResult:I
    goto :goto_0

    .line 471
    .end local v10           #atCommandResult:I
    .restart local v9       #atCommandResult:I
    :cond_1
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    if-lt v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gt v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 473
    :cond_2
    const/4 v9, 0x1

    move v10, v9

    .line 474
    .end local v9           #atCommandResult:I
    .restart local v10       #atCommandResult:I
    goto :goto_0

    .line 478
    .end local v10           #atCommandResult:I
    .restart local v9       #atCommandResult:I
    :cond_3
    const/4 v9, 0x1

    .line 479
    const/4 v12, -0x1

    .line 480
    .local v12, errorDetected:I
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCpbrIndex1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and mCpbrIndex2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .local v13, index:I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    if-gt v13, v1, :cond_d

    .line 483
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 484
    .local v16, number:Ljava/lang/String;
    const/4 v14, 0x0

    .line 485
    .local v14, name:Ljava/lang/String;
    const/16 v21, -0x1

    .line 486
    .local v21, type:I
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 494
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_5

    .line 495
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 496
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 497
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 499
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 506
    .end local v11           #c:Landroid/database/Cursor;
    :cond_5
    :goto_2
    if-nez v14, :cond_6

    const-string v14, ""

    .line 507
    :cond_6
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 508
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1c

    if-le v1, v2, :cond_7

    const/4 v1, 0x0

    const/16 v2, 0x1c

    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 510
    :cond_7
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->typeColumn:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 511
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->typeColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhoneType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 515
    :cond_8
    if-nez v16, :cond_9

    const-string v16, ""

    .line 516
    :cond_9
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v19

    .line 518
    .local v19, regionType:I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 519
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 520
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_a

    const/4 v1, 0x0

    const/16 v2, 0x1e

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 521
    :cond_a
    const-string v1, "-1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 523
    const-string v16, ""

    .line 524
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    const v2, 0x7f04000e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 529
    :cond_b
    const-string v1, ""

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    const-string v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 530
    invoke-static {v14}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v15

    .line 531
    .local v15, nameByte:[B
    if-nez v15, :cond_10

    .line 532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    const v2, 0x7f04000e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 538
    .end local v15           #nameByte:[B
    :cond_c
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CPBR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 539
    .local v18, record:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 540
    move-object/from16 v8, v18

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCpbrCommand - atCommandResponse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseStringNative(Ljava/lang/String;)Z

    .line 543
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_11

    .line 547
    .end local v14           #name:Ljava/lang/String;
    .end local v16           #number:Ljava/lang/String;
    .end local v18           #record:Ljava/lang/String;
    .end local v19           #regionType:I
    .end local v21           #type:I
    :cond_d
    if-eqz v17, :cond_e

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_e

    .line 548
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 549
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    :cond_e
    move v10, v9

    .line 551
    .end local v9           #atCommandResult:I
    .restart local v10       #atCommandResult:I
    goto/16 :goto_0

    .line 504
    .end local v10           #atCommandResult:I
    .restart local v9       #atCommandResult:I
    .restart local v14       #name:Ljava/lang/String;
    .restart local v16       #number:Ljava/lang/String;
    .restart local v21       #type:I
    :cond_f
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 534
    .restart local v15       #nameByte:[B
    .restart local v19       #regionType:I
    :cond_10
    new-instance v14, Ljava/lang/String;

    .end local v14           #name:Ljava/lang/String;
    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    .restart local v14       #name:Ljava/lang/String;
    goto/16 :goto_3

    .line 482
    .end local v15           #nameByte:[B
    .restart local v18       #record:Ljava/lang/String;
    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1
.end method

.method declared-synchronized resetAtState()V
    .locals 1

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 418
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    iput v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    monitor-exit p0

    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCheckingAccessPermission(Z)V
    .locals 0
    .parameter "checkAccessPermission"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 143
    return-void
.end method

.method public setCpbrIndex(I)V
    .locals 0
    .parameter "cpbrIndex"

    .prologue
    .line 146
    iput p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    iput p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 147
    return-void
.end method
