.class Lmiui/view/VolumePanel$StreamControl;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamControl"
.end annotation


# instance fields
.field descRes:I

.field iconMuteRes:I

.field iconRes:I

.field maxVolume:I

.field streamType:I

.field final synthetic this$0:Lmiui/view/VolumePanel;


# direct methods
.method private constructor <init>(Lmiui/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lmiui/view/VolumePanel$StreamControl;->this$0:Lmiui/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/view/VolumePanel;Lmiui/view/VolumePanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel$StreamControl;-><init>(Lmiui/view/VolumePanel;)V

    return-void
.end method
