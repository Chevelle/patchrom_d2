.class public Lcom/miui/internal/v5/widget/ActionBarView;
.super Lcom/android/internal/widget/ActionBarView;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/v5/widget/ActionBarView$ActionBarViewHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTION_BAR_TITLE_LAYOUT:I = 0x603001c


# instance fields
.field private mActionBar:Lcom/miui/internal/v5/app/ActionBarImpl;

.field private mSeperatorView:Landroid/view/View;

.field private mSubTitleContainer:Landroid/view/View;

.field private mTertiaryTitle:Ljava/lang/CharSequence;

.field private mTertiaryView:Landroid/widget/TextView;

.field private mUseDefaultTitleLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public static findActionBarViewByView(Landroid/view/View;)Lcom/miui/internal/v5/widget/ActionBarView;
    .locals 1
    .parameter "view"

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 45
    instance-of v0, p0, Lcom/miui/internal/v5/widget/ActionBarView$ActionBarViewHolder;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/miui/internal/v5/widget/ActionBarView$ActionBarViewHolder;

    .end local p0
    invoke-interface {p0}, Lcom/miui/internal/v5/widget/ActionBarView$ActionBarViewHolder;->getActionBarView()Lcom/miui/internal/v5/widget/ActionBarView;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected ensureSubtitleView()V
    .locals 9

    .prologue
    const/4 v7, -0x2

    .line 275
    iget-boolean v6, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mUseDefaultTitleLayout:Z

    if-eqz v6, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getSubtitleView()Landroid/widget/TextView;

    move-result-object v6

    if-nez v6, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getTitleView()Landroid/widget/TextView;

    move-result-object v5

    .line 279
    .local v5, titleView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 280
    .local v3, oldParent:Landroid/view/ViewGroup;
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 283
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 284
    .local v2, linearLayout:Landroid/widget/LinearLayout;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 285
    const/16 v6, 0x13

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 286
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 288
    .local v1, lParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x10

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 289
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 293
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 298
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v6, 0x603001b

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mSubTitleContainer:Landroid/view/View;

    .line 300
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mSubTitleContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mSubTitleContainer:Landroid/view/View;

    const v7, 0x60b009e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 304
    .local v4, subtitleView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getSubtitleStyleRes()I

    move-result v6

    if-eqz v6, :cond_0

    .line 305
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getSubtitleStyleRes()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 307
    :cond_0
    invoke-virtual {p0, v4}, Lcom/miui/internal/v5/widget/ActionBarView;->setSubtitleView(Landroid/widget/TextView;)V

    .line 309
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mSubTitleContainer:Landroid/view/View;

    const v7, 0x60b009f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryView:Landroid/widget/TextView;

    .line 311
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getSubtitleStyleRes()I

    move-result v6

    if-eqz v6, :cond_1

    .line 312
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getSubtitleStyleRes()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 315
    :cond_1
    iget-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mSubTitleContainer:Landroid/view/View;

    const v7, 0x60b0081

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mSeperatorView:Landroid/view/View;

    .line 318
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #lParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #linearLayout:Landroid/widget/LinearLayout;
    .end local v3           #oldParent:Landroid/view/ViewGroup;
    .end local v4           #subtitleView:Landroid/widget/TextView;
    .end local v5           #titleView:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public getActionBar()Lcom/miui/internal/v5/app/ActionBarImpl;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mActionBar:Lcom/miui/internal/v5/app/ActionBarImpl;

    return-object v0
.end method

.method getActionMenuView()Lcom/miui/internal/v5/view/menu/ActionMenuView;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    check-cast v0, Lcom/miui/internal/v5/view/menu/ActionMenuView;

    return-object v0
.end method

