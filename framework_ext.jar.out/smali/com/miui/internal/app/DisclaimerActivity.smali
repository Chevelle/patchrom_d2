.class public Lcom/miui/internal/app/DisclaimerActivity;
.super Landroid/app/Activity;
.source "DisclaimerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/DisclaimerActivity$IntentSpan;
    }
.end annotation


# static fields
.field public static final STOP_PACKAGE_NAME:Ljava/lang/String; = "stop_package_name"

.field private static mPredefinePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sPredefinedPackage:[Ljava/lang/String;


# instance fields
.field public mStopPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 126
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "com.miui.player"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "com.xiaomi.market"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "com.miui.backup"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "com.android.updater"

    aput-object v6, v4, v5

    sput-object v4, Lcom/miui/internal/app/DisclaimerActivity;->sPredefinedPackage:[Ljava/lang/String;

    .line 133
    new-instance v4, Ljava/util/HashSet;

    sget-object v5, Lcom/miui/internal/app/DisclaimerActivity;->sPredefinedPackage:[Ljava/lang/String;

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    sput-object v4, Lcom/miui/internal/app/DisclaimerActivity;->mPredefinePackages:Ljava/util/HashSet;

    .line 135
    sget-object v0, Lcom/miui/internal/app/DisclaimerActivity;->sPredefinedPackage:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 136
    .local v3, packageName:Ljava/lang/String;
    sget-object v4, Lcom/miui/internal/app/DisclaimerActivity;->mPredefinePackages:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    return-void
.end method

.method private forceStopPackage()V
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Lcom/miui/internal/app/DisclaimerActivity;->mStopPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/DisclaimerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 120
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/miui/internal/app/DisclaimerActivity;->mStopPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 122
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_0
    return-void
.end method

.method public static requestApproval(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/miui/internal/app/DisclaimerActivity;->mPredefinePackages:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "confirm_miui_disclaimer"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    move v0, v1

    .line 149
    :cond_1
    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/DisclaimerActivity;->setResult(I)V

    .line 78
    invoke-direct {p0}, Lcom/miui/internal/app/DisclaimerActivity;->forceStopPackage()V

    .line 79
    invoke-virtual {p0}, Lcom/miui/internal/app/DisclaimerActivity;->finish()V

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 81
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 106
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/miui/internal/app/DisclaimerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "confirm_miui_disclaimer"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    invoke-virtual {p0, v2}, Lcom/miui/internal/app/DisclaimerActivity;->setResult(I)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/miui/internal/app/DisclaimerActivity;->forceStopPackage()V

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/DisclaimerActivity;->setResult(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/16 v13, 0x21

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/internal/app/DisclaimerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "stop_package_name"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/internal/app/DisclaimerActivity;->mStopPackageName:Ljava/lang/String;

    .line 44
    const v9, 0x60c01f2

    invoke-virtual {p0, v9}, Lcom/miui/internal/app/DisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, s1:Ljava/lang/String;
    const v9, 0x60c01f3

    invoke-virtual {p0, v9}, Lcom/miui/internal/app/DisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, s2:Ljava/lang/String;
    const v9, 0x60c01f4

    invoke-virtual {p0, v9}, Lcom/miui/internal/app/DisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, s3:Ljava/lang/String;
    const v9, 0x60c01f5

    invoke-virtual {p0, v9}, Lcom/miui/internal/app/DisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, s4:Ljava/lang/String;
    const v9, 0x60c01f6

    invoke-virtual {p0, v9}, Lcom/miui/internal/app/DisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, s5:Ljava/lang/String;
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 51
    .local v8, ss:Landroid/text/SpannableStringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 52
    new-instance v9, Lcom/miui/internal/app/DisclaimerActivity$IntentSpan;

    sget-object v10, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    invoke-direct {v9, p0, v10}, Lcom/miui/internal/app/DisclaimerActivity$IntentSpan;-><init>(Lcom/miui/internal/app/DisclaimerActivity;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v8, v9, v10, v11, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 54
    new-instance v9, Lcom/miui/internal/app/DisclaimerActivity$IntentSpan;

    sget-object v10, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    invoke-direct {v9, p0, v10}, Lcom/miui/internal/app/DisclaimerActivity$IntentSpan;-><init>(Lcom/miui/internal/app/DisclaimerActivity;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v8, v9, v10, v11, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v9, 0x104000a

    invoke-virtual {v0, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    const/high16 v9, 0x104

    invoke-virtual {v0, v9, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 63
    .local v1, dialog:Landroid/app/Dialog;
    new-instance v9, Lcom/miui/internal/app/DisclaimerActivity$1;

    invoke-direct {v9, p0}, Lcom/miui/internal/app/DisclaimerActivity$1;-><init>(Lcom/miui/internal/app/DisclaimerActivity;)V

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const v10, 0x102000b

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 71
    .local v2, messageText:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 72
    return-void
.end method
