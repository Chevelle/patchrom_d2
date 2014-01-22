.class public Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;
.super Landroid/app/Activity;
.source "BluetoothOppLauncherActivity.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothLauncherActivity"

.field private static final V:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->launchDevicePicker()V

    return-void
.end method

.method private creatFileForSharedContent(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "shareContent"

    .prologue
    .line 243
    if-nez p2, :cond_1

    .line 244
    const/4 v4, 0x0

    .line 284
    :cond_0
    :goto_0
    return-object v4

    .line 247
    :cond_1
    const/4 v4, 0x0

    .line 248
    .local v4, fileUri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 250
    .local v5, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f040066

    invoke-virtual {p0, v8}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".html"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 253
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, uri:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/></head><body><a href=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</a></p>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</body></html>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, content:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 259
    .local v0, byteBuff:[B
    const/4 v7, 0x0

    invoke-virtual {p1, v3, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 260
    if-eqz v5, :cond_2

    .line 261
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v5, v0, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 262
    new-instance v7, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 263
    if-eqz v4, :cond_2

    .line 264
    const-string v7, "BluetoothLauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Created one file for shared content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 277
    :cond_2
    if-eqz v5, :cond_0

    .line 278
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 280
    :catch_0
    move-exception v2

    .line 281
    .end local v0           #byteBuff:[B
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v6           #uri:Ljava/lang/String;
    .local v2, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 268
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 269
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v7, "BluetoothLauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    if-eqz v5, :cond_0

    .line 278
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 280
    :catch_2
    move-exception v2

    goto :goto_1

    .line 271
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 272
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    const-string v7, "BluetoothLauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 277
    if-eqz v5, :cond_0

    .line 278
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 280
    :catch_4
    move-exception v2

    goto :goto_1

    .line 273
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 274
    .local v2, e:Ljava/lang/Exception;
    :try_start_6
    const-string v7, "BluetoothLauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 277
    if-eqz v5, :cond_0

    .line 278
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 280
    :catch_6
    move-exception v2

    goto :goto_1

    .line 276
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 277
    if-eqz v5, :cond_3

    .line 278
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 276
    :cond_3
    :goto_2
    throw v7

    .line 280
    :catch_7
    move-exception v2

    .line 281
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private final isBluetoothAllowed()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 211
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 214
    .local v5, resolver:Landroid/content/ContentResolver;
    const-string v8, "airplane_mode_on"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_1

    move v2, v6

    .line 216
    .local v2, isAirplaneModeOn:Z
    :goto_0
    if-nez v2, :cond_2

    .line 239
    :cond_0
    :goto_1
    return v6

    .end local v2           #isAirplaneModeOn:Z
    :cond_1
    move v2, v7

    .line 214
    goto :goto_0

    .line 221
    .restart local v2       #isAirplaneModeOn:Z
    :cond_2
    const-string v8, "airplane_mode_radios"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-nez v0, :cond_3

    move v3, v6

    .line 225
    .local v3, isAirplaneSensitive:Z
    :goto_2
    if-eqz v3, :cond_0

    .line 230
    const-string v8, "airplane_mode_toggleable_radios"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, airplaneModeToggleableRadios:Ljava/lang/String;
    if-nez v1, :cond_4

    move v4, v7

    .line 234
    .local v4, isAirplaneToggleable:Z
    :goto_3
    if-nez v4, :cond_0

    move v6, v7

    .line 239
    goto :goto_1

    .line 223
    .end local v1           #airplaneModeToggleableRadios:Ljava/lang/String;
    .end local v3           #isAirplaneSensitive:Z
    .end local v4           #isAirplaneToggleable:Z
    :cond_3
    const-string v8, "bluetooth"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_2

    .line 232
    .restart local v1       #airplaneModeToggleableRadios:Ljava/lang/String;
    .restart local v3       #isAirplaneSensitive:Z
    :cond_4
    const-string v8, "bluetooth"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_3
.end method

.method private final launchDevicePicker()V
    .locals 4

    .prologue
    .line 189
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v0, in:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    .end local v0           #in:Landroid/content/Intent;
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, in1:Landroid/content/Intent;
    const/high16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    const-string v3, "com.android.bluetooth"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 69
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, action:Ljava/lang/String;
    const-string v12, "android.intent.action.SEND"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->isBluetoothAllowed()Z

    move-result v12

    if-nez v12, :cond_2

    .line 74
    new-instance v3, Landroid/content/Intent;

    const-class v12, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    invoke-direct {v3, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v3, in:Landroid/content/Intent;
    const/high16 v12, 0x1000

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    const-string v12, "title"

    const v13, 0x7f04000f

    invoke-virtual {p0, v13}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v12, "content"

    const v13, 0x7f040010

    invoke-virtual {p0, v13}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 179
    .end local v3           #in:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    const-string v12, "android.intent.action.SEND"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 90
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, type:Ljava/lang/String;
    const-string v12, "android.intent.extra.STREAM"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 92
    .local v7, stream:Landroid/net/Uri;
    const-string v12, "android.intent.extra.TEXT"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 98
    .local v1, extra_text:Ljava/lang/CharSequence;
    if-eqz v7, :cond_3

    if-eqz v9, :cond_3

    .line 103
    new-instance v8, Ljava/lang/Thread;

    new-instance v12, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;

    invoke-direct {v12, p0, v9, v7}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v8, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    .local v8, t:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 114
    .end local v8           #t:Ljava/lang/Thread;
    :cond_3
    if-eqz v1, :cond_5

    if-eqz v9, :cond_5

    .line 117
    invoke-direct {p0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->creatFileForSharedContent(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/net/Uri;

    move-result-object v2

    .line 118
    .local v2, fileUri:Landroid/net/Uri;
    if-eqz v2, :cond_4

    .line 119
    new-instance v8, Ljava/lang/Thread;

    new-instance v12, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;

    invoke-direct {v12, p0, v9, v2}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v8, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    .restart local v8       #t:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 132
    .end local v8           #t:Ljava/lang/Thread;
    :cond_4
    const-string v12, "BluetoothLauncherActivity"

    const-string v13, "Error trying to do set text...File not created!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto :goto_0

    .line 137
    .end local v2           #fileUri:Landroid/net/Uri;
    :cond_5
    const-string v12, "BluetoothLauncherActivity"

    const-string v13, "type is null; or sending file URI is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto :goto_0

    .line 141
    .end local v1           #extra_text:Ljava/lang/CharSequence;
    .end local v7           #stream:Landroid/net/Uri;
    .end local v9           #type:Ljava/lang/String;
    :cond_6
    const-string v12, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 142
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, mimeType:Ljava/lang/String;
    const-string v12, "android.intent.extra.STREAM"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 144
    .local v11, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v6, :cond_7

    if-eqz v11, :cond_7

    .line 147
    new-instance v8, Ljava/lang/Thread;

    new-instance v12, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;

    invoke-direct {v12, p0, v6, v11}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;-><init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v8, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 157
    .restart local v8       #t:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 160
    .end local v8           #t:Ljava/lang/Thread;
    :cond_7
    const-string v12, "BluetoothLauncherActivity"

    const-string v13, "type is null; or sending files URIs are null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto/16 :goto_0

    .line 165
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v11           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_8
    const-string v12, "android.btopp.intent.action.OPEN"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 166
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 169
    .local v10, uri:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v5, intent1:Landroid/content/Intent;
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v12, "com.android.bluetooth"

    const-class v13, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto/16 :goto_0

    .line 176
    .end local v5           #intent1:Landroid/content/Intent;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_9
    const-string v12, "BluetoothLauncherActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unsupported action: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    goto/16 :goto_0
.end method
