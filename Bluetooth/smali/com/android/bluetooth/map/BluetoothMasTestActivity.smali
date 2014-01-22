.class public Lcom/android/bluetooth/map/BluetoothMasTestActivity;
.super Landroid/app/Activity;
.source "BluetoothMasTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final BLUETOOTH_OBEX_AUTHKEY_MAX_LENGTH:I = 0x10

.field private static final DIALOG_YES_NO_AUTH:I = 0x2

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
    .line 68
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mSessionKey:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mTimeout:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mAlwaysAllowedValue:Z

    .line 100
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasTestActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity$1;-><init>(Lcom/android/bluetooth/map/BluetoothMasTestActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 293
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasTestActivity$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity$3;-><init>(Lcom/android/bluetooth/map/BluetoothMasTestActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMasTestActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->onTimeout()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/bluetooth/map/BluetoothMasTestActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mAlwaysAllowedValue:Z

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->V:Z

    return v0
.end method

.method private createDisplayText(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, mRemoteName:Ljava/lang/String;
    const/4 v1, 0x0

    return-object v1
.end method

.method private createView(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x7f07

    const/4 v3, 0x1

    .line 152
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_0
    return-object v0

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->messageView:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->createDisplayText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mAlwaysAllowed:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mAlwaysAllowed:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMasTestActivity$2;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity$2;-><init>(Lcom/android/bluetooth/map/BluetoothMasTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 168
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mView:Landroid/view/View;

    goto :goto_0

    .line 170
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mView:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->messageView:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->createDisplayText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mView:Landroid/view/View;

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mKeyView:Landroid/widget/EditText;

    .line 174
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mKeyView:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 178
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mView:Landroid/view/View;

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getRemoteDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    const/4 v2, 0x0

    .line 135
    .local v2, remoteDeviceName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 136
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.bluetooth.map.bluetoothdevice"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const-string v3, "com.android.bluetooth.map.bluetoothdevice"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 138
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 143
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    if-eqz v2, :cond_1

    .end local v2           #remoteDeviceName:Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v2       #remoteDeviceName:Ljava/lang/String;
    :cond_1
    const v3, 0x7f040075

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private onNegative()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mCurrentDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 201
    const-string v0, "com.android.bluetooth.map.accessdisallowed"

    invoke-direct {p0, v0, v2, v2}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->finish()V

    .line 207
    return-void

    .line 202
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mCurrentDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 203
    const-string v0, "com.android.bluetooth.map.authcancelled"

    invoke-direct {p0, v0, v2, v2}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private onPositive()V
    .locals 3

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mTimeout:Z

    if-nez v0, :cond_0

    .line 186
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mCurrentDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 187
    const-string v0, "com.android.bluetooth.map.accessallowed"

    const-string v1, "com.android.bluetooth.map.alwaysallowed"

    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mAlwaysAllowedValue:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mTimeout:Z

    .line 196
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->finish()V

    .line 197
    return-void

    .line 189
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mCurrentDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 190
    const-string v0, "com.android.bluetooth.map.authresponse"

    const-string v1, "com.android.bluetooth.map.sessionkey"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mSessionKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private onTimeout()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method private sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "intentName"
    .parameter "extraName"
    .parameter "extraValue"

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.bluetooth"

    const-class v2, Lcom/android/bluetooth/map/BluetoothMasReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    if-eqz p2, :cond_0

    .line 215
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method private sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "intentName"
    .parameter "extraName"
    .parameter "extraValue"

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.bluetooth"

    const-class v2, Lcom/android/bluetooth/map/BluetoothMasReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    if-eqz p2, :cond_0

    .line 226
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    return-void
.end method

.method private showMapDialog(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 131
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 288
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 291
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
    .line 282
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 232
    packed-switch p2, :pswitch_data_0

    .line 246
    :goto_0
    return-void

    .line 234
    :pswitch_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mCurrentDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mSessionKey:Ljava/lang/String;

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->onPositive()V

    goto :goto_0

    .line 241
    :pswitch_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->onNegative()V

    goto :goto_0

    .line 232
    nop

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
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 114
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.bluetooth.map.accessrequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-direct {p0, v3}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->showMapDialog(I)V

    .line 117
    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mCurrentDialog:I

    .line 126
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.bluetooth.map.userconfirmtimeout"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    return-void

    .line 118
    :cond_0
    const-string v2, "com.android.bluetooth.map.authchall"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    invoke-direct {p0, v4}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->showMapDialog(I)V

    .line 120
    iput v4, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mCurrentDialog:I

    goto :goto_0

    .line 122
    :cond_1
    const-string v2, "BluetoothMasActivity"

    const-string v3, "Error: this activity may be started only with intent MAP_ACCESS_REQUEST"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 274
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 275
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 256
    const-string v0, "user_timeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mTimeout:Z

    .line 257
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState() mTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mTimeout:Z

    if-eqz v0, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->onTimeout()V

    .line 263
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 268
    const-string v0, "user_timeout"

    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMasTestActivity;->mTimeout:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 285
    return-void
.end method