.method public getTertiaryTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasTitle()Z
    .locals 2

    .prologue
    .line 210
    const/16 v0, 0x1e

    .line 212
    .local v0, titleOptions:I
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x1e

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected miuiInitTitle()Z
    .locals 15

    .prologue
    const/16 v12, 0x8

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getTitleLayout()Landroid/view/ViewGroup;

    move-result-object v5

    .line 74
    .local v5, titleLayout:Landroid/view/View;
    iget-object v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v13, 0x601003f

    invoke-static {v9, v13}, Lmiui/util/UiUtils;->resolveAttribute(Landroid/content/Context;I)I

    move-result v6

    .line 77
    .local v6, titleLayoutResId:I
    const v9, 0x603001c

    if-ne v6, v9, :cond_d

    move v9, v10

    :goto_0
    iput-boolean v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mUseDefaultTitleLayout:Z

    .line 79
    if-nez v5, :cond_a

    .line 80
    iget-object v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 81
    .local v1, inflater:Landroid/view/LayoutInflater;
    if-eqz v6, :cond_0

    .line 82
    invoke-virtual {v1, v6, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 85
    :cond_0
    if-eqz v5, :cond_a

    .line 86
    const v9, 0x60b00a0

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 88
    .local v8, titleView:Landroid/widget/TextView;
    const v9, 0x60b009e

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 90
    .local v4, subtitleView:Landroid/widget/TextView;
    const v9, 0x60b00af

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 91
    .local v7, titleUpView:Landroid/view/View;
    const v9, 0x60b009f

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryView:Landroid/widget/TextView;

    .line 93
    const v9, 0x60b0081

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mSeperatorView:Landroid/view/View;

    .line 94
    const v9, 0x60b009d

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mSubTitleContainer:Landroid/view/View;

    move-object v9, v5

    .line 97
    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {p0, v9}, Lcom/miui/internal/v5/widget/ActionBarView;->setTitleLayout(Landroid/view/ViewGroup;)V

    .line 99
    if-eqz v8, :cond_3

    .line 100
    iget-boolean v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mUseDefaultTitleLayout:Z

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getTitleStyleRes()I

    move-result v9

    if-eqz v9, :cond_1

    .line 101
    iget-object v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getTitleStyleRes()I

    move-result v13

    invoke-virtual {v8, v9, v13}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_2
    invoke-virtual {p0, v8}, Lcom/miui/internal/v5/widget/ActionBarView;->setTitleView(Landroid/widget/TextView;)V

    .line 110
    :cond_3
    if-eqz v4, :cond_6

    .line 111
    iget-boolean v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mUseDefaultTitleLayout:Z

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getSubtitleStyleRes()I

    move-result v9

    if-eqz v9, :cond_4

    .line 112
    iget-object v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getSubtitleStyleRes()I

    move-result v13

    invoke-virtual {v4, v9, v13}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 115
    :cond_4
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 116
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    :cond_5
    invoke-virtual {p0, v4}, Lcom/miui/internal/v5/widget/ActionBarView;->setSubtitleView(Landroid/widget/TextView;)V

    .line 122
    :cond_6
    iget-object v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryView:Landroid/widget/TextView;

    if-eqz v9, :cond_8

    .line 123
    iget-boolean v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mUseDefaultTitleLayout:Z

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getSubtitleStyleRes()I

    move-result v9

    if-eqz v9, :cond_7

    .line 124
    iget-object v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getSubtitleStyleRes()I

    move-result v14

    invoke-virtual {v9, v13, v14}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 127
    :cond_7
    iget-object v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryTitle:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 128
    iget-object v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryView:Landroid/widget/TextView;

    iget-object v13, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryTitle:Ljava/lang/CharSequence;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryView:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    :cond_8
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getDisplayOptions()I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_e

    move v0, v10

    .line 134
    .local v0, homeAsUp:Z
    :goto_1
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getDisplayOptions()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_f

    move v2, v10

    .line 135
    .local v2, showHome:Z
    :goto_2
    if-nez v2, :cond_10

    move v3, v10

    .line 137
    .local v3, showTitleUp:Z
    :goto_3
    if-eqz v7, :cond_9

    .line 138
    if-eqz v3, :cond_12

    if-eqz v0, :cond_11

    move v9, v11

    :goto_4
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getUpClickListener()Landroid/view/View$OnClickListener;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_9
    if-eqz v0, :cond_13

    if-eqz v3, :cond_13

    :goto_5
    invoke-virtual {v5, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 145
    .end local v0           #homeAsUp:Z
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #showHome:Z
    .end local v3           #showTitleUp:Z
    .end local v4           #subtitleView:Landroid/widget/TextView;
    .end local v7           #titleUpView:Landroid/view/View;
    .end local v8           #titleView:Landroid/widget/TextView;
    :cond_a
    if-eqz v5, :cond_c

    .line 148
    iget-boolean v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mUseDefaultTitleLayout:Z

    if-eqz v9, :cond_c

    .line 149
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getExpandedActionView()Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_b

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryTitle:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 152
    :cond_b
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_c
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarView;->miuiInitTitle()Z

    move-result v9

    return v9

    :cond_d
    move v9, v11

    .line 77
    goto/16 :goto_0

    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #subtitleView:Landroid/widget/TextView;
    .restart local v7       #titleUpView:Landroid/view/View;
    .restart local v8       #titleView:Landroid/widget/TextView;
    :cond_e
    move v0, v11

    .line 133
    goto :goto_1

    .restart local v0       #homeAsUp:Z
    :cond_f
    move v2, v11

    .line 134
    goto :goto_2

    .restart local v2       #showHome:Z
    :cond_10
    move v3, v11

    .line 135
    goto :goto_3

    .restart local v3       #showTitleUp:Z
    :cond_11
    move v9, v12

    .line 138
    goto :goto_4

    :cond_12
    move v9, v12

    goto :goto_4

    :cond_13
    move v10, v11

    .line 141
    goto :goto_5
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1
    .parameter "child"
    .parameter "oldVisibility"
    .parameter "newVisibility"

    .prologue
    .line 193
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/ActionBarView;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 195
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getSubtitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryView:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getTitleLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->updateTitleLayout()V

    .line 198
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 204
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getTabScrollView()Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 207
    :cond_0
    return-void
.end method

.method public setActionBar(Lcom/miui/internal/v5/app/ActionBarImpl;)V
    .locals 0
    .parameter "actionBar"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mActionBar:Lcom/miui/internal/v5/app/ActionBarImpl;

    .line 264
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 2
    .parameter "options"

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 218
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 220
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 221
    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarContainer;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->updateTabContainerBackground()V

    .line 224
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 3
    .parameter "menu"
    .parameter "cb"

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 57
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->isSplitActionBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 60
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_0

    .line 62
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .local v0, flp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 64
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .end local v0           #flp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "subtitle"

    .prologue
    const/16 v3, 0x8

    .line 227
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->ensureSubtitleView()V

    .line 229
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getSubtitleView()Landroid/widget/TextView;

    move-result-object v2

    .line 231
    .local v2, titleView:Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 232
    .local v1, oldVisibility:I
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 233
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 235
    .local v0, newVisibility:I
    :goto_1
    if-eqz v2, :cond_0

    if-eq v1, v0, :cond_0

    .line 236
    invoke-virtual {p0, v2, v1, v0}, Lcom/miui/internal/v5/widget/ActionBarView;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 238
    :cond_0
    return-void

    .end local v0           #newVisibility:I
    .end local v1           #oldVisibility:I
    :cond_1
    move v1, v3

    .line 231
    goto :goto_0

    .restart local v1       #oldVisibility:I
    :cond_2
    move v0, v3

    .line 233
    goto :goto_1
.end method

.method public setTertiaryTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->ensureSubtitleView()V

    .line 243
    iput-object p1, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryTitle:Ljava/lang/CharSequence;

    .line 245
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 247
    .local v0, isTitleEmpty:Z
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    .line 250
    .local v2, oldVisibility:I
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 251
    .local v1, newVisibility:I
    :goto_0
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    if-eq v2, v1, :cond_0

    .line 253
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryView:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v2, v1}, Lcom/miui/internal/v5/widget/ActionBarView;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 256
    .end local v0           #isTitleEmpty:Z
    .end local v1           #newVisibility:I
    .end local v2           #oldVisibility:I
    :cond_0
    return-void

    .line 250
    .restart local v0       #isTitleEmpty:Z
    .restart local v2       #oldVisibility:I
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected updateTitleLayout()V
    .locals 10

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 162
    iget-boolean v7, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mUseDefaultTitleLayout:Z

    if-nez v7, :cond_0

    .line 189
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getTitleView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_5

    move v3, v5

    .line 168
    .local v3, titleVisible:Z
    :goto_1
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getSubtitleView()Landroid/widget/TextView;

    move-result-object v0

    .line 169
    .local v0, subTitleView:Landroid/view/View;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    move v1, v5

    .line 171
    .local v1, subTitleVisible:Z
    :goto_2
    iget-object v7, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryView:Landroid/widget/TextView;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mTertiaryView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_8

    move v2, v5

    .line 175
    .local v2, tertiaryTitleVisible:Z
    :goto_3
    iget-object v7, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mSeperatorView:Landroid/view/View;

    if-eqz v7, :cond_1

    .line 176
    iget-object v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mSeperatorView:Landroid/view/View;

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    move v7, v6

    :goto_4
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_1
    iget-object v7, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mSubTitleContainer:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 181
    iget-object v9, p0, Lcom/miui/internal/v5/widget/ActionBarView;->mSubTitleContainer:Landroid/view/View;

    if-nez v1, :cond_2

    if-eqz v2, :cond_b

    :cond_2
    move v7, v6

    :goto_5
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getExpandedActionView()Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_c

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getDisplayOptions()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_c

    if-nez v3, :cond_4

    if-nez v1, :cond_4

    if-eqz v2, :cond_c

    :cond_4
    move v4, v5

    .line 188
    .local v4, visible:Z
    :goto_6
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->getTitleLayout()Landroid/view/ViewGroup;

    move-result-object v5

    if-eqz v4, :cond_d

    :goto_7
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .end local v0           #subTitleView:Landroid/view/View;
    .end local v1           #subTitleVisible:Z
    .end local v2           #tertiaryTitleVisible:Z
    .end local v3           #titleVisible:Z
    .end local v4           #visible:Z
    :cond_5
    move v3, v6

    .line 166
    goto :goto_1

    .restart local v0       #subTitleView:Landroid/view/View;
    .restart local v3       #titleVisible:Z
    :cond_6
    move v1, v6

    .line 169
    goto :goto_2

    :cond_7
    move v1, v6

    goto :goto_2

    .restart local v1       #subTitleVisible:Z
    :cond_8
    move v2, v6

    .line 171
    goto :goto_3

    :cond_9
    move v2, v6

    goto :goto_3

    .restart local v2       #tertiaryTitleVisible:Z
    :cond_a
    move v7, v8

    .line 176
    goto :goto_4

    :cond_b
    move v7, v8

    .line 181
    goto :goto_5

    :cond_c
    move v4, v6

    .line 185
    goto :goto_6

    .restart local v4       #visible:Z
    :cond_d
    move v6, v8

    .line 188
    goto :goto_7
.end method
