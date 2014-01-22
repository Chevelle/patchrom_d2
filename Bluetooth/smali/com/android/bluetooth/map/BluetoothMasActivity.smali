.class public Lcom/android/bluetooth/map/BluetoothMasActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothMasActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final BLUETOOTH_OBEX_AUTHKEY_MAX_LENGTH:I = 0x10

.field private static final DIALOG_YES_NO_CONNECT:I = 0x1

.field private static final DISMISS_TIMEOUT_DIALOG:I = 0x0

.field private static final DISMISS_TIMEOUT_DIALOG_VALUE:I = 0x7d0

.field private static final KEY_USER_TIMEOUT:Ljava/lang/String; = "user_timeout"

.field private static final TAG:Ljava/lang/String; = "BluetoothMasActivity"

.field private static final V:Z


# instance fields
.field private mAlwaysAllowed:Landroid/widget/CheckBox;

.field private mAlwaysAllowedValue:Z

.field private mCurrentDialog:I

.field private mKeyView:Landroid/widget/EditText;

.field private mOkButton:Landroid/widget/Button;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSessionKey:Ljava/lang/String;

.field private mTimeout:Z

.field private final mTimeoutHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private messageView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMasActivity;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mSessionKey:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mTimeout:Z

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mAlwaysAllowedValue:Z

    .line 97
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMasActivity$1;-><init>(Lcom/android/bluetooth/map/BluetoothMasActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 304
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasActivity$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMasActivity$3;-><init>(Lcom/android/bluetooth/map/BluetoothMasActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMasActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasActivity;->onTimeout()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/bluetooth/map/BluetoothMasActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mAlwaysAllowedValue:Z

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasActivity;->V:Z

    return v0
.end method

.method private createDisplayText(I)Ljava/lang/String;
    .locals 5
    .parameter "id"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasActivity;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, mRemoteName:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 165
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 161
    :pswitch_0
    const v2, 0x7f040001

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, mMessage1:Ljava/lang/String;
    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createView(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 170
    packed-switch p1, :pswitch_data_0

    .line 188
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 173
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mView:Landroid/view/View;

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->messageView:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasActivity;->createDisplayText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mAlwaysAllowed:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mAlwaysAllowed:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMasActivity$2;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/map/BluetoothMasActivity$2;-><init>(Lcom/android/bluetooth/map/BluetoothMasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mView:Landroid/view/View;

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getRemoteDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, remoteDeviceName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 147
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.bluetooth.map.bluetoothdevice"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    const-string v3, "com.android.bluetooth.map.bluetoothdevice"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 149
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 154
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    if-eqz v2, :cond_1

    .end local v2           #remoteDeviceName:Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v2       #remoteDeviceName:Ljava/lang/String;
    :cond_1
    const v3, 0x7f040075

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/map/BluetoothMasActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private onNegative()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mCurrentDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 205
    const-string v0, "com.android.bluetooth.map.accessdisallowed"

    invoke-direct {p0, v0, v2, v2}, Lcom/android/bluetooth/map/BluetoothMasActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasActivity;->finish()V

    .line 208
    return-void
.end method

.method private onPositive()V
    .locals 3

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mTimeout:Z

    if-nez v0, :cond_0

    .line 194
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mCurrentDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 195
    const-string v0, "com.android.bluetooth.map.accessallowed"

    const-string v1, "com.android.bluetooth.map.alwaysallowed"

    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mAlwaysAllowedValue:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 199
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mTimeout:Z

    .line 200
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasActivity;->finish()V

    .line 201
    return-void
.end method

.method private onTimeout()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 251
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mTimeout:Z

    .line 252
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mCurrentDialog:I

    if-ne v0, v2, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->messageView:Landroid/widget/TextView;

    const v1, 0x7f04006b

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasActivity;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mAlwaysAllowed:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mAlwaysAllowed:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->clearFocus()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 264
    return-void
.end method

.method private sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "intentName"
    .parameter "extraName"
    .parameter "extraValue"

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.bluetooth"

    const-class v2, Lcom/android/bluetooth/map/BluetoothMasReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    if-eqz p2, :cond_0

    .line 216
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method private sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "intentName"
    .parameter "extraName"
    .parameter "extraValue"

    .prologue
    .line 223
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.bluetooth"

    const-class v3, Lcom/android/bluetooth/map/BluetoothMasReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    if-eqz p2, :cond_0

    .line 227
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 230
    .local v0, i:Landroid/content/Intent;
    const-string v2, "com.android.bluetooth.map.bluetoothdevice"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    const-string v2, "com.android.bluetooth.map.bluetoothdevice"

    const-string v3, "com.android.bluetooth.map.bluetoothdevice"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMasActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method private showMapDialog(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 127
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    packed-switch p1, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 129
    :pswitch_0
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 130
    const v1, 0x7f040002

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMasActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 131
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMasActivity;->createView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 132
    const v1, 0x1040013

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMasActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 133
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 134
    const v1, 0x1040009

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMasActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 135
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 136
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mOkButton:Landroid/widget/Button;

    .line 137
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasActivity;->setupAlert()V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 300
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 303
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 294
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 237
    packed-switch p2, :pswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 239
    :pswitch_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasActivity;->onPositive()V

    goto :goto_0

    .line 243
    :pswitch_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasActivity;->onNegative()V

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 109
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 111
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.bluetooth.map.accessrequest"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-direct {p0, v3}, Lcom/android/bluetooth/map/BluetoothMasActivity;->showMapDialog(I)V

    .line 114
    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mCurrentDialog:I

    .line 121
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.bluetooth.map.userconfirmtimeout"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    return-void

    .line 117
    :cond_0
    const-string v2, "BluetoothMasActivity"

    const-string v3, "Error: this activity may be started only with intent MAP_ACCESS_REQUEST"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 286
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 287
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 269
    const-string v0, "user_timeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mTimeout:Z

    .line 270
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasActivity;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState() mTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mTimeout:Z

    if-eqz v0, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasActivity;->onTimeout()V

    .line 275
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 280
    const-string v0, "user_timeout"

    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMasActivity;->mTimeout:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 297
    return-void
.end method
