.class public interface abstract Lmiui/v5/widget/MotionDetectListener;
.super Ljava/lang/Object;
.source "MotionDetectListener.java"

# interfaces
.implements Lmiui/v5/widget/MotionDetectStrategy;


# static fields
.field public static final INVALID_ANCHOR:I = 0x7fffffff


# virtual methods
.method public abstract getLastAnchorPosition()I
.end method

.method public abstract moveImmediately(Landroid/view/View;II)Z
.end method

.method public abstract onMove(Landroid/view/View;IIII)Z
.end method

.method public abstract onMoveCancel(Landroid/view/View;II)V
.end method

.method public abstract onMoveFinish(Landroid/view/View;IIIILandroid/view/VelocityTracker;)V
.end method

.method public abstract onMoveStart(Landroid/view/View;II)V
.end method
