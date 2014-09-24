.class Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendWindowContentChangedAccessibilityEvent"
.end annotation


# instance fields
.field private mChangeTypes:I

.field public mLastEventTimeMillis:J

.field public mSource:Landroid/view/View;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method private constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 6591
    iput-object p1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6592
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6591
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6600
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6601
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mLastEventTimeMillis:J

    .line 6602
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 6603
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 6604
    iget v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 6605
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6610
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 6611
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 6612
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    .line 6613
    return-void

    .line 6607
    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mLastEventTimeMillis:J

    goto :goto_0
.end method

.method public runOrPost(Landroid/view/View;I)V
    .locals 9
    .parameter "source"
    .parameter "changeType"

    .prologue
    .line 6616
    iget-object v5, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 6619
    iget-object v5, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    #calls: Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    invoke-static {v5, v6, p1}, Landroid/view/ViewRootImpl;->access$2300(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 6620
    .local v2, predecessor:Landroid/view/View;
    if-eqz v2, :cond_0

    .end local v2           #predecessor:Landroid/view/View;
    :goto_0
    iput-object v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 6621
    iget v5, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    or-int/2addr v5, p2

    iput v5, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    .line 6635
    :goto_1
    return-void

    .restart local v2       #predecessor:Landroid/view/View;
    :cond_0
    move-object v2, p1

    .line 6620
    goto :goto_0

    .line 6624
    .end local v2           #predecessor:Landroid/view/View;
    :cond_1
    iput-object p1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 6625
    iput p2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    .line 6626
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mLastEventTimeMillis:J

    sub-long v3, v5, v7

    .line 6627
    .local v3, timeSinceLastMillis:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    .line 6629
    .local v0, minEventIntevalMillis:J
    cmp-long v5, v3, v0

    if-ltz v5, :cond_2

    .line 6630
    iget-object v5, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6631
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->run()V

    goto :goto_1

    .line 6633
    :cond_2
    iget-object v5, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    sub-long v6, v0, v3

    invoke-virtual {v5, p0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
