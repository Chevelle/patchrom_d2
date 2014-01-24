.class Lmiui/widget/HeiHeiGestureView$1;
.super Ljava/lang/Object;
.source "HeiHeiGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/HeiHeiGestureView;->trigger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/HeiHeiGestureView;


# direct methods
.method constructor <init>(Lmiui/widget/HeiHeiGestureView;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lmiui/widget/HeiHeiGestureView$1;->this$0:Lmiui/widget/HeiHeiGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lmiui/widget/HeiHeiGestureView$1;->this$0:Lmiui/widget/HeiHeiGestureView;

    #getter for: Lmiui/widget/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lmiui/widget/HeiHeiGestureView;->access$000(Lmiui/widget/HeiHeiGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    return-void
.end method
