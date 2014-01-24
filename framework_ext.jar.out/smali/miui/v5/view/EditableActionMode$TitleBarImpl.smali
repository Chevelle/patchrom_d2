.class Lmiui/v5/view/EditableActionMode$TitleBarImpl;
.super Ljava/lang/Object;
.source "EditableActionMode.java"

# interfaces
.implements Lmiui/v5/view/EditModeTitleBar;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/view/EditableActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TitleBarImpl"
.end annotation


# instance fields
.field private final mActionItems:[Landroid/view/MenuItem;

.field private final mActionModeRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/v5/view/EditableActionMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mActionViews:[Landroid/widget/TextView;

.field final mContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mDetachListener:Landroid/view/animation/Animation$AnimationListener;

.field final mParent:Landroid/view/ViewGroup;

.field private final mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lmiui/v5/view/EditableActionMode;)V
    .locals 9
    .parameter "parent"
    .parameter "mode"

    .prologue
    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-array v1, v2, [Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionViews:[Landroid/widget/TextView;

    .line 248
    new-array v1, v2, [Landroid/view/MenuItem;

    iput-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionItems:[Landroid/view/MenuItem;

    .line 283
    new-instance v1, Lmiui/v5/view/EditableActionMode$TitleBarImpl$1;

    invoke-direct {v1, p0}, Lmiui/v5/view/EditableActionMode$TitleBarImpl$1;-><init>(Lmiui/v5/view/EditableActionMode$TitleBarImpl;)V

    iput-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mDetachListener:Landroid/view/animation/Animation$AnimationListener;

    .line 252
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionModeRef:Ljava/lang/ref/WeakReference;

    .line 253
    iput-object p1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mParent:Landroid/view/ViewGroup;

    .line 254
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mContext:Landroid/content/Context;

    .line 255
    iget-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mContext:Landroid/content/Context;

    const v2, 0x603002c

    invoke-static {v1, v2, p1, v7}, Lmiui/v5/widget/Views;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 257
    .local v0, container:Landroid/view/ViewGroup;
    iput-object v0, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mContainer:Landroid/view/ViewGroup;

    .line 258
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mTitleView:Landroid/widget/TextView;

    .line 259
    iget-object v2, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionViews:[Landroid/widget/TextView;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v7

    .line 260
    iget-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionViews:[Landroid/widget/TextView;

    aget-object v1, v1, v7

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v2, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionViews:[Landroid/widget/TextView;

    const v1, 0x102001a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v8

    .line 262
    iget-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionViews:[Landroid/widget/TextView;

    aget-object v1, v1, v8

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionItems:[Landroid/view/MenuItem;

    new-instance v2, Lmiui/v5/widget/menubar/MenuBarItem;

    iget-object v3, p2, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    iget-object v4, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v4

    iget-object v5, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mContext:Landroid/content/Context;

    const/high16 v6, 0x104

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v7, v5}, Lmiui/v5/widget/menubar/MenuBarItem;-><init>(Lmiui/v5/widget/menubar/MenuBar;IILjava/lang/CharSequence;)V

    aput-object v2, v1, v7

    .line 266
    iget-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionItems:[Landroid/view/MenuItem;

    new-instance v2, Lmiui/v5/widget/menubar/MenuBarItem;

    iget-object v3, p2, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    iget-object v4, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v4

    iget-object v5, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mContext:Landroid/content/Context;

    const v6, 0x60c01fd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v7, v5}, Lmiui/v5/widget/menubar/MenuBarItem;-><init>(Lmiui/v5/widget/menubar/MenuBar;IILjava/lang/CharSequence;)V

    aput-object v2, v1, v8

    .line 268
    return-void
.end method

.method static synthetic access$000(Lmiui/v5/view/EditableActionMode$TitleBarImpl;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 241
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionModeRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private getActionView(I)Landroid/widget/TextView;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionViews:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 306
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionViews:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    .line 308
    :goto_0
    return-object v0

    .line 307
    :cond_0
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionViews:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 308
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionViews:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    goto :goto_0

    .line 311
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ActionView for id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public attach()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 273
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mContext:Landroid/content/Context;

    const v2, 0x6040013

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 275
    :cond_0
    return-void
.end method

.method public detach()V
    .locals 3

    .prologue
    .line 278
    iget-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mContext:Landroid/content/Context;

    const v2, 0x6040014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 279
    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mDetachListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 280
    iget-object v1, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 281
    return-void
.end method

.method public getButtonText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->getActionView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getButtonVisiblity(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->getActionView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 348
    iget-object v2, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionModeRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/view/EditableActionMode;

    .line 349
    .local v1, mode:Lmiui/v5/view/EditableActionMode;
    if-nez v1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v2, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionViews:[Landroid/widget/TextView;

    aget-object v2, v2, v3

    if-ne p1, v2, :cond_2

    .line 354
    iget-object v2, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionItems:[Landroid/view/MenuItem;

    aget-object v0, v2, v3

    .line 355
    .local v0, item:Landroid/view/MenuItem;
    iget-object v2, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionViews:[Landroid/widget/TextView;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 356
    iget-object v2, v1, Lmiui/v5/view/EditableActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, v1, Lmiui/v5/view/EditableActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v2, v1, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 359
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_2
    iget-object v2, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionViews:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    if-ne p1, v2, :cond_0

    .line 360
    iget-object v2, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionItems:[Landroid/view/MenuItem;

    aget-object v0, v2, v4

    .line 361
    .restart local v0       #item:Landroid/view/MenuItem;
    iget-object v2, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mActionViews:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 362
    iget-object v2, v1, Lmiui/v5/view/EditableActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, v1, Lmiui/v5/view/EditableActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v2, v1, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    goto :goto_0
.end method

.method public setBackground(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 369
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 370
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 373
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 374
    return-void
.end method

.method public setButtonBackground(II)V
    .locals 1
    .parameter "id"
    .parameter "resId"

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->getActionView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 379
    return-void
.end method

.method public setButtonBackground(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "id"
    .parameter "d"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->getActionView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 384
    return-void
.end method

.method public setButtonText(II)V
    .locals 1
    .parameter "id"
    .parameter "text"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->getActionView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 328
    return-void
.end method

.method public setButtonText(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "id"
    .parameter "text"

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->getActionView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    return-void
.end method

.method public setButtonVisibility(II)V
    .locals 1
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->getActionView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "text"

    .prologue
    .line 339
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 340
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 343
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    return-void
.end method
