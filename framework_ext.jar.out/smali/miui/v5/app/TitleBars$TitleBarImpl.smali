.class Lmiui/v5/app/TitleBars$TitleBarImpl;
.super Ljava/lang/Object;
.source "TitleBars.java"

# interfaces
.implements Lmiui/v5/app/TitleBar;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/app/TitleBars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TitleBarImpl"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field protected final mBackPlaceholder:Landroid/view/View;

.field protected final mContainer:Landroid/view/View;

.field protected final mCustomViewContainer:Landroid/view/ViewGroup;

.field protected final mHomeIcon:Landroid/widget/ImageView;

.field protected final mLogoIcon:Landroid/widget/ImageView;

.field private final mMenuBuilder:Landroid/view/Menu;

.field protected final mPrimaryText:Landroid/widget/TextView;

.field protected final mSecondaryText:Landroid/widget/TextView;

.field protected final mSeparator:Landroid/widget/ImageView;

.field protected final mShortcutIcon:Landroid/widget/ImageView;

.field protected final mTertiaryText:Landroid/widget/TextView;

.field private final mType:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1
    .parameter "a"
    .parameter "container"
    .parameter "type"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mActivity:Landroid/app/Activity;

    .line 89
    iput-object p2, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mContainer:Landroid/view/View;

    .line 90
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mMenuBuilder:Landroid/view/Menu;

    .line 91
    const v0, 0x102000c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    .line 92
    const v0, 0x102000b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    .line 93
    const v0, 0x1020005

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    .line 94
    const v0, 0x60b0081

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSeparator:Landroid/widget/ImageView;

    .line 95
    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mLogoIcon:Landroid/widget/ImageView;

    .line 96
    const v0, 0x102002c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    .line 97
    const v0, 0x1020017

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    .line 98
    const v0, 0x102002b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    .line 99
    const v0, 0x60b00ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mBackPlaceholder:Landroid/view/View;

    .line 101
    iput p3, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mType:I

    .line 103
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_1
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_2
    return-void
.end method

.method private updateSeperator()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSeparator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-virtual {p0}, Lmiui/v5/app/TitleBars$TitleBarImpl;->getSecondaryText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiui/v5/app/TitleBars$TitleBarImpl;->getTertiaryText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    :cond_1
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSeparator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSeparator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 282
    iget-object v1, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 283
    .local v0, parent:Landroid/view/ViewGroup;
    iget-object v1, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 284
    return-void
.end method

.method public getPrimaryText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondaryText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTertiaryText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mType:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 289
    .local v0, id:I
    iget-object v2, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mMenuBuilder:Landroid/view/Menu;

    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 290
    .local v1, item:Landroid/view/MenuItem;
    if-nez v1, :cond_0

    .line 291
    iget-object v2, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mMenuBuilder:Landroid/view/Menu;

    const-string v3, ""

    invoke-interface {v2, v4, v0, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 294
    :cond_0
    iget-object v2, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v4, v1}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 295
    return-void
.end method

.method public setCustomView(I)Landroid/view/View;
    .locals 5
    .parameter "layoutId"

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    .line 249
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p1, v0, v4}, Lmiui/v5/widget/Views;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 251
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1, v2}, Lmiui/v5/app/TitleBars$TitleBarImpl;->setCustomView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v2

    .line 254
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-object v2
.end method

.method public setCustomView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 259
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 261
    if-eqz p2, :cond_0

    .line 262
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    .end local p1
    :goto_0
    return-object p1

    .line 264
    .restart local p1
    :cond_0
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 270
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setCustomViewVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 275
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 278
    :cond_0
    return-void
.end method

.method public setHomeIcon(I)V
    .locals 1
    .parameter "iconId"

    .prologue
    .line 143
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 146
    :cond_0
    return-void
.end method

.method public setHomeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 136
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    :cond_0
    return-void
.end method

.method public setHomeIconVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    const/16 v0, 0x8

    .line 150
    iget-object v1, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    :cond_0
    iget-object v1, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mBackPlaceholder:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mBackPlaceholder:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_2
    return-void
.end method

.method public setLogoIcon(I)V
    .locals 1
    .parameter "iconId"

    .prologue
    .line 168
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mLogoIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mLogoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public setLogoIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 161
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mLogoIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mLogoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    :cond_0
    return-void
.end method

.method public setLogoIconVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 175
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mLogoIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mLogoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    :cond_0
    return-void
.end method

.method public setPrimaryText(I)V
    .locals 1
    .parameter "textId"

    .prologue
    .line 210
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    :cond_0
    return-void
.end method

.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 203
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_0
    return-void
.end method

.method public setPrimaryTextVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 217
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    :cond_0
    return-void
.end method

.method public setSecondaryText(I)V
    .locals 1
    .parameter "text"

    .prologue
    .line 232
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    invoke-direct {p0}, Lmiui/v5/app/TitleBars$TitleBarImpl;->updateSeperator()V

    .line 236
    :cond_0
    return-void
.end method

.method public setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 224
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-direct {p0}, Lmiui/v5/app/TitleBars$TitleBarImpl;->updateSeperator()V

    .line 228
    :cond_0
    return-void
.end method

.method public setSecondaryTextVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 240
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    invoke-direct {p0}, Lmiui/v5/app/TitleBars$TitleBarImpl;->updateSeperator()V

    .line 244
    :cond_0
    return-void
.end method

.method public setSeparator(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 335
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSeparator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSeparator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 338
    :cond_0
    return-void
.end method

.method public setSeparator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 328
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSeparator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSeparator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    :cond_0
    return-void
.end method

.method public setShortcutIcon(I)V
    .locals 1
    .parameter "iconId"

    .prologue
    .line 189
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public setShortcutIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 182
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_0
    return-void
.end method

.method public setShortcutIconVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 196
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    :cond_0
    return-void
.end method

.method public setTertiaryText(I)V
    .locals 1
    .parameter "text"

    .prologue
    .line 312
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 314
    invoke-direct {p0}, Lmiui/v5/app/TitleBars$TitleBarImpl;->updateSeperator()V

    .line 316
    :cond_0
    return-void
.end method

.method public setTertiaryText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 304
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-direct {p0}, Lmiui/v5/app/TitleBars$TitleBarImpl;->updateSeperator()V

    .line 308
    :cond_0
    return-void
.end method

.method public setTertiaryTextTextVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 320
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    invoke-direct {p0}, Lmiui/v5/app/TitleBars$TitleBarImpl;->updateSeperator()V

    .line 324
    :cond_0
    return-void
.end method
