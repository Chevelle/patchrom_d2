.class public abstract Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;
.super Ljava/lang/Object;
.source "PageScrollEffect.java"

# interfaces
.implements Lmiui/v5/widget/PageScrollEffect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/PageScrollEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsPageScrollEffect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect$AllPred;,
        Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect$AnyPred;
    }
.end annotation


# static fields
.field public static final EFFECT_ALL_CHILDREN:I = 0x3

.field public static final EFFECT_ANY_CHILDREN:I = 0x2

.field public static final EFFECT_NONE:I = 0x0

.field public static final EFFECT_ONLY_SELF:I = 0x1

.field protected static final KEY_EFFECT_TYPE:Ljava/lang/Integer;


# instance fields
.field protected final mRoot:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const v0, 0x60b008d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->KEY_EFFECT_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->mRoot:Landroid/view/ViewGroup;

    .line 46
    return-void
.end method

.method protected static chainEffectTypes(Landroid/view/ViewGroup;[I)Z
    .locals 11
    .parameter "group"
    .parameter "resIds"

    .prologue
    const/4 v10, 0x1

    .line 92
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 93
    :cond_0
    const/4 v2, 0x0

    .line 122
    :cond_1
    :goto_0
    return v2

    .line 96
    :cond_2
    const/4 v2, 0x1

    .line 97
    .local v2, chainAll:Z
    move-object v0, p1

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_1

    aget v4, v0, v3

    .line 98
    .local v4, id:I
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, c:Landroid/view/View;
    if-nez v1, :cond_3

    .line 100
    const/4 v2, 0x0

    .line 101
    goto :goto_0

    .line 104
    :cond_3
    if-ne v1, p0, :cond_5

    .line 97
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 108
    :cond_5
    instance-of v8, v1, Landroid/widget/AbsListView;

    if-eqz v8, :cond_7

    .line 109
    const/4 v8, 0x3

    invoke-static {v1, v8}, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->setViewEffectType(Landroid/view/View;I)V

    .line 117
    :cond_6
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, p:Landroid/view/ViewParent;
    :goto_3
    if-eq v6, p0, :cond_4

    move-object v8, v6

    .line 118
    check-cast v8, Landroid/view/View;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->setViewEffectType(Landroid/view/View;I)V

    .line 117
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_3

    .line 111
    .end local v6           #p:Landroid/view/ViewParent;
    :cond_7
    invoke-static {v1}, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->getEffectType(Landroid/view/View;)I

    move-result v7

    .line 112
    .local v7, type:I
    if-ge v7, v10, :cond_6

    .line 113
    invoke-static {v1, v10}, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->setViewEffectType(Landroid/view/View;I)V

    goto :goto_2
.end method

.method protected static clearChain(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "group"

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 127
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 128
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 129
    .local v2, v:Landroid/view/View;
    sget-object v3, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->KEY_EFFECT_TYPE:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 130
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 131
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #v:Landroid/view/View;
    invoke-static {v2}, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->clearChain(Landroid/view/ViewGroup;)V

    .line 127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_1
    return-void
.end method

.method protected static existsEffect(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 87
    sget-object v2, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->KEY_EFFECT_TYPE:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected static getEffectType(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 82
    sget-object v1, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->KEY_EFFECT_TYPE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    .restart local v0       #tag:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static setViewEffectType(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "type"

    .prologue
    .line 78
    sget-object v0, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->KEY_EFFECT_TYPE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 79
    return-void
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;[I)Z
    .locals 2
    .parameter "v"
    .parameter "resIds"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, success:Z
    if-eqz p2, :cond_1

    .line 52
    invoke-static {p1, p2}, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->chainEffectTypes(Landroid/view/ViewGroup;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const/4 v1, 0x2

    invoke-static {p1, v1}, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->setViewEffectType(Landroid/view/View;I)V

    .line 54
    const/4 v0, 0x1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    const/4 v1, 0x3

    invoke-static {p1, v1}, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->setViewEffectType(Landroid/view/View;I)V

    .line 58
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public detach(Landroid/view/ViewGroup;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 66
    invoke-static {p1}, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->clearChain(Landroid/view/ViewGroup;)V

    .line 67
    sget-object v0, Lmiui/v5/widget/PageScrollEffect$AbsPageScrollEffect;->KEY_EFFECT_TYPE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 68
    const/4 v0, 0x1

    return v0
.end method
