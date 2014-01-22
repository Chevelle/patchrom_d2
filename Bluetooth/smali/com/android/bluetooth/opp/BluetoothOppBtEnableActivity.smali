.class public Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothOppBtEnableActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, view:Landroid/view/View;
    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    .local v0, contentView:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f040012

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f040013

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 79
    packed-switch p2, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 81
    :pswitch_0
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v1

    .line 82
    .local v1, mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;
    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->enableBluetooth()V

    .line 83
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 85
    const v2, 0x7f040043

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, in:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->finish()V

    goto :goto_0

    .line 96
    .end local v0           #in:Landroid/content/Intent;
    .end local v1           #mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->finish()V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 59
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x1010355

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    .line 60
    const v1, 0x7f040011

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 61
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 62
    const v1, 0x7f040015

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 63
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 64
    const v1, 0x7f040014

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 65
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 66
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->setupAlert()V

    .line 67
    return-void
.end method
