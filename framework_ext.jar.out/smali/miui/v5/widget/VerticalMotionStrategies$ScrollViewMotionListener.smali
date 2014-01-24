.class Lmiui/v5/widget/VerticalMotionStrategies$ScrollViewMotionListener;
.super Ljava/lang/Object;
.source "VerticalMotionStrategies.java"

# interfaces
.implements Lmiui/v5/widget/MotionDetectStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/VerticalMotionStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollViewMotionListener"
.end annotation


# instance fields
.field private final mScroll:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0
    .parameter "scrollView"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lmiui/v5/widget/VerticalMotionStrategies$ScrollViewMotionListener;->mScroll:Landroid/widget/ScrollView;

    .line 88
    return-void
.end method


# virtual methods
.method public isMovable(Landroid/view/View;IIII)Z
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "startX"
    .parameter "startY"

    .prologue
    .line 92
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionStrategies$ScrollViewMotionListener;->mScroll:Landroid/widget/ScrollView;

    invoke-static {v0, p2, p3, p4, p5}, Lmiui/v5/widget/VerticalMotionStrategies;->canScrollViewScroll(Landroid/widget/ScrollView;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
