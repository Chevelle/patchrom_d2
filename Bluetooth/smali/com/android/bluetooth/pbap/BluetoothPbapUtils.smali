.class public Lcom/android/bluetooth/pbap/BluetoothPbapUtils;
.super Ljava/lang/Object;
.source "BluetoothPbapUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterUtils"

.field private static final V:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createProfileVCard(Landroid/content/Context;IJ)Ljava/lang/String;
    .locals 11
    .parameter "ctx"
    .parameter "vcardType"
    .parameter "filter"

    .prologue
    .line 67
    const/4 v7, 0x0

    .line 68
    .local v7, composer:Lcom/android/vcard/VCardComposer;
    const/4 v9, 0x0

    .line 70
    .local v9, vcard:Ljava/lang/String;
    :try_start_0
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardComposer;

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardComposer;-><init>(Landroid/content/Context;IJZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 71
    .end local v7           #composer:Lcom/android/vcard/VCardComposer;
    .local v0, composer:Lcom/android/vcard/VCardComposer;
    :try_start_1
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 85
    :goto_0
    if-eqz v0, :cond_0

    .line 87
    :try_start_2
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 92
    :cond_0
    :goto_1
    return-object v9

    .line 78
    :cond_1
    :try_start_3
    const-string v1, "FilterUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create profile vcard. Error initializing composer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v8

    .line 83
    .local v8, t:Ljava/lang/Throwable;
    :goto_2
    const-string v1, "FilterUtils"

    const-string v2, "Unable to create profile vcard."

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 88
    .end local v8           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    goto :goto_1

    .line 82
    .end local v0           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v7       #composer:Lcom/android/vcard/VCardComposer;
    :catch_2
    move-exception v8

    move-object v0, v7

    .end local v7           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v0       #composer:Lcom/android/vcard/VCardComposer;
    goto :goto_2
.end method

.method public static createProfileVCardFile(Ljava/io/File;Landroid/content/Context;)Z
    .locals 9
    .parameter "file"
    .parameter "context"

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, is:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 100
    .local v2, os:Ljava/io/FileOutputStream;
    const/4 v4, 0x1

    .line 102
    .local v4, success:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Profile;->CONTENT_VCARD_URI:Landroid/net/Uri;

    const-string v8, "r"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 105
    .local v0, fd:Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_0

    .line 107
    const/4 v6, 0x0

    .line 118
    .end local v0           #fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return v6

    .line 109
    .restart local v0       #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v1

    .line 110
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v2           #os:Ljava/io/FileOutputStream;
    .local v3, os:Ljava/io/FileOutputStream;
    const/16 v6, 0xc8

    :try_start_1
    invoke-static {v1, v3, v6}, Lcom/android/bluetooth/Utils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 116
    .end local v0           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :goto_1
    invoke-static {v1}, Lcom/android/bluetooth/Utils;->safeCloseStream(Ljava/io/InputStream;)V

    .line 117
    invoke-static {v2}, Lcom/android/bluetooth/Utils;->safeCloseStream(Ljava/io/OutputStream;)V

    move v6, v4

    .line 118
    goto :goto_0

    .line 112
    :catch_0
    move-exception v5

    .line 113
    .local v5, t:Ljava/lang/Throwable;
    :goto_2
    const-string v6, "FilterUtils"

    const-string v7, "Unable to create default contact vcard file"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    const/4 v4, 0x0

    goto :goto_1

    .line 112
    .end local v2           #os:Ljava/io/FileOutputStream;
    .end local v5           #t:Ljava/lang/Throwable;
    .restart local v0       #fd:Landroid/content/res/AssetFileDescriptor;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static getProfileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 57
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 58
    .local v7, ownerName:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 61
    :cond_0
    if-eqz v6, :cond_1

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_1
    return-object v7
.end method

.method public static isProfileSet(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_VCARD_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 46
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 47
    .local v7, isSet:Z
    :goto_0
    if-eqz v6, :cond_0

    .line 48
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_0
    return v7

    .end local v7           #isSet:Z
    :cond_1
    move v7, v8

    .line 46
    goto :goto_0
.end method
