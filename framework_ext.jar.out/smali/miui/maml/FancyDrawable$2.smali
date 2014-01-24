.class Lmiui/maml/FancyDrawable$2;
.super Ljava/lang/Object;
.source "FancyDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/FancyDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/FancyDrawable;


# direct methods
.method constructor <init>(Lmiui/maml/FancyDrawable;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lmiui/maml/FancyDrawable$2;->this$0:Lmiui/maml/FancyDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/maml/FancyDrawable$2;->this$0:Lmiui/maml/FancyDrawable;

    invoke-virtual {v0}, Lmiui/maml/FancyDrawable;->invalidateSelf()V

    .line 33
    return-void
.end method
