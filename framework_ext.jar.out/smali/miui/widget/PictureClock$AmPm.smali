.class Lmiui/widget/PictureClock$AmPm;
.super Ljava/lang/Object;
.source "PictureClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/PictureClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const v1, 0x60b0005

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/widget/PictureClock$AmPm;->mAmPm:Landroid/widget/TextView;

    .line 79
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lmiui/widget/PictureClock$AmPm;->mAmString:Ljava/lang/String;

    .line 81
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lmiui/widget/PictureClock$AmPm;->mPmString:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lmiui/widget/PictureClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 85
    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lmiui/widget/PictureClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :cond_0
    return-void

    .line 86
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
