.class Lmiui/v5/widget/VerticalMotionStrategies$ListMotionListener;
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
    name = "ListMotionListener"
.end annotation


# instance fields
.field private final mList:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, list:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lmiui/v5/widget/VerticalMotionStrategies$ListMotionListener;->mList:Landroid/widget/AdapterView;

    .line 76
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
    .line 80
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionStrategies$ListMotionListener;->mList:Landroid/widget/AdapterView;

    invoke-static {v0, p2, p3, p4, p5}, Lmiui/v5/widget/VerticalMotionStrategies;->canListScroll(Landroid/widget/AdapterView;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
