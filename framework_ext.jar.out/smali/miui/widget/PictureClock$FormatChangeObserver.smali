.class Lmiui/widget/PictureClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "PictureClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/PictureClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/PictureClock;


# direct methods
.method public constructor <init>(Lmiui/widget/PictureClock;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lmiui/widget/PictureClock$FormatChangeObserver;->this$0:Lmiui/widget/PictureClock;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 100
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 103
    iget-object v0, p0, Lmiui/widget/PictureClock$FormatChangeObserver;->this$0:Lmiui/widget/PictureClock;

    #calls: Lmiui/widget/PictureClock;->setDateFormat()V
    invoke-static {v0}, Lmiui/widget/PictureClock;->access$400(Lmiui/widget/PictureClock;)V

    .line 104
    iget-object v0, p0, Lmiui/widget/PictureClock$FormatChangeObserver;->this$0:Lmiui/widget/PictureClock;

    #calls: Lmiui/widget/PictureClock;->updateTime()V
    invoke-static {v0}, Lmiui/widget/PictureClock;->access$200(Lmiui/widget/PictureClock;)V

    .line 105
    return-void
.end method
