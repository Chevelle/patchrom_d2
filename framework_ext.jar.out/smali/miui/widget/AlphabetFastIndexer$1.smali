.class Lmiui/widget/AlphabetFastIndexer$1;
.super Ljava/lang/Object;
.source "AlphabetFastIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/AlphabetFastIndexer;


# direct methods
.method constructor <init>(Lmiui/widget/AlphabetFastIndexer;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$1;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$1;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-virtual {v0}, Lmiui/widget/AlphabetFastIndexer;->refreshMask()V

    .line 203
    return-void
.end method
