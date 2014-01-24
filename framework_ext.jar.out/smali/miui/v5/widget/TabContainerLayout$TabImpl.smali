.class Lmiui/v5/widget/TabContainerLayout$TabImpl;
.super Landroid/app/ActionBar$Tab;
.source "TabContainerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/TabContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lmiui/v5/widget/TabContainerLayout;


# direct methods
.method public constructor <init>(Lmiui/v5/widget/TabContainerLayout;Landroid/app/ActionBar$TabListener;)V
    .locals 1
    .parameter
    .parameter "callback"

    .prologue
    .line 640
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->this$0:Lmiui/v5/widget/TabContainerLayout;

    invoke-direct {p0}, Landroid/app/ActionBar$Tab;-><init>()V

    .line 637
    const/4 v0, -0x1

    iput v0, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->mPosition:I

    .line 641
    iput-object p2, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    .line 642
    return-void
.end method

.method private update()V
    .locals 2

    .prologue
    .line 749
    iget v0, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 750
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->this$0:Lmiui/v5/widget/TabContainerLayout;

    iget v1, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lmiui/v5/widget/TabContainerLayout;->updateTabAt(I)V

    .line 752
    :cond_0
    return-void
.end method


# virtual methods
.method public getCallback()Landroid/app/ActionBar$TabListener;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->this$0:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v0, p0}, Lmiui/v5/widget/TabContainerLayout;->selectTab(Landroid/app/ActionBar$Tab;)Z

    .line 715
    return-void
.end method

.method public setContentDescription(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .parameter "resId"

    .prologue
    .line 719
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->this$0:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v0}, Lmiui/v5/widget/TabContainerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 0
    .parameter "contentDesc"

    .prologue
    .line 724
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 725
    return-object p0
.end method

.method public setCustomView(I)Landroid/app/ActionBar$Tab;
    .locals 2
    .parameter "layoutResId"

    .prologue
    .line 672
    sget-object v0, Lmiui/v5/widget/TabContainerLayout;->TAG:Ljava/lang/String;

    const-string v1, "custom is unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;
    .locals 2
    .parameter "view"

    .prologue
    .line 666
    sget-object v0, Lmiui/v5/widget/TabContainerLayout;->TAG:Ljava/lang/String;

    const-string v1, "custom is unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-object p0
.end method

.method public setIcon(I)Landroid/app/ActionBar$Tab;
    .locals 4
    .parameter "resId"

    .prologue
    const/4 v3, 0x0

    .line 695
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->this$0:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v1}, Lmiui/v5/widget/TabContainerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 696
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 697
    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    return-object v1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
    .locals 0
    .parameter "icon"

    .prologue
    .line 688
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 689
    invoke-direct {p0}, Lmiui/v5/widget/TabContainerLayout$TabImpl;->update()V

    .line 690
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 739
    iput p1, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->mPosition:I

    .line 740
    return-void
.end method

.method public setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0
    .parameter "listener"

    .prologue
    .line 744
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    .line 745
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
    .locals 0
    .parameter "tag"

    .prologue
    .line 651
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->mTag:Ljava/lang/Object;

    .line 652
    return-object p0
.end method

.method public setText(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .parameter "resId"

    .prologue
    .line 709
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->this$0:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v0}, Lmiui/v5/widget/TabContainerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 0
    .parameter "text"

    .prologue
    .line 702
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 703
    invoke-direct {p0}, Lmiui/v5/widget/TabContainerLayout$TabImpl;->update()V

    .line 704
    return-object p0
.end method
