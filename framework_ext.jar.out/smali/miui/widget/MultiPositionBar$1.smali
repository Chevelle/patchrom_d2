.class Lmiui/widget/MultiPositionBar$1;
.super Ljava/lang/Object;
.source "MultiPositionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MultiPositionBar;->setData([Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/MultiPositionBar;


# direct methods
.method constructor <init>(Lmiui/widget/MultiPositionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lmiui/widget/MultiPositionBar$1;->this$0:Lmiui/widget/MultiPositionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmiui/widget/MultiPositionBar$1;->this$0:Lmiui/widget/MultiPositionBar;

    #getter for: Lmiui/widget/MultiPositionBar;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lmiui/widget/MultiPositionBar;->access$000(Lmiui/widget/MultiPositionBar;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 114
    iget-object v1, p0, Lmiui/widget/MultiPositionBar$1;->this$0:Lmiui/widget/MultiPositionBar;

    #getter for: Lmiui/widget/MultiPositionBar;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lmiui/widget/MultiPositionBar;->access$000(Lmiui/widget/MultiPositionBar;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lmiui/widget/MultiPositionBar$1;->this$0:Lmiui/widget/MultiPositionBar;

    #getter for: Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;
    invoke-static {v1}, Lmiui/widget/MultiPositionBar;->access$200(Lmiui/widget/MultiPositionBar;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/MultiPositionBar$1;->this$0:Lmiui/widget/MultiPositionBar;

    #calls: Lmiui/widget/MultiPositionBar;->getTextView(I)Landroid/widget/TextView;
    invoke-static {v2, v0}, Lmiui/widget/MultiPositionBar;->access$100(Lmiui/widget/MultiPositionBar;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    iget-object v1, p0, Lmiui/widget/MultiPositionBar$1;->this$0:Lmiui/widget/MultiPositionBar;

    #getter for: Lmiui/widget/MultiPositionBar;->mImageViewGroup:Landroid/view/ViewGroup;
    invoke-static {v1}, Lmiui/widget/MultiPositionBar;->access$400(Lmiui/widget/MultiPositionBar;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/MultiPositionBar$1;->this$0:Lmiui/widget/MultiPositionBar;

    #calls: Lmiui/widget/MultiPositionBar;->getImageView(I)Landroid/widget/ImageView;
    invoke-static {v2, v0}, Lmiui/widget/MultiPositionBar;->access$300(Lmiui/widget/MultiPositionBar;I)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    return-void
.end method
