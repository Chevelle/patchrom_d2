.class public interface abstract Lmiui/widget/PhotoFrameView$BoundStrategy;
.super Ljava/lang/Object;
.source "PhotoFrameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/PhotoFrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BoundStrategy"
.end annotation


# virtual methods
.method public abstract adjustCropArea(Landroid/graphics/Matrix;Z)V
.end method

.method public abstract adjustDx(Landroid/graphics/RectF;F)F
.end method

.method public abstract adjustDy(Landroid/graphics/RectF;F)F
.end method

.method public abstract adjustIfNeeded(Landroid/graphics/RectF;FZ)V
.end method

.method public abstract getCropedMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract getCropedPhotoHeight()I
.end method

.method public abstract getCropedPhotoWidth()I
.end method
