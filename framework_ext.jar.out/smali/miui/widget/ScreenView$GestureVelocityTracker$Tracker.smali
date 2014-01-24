.class Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;
.super Ljava/lang/Object;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView$GestureVelocityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tracker"
.end annotation


# instance fields
.field fold:F

.field prev:F

.field start:F

.field final synthetic this$1:Lmiui/widget/ScreenView$GestureVelocityTracker;


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView$GestureVelocityTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->this$1:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-virtual {p0}, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->reset()V

    .line 223
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 225
    const/high16 v0, -0x4080

    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker$Tracker;->start:F

    .line 226
    return-void
.end method
