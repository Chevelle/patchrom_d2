.class public Lmiui/maml/elements/FramerateController$ControlPoint;
.super Ljava/lang/Object;
.source "FramerateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/FramerateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlPoint"
.end annotation


# instance fields
.field public mFramerate:I

.field public mTime:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "time"

    invoke-static {p1, v0}, Lmiui/maml/util/Utils;->getAttrAsLongThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    .line 35
    const-string v0, "frameRate"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/FramerateController$ControlPoint;->mFramerate:I

    .line 36
    return-void
.end method
