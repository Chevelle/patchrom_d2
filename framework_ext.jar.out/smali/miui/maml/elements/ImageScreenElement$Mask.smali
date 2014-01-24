.class Lmiui/maml/elements/ImageScreenElement$Mask;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "ImageScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ImageScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Mask"
.end annotation


# instance fields
.field private mAlignAbsolute:Z

.field final synthetic this$0:Lmiui/maml/elements/ImageScreenElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ImageScreenElement;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .parameter
    .parameter "node"
    .parameter "root"

    .prologue
    .line 109
    iput-object p1, p0, Lmiui/maml/elements/ImageScreenElement$Mask;->this$0:Lmiui/maml/elements/ImageScreenElement;

    .line 110
    invoke-direct {p0, p2, p3}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 111
    const-string v1, "align"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, align:Ljava/lang/String;
    const-string v1, "absolute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement$Mask;->mAlignAbsolute:Z

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 124
    return-void
.end method

.method public final isAlignAbsolute()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement$Mask;->mAlignAbsolute:Z

    return v0
.end method
