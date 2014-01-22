.class Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/internal/widget/multiwaveview/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 177
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 178
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 179
    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->clear()V

    .line 182
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .parameter "suspend"

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->mSuspended:Z

    .line 195
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 167
    iget-boolean v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_1

    .line 173
    :cond_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 169
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 170
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 171
    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 186
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 187
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 188
    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->end()V

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->clear()V

    .line 191
    return-void
.end method
