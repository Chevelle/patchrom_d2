.class Lmiui/widget/AlphabetFastIndexer$2;
.super Landroid/os/Handler;
.source "AlphabetFastIndexer.java"


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
    .line 580
    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$2;->this$0:Lmiui/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 584
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 586
    :pswitch_0
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$2;->this$0:Lmiui/widget/AlphabetFastIndexer;

    #getter for: Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;
    invoke-static {v0}, Lmiui/widget/AlphabetFastIndexer;->access$000(Lmiui/widget/AlphabetFastIndexer;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$2;->this$0:Lmiui/widget/AlphabetFastIndexer;

    #getter for: Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;
    invoke-static {v0}, Lmiui/widget/AlphabetFastIndexer;->access$000(Lmiui/widget/AlphabetFastIndexer;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 584
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
