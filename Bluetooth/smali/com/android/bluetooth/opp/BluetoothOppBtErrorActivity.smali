.class public Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothOppBtErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mErrorContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, view:Landroid/view/View;
    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    .local v0, contentView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->mErrorContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 80
    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, mErrorTitle:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->mErrorContent:Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 64
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x1010355

    iput v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    .line 65
    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 67
    const v3, 0x7f04003d

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 68
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 69
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;->setupAlert()V

    .line 70
    return-void
.end method
