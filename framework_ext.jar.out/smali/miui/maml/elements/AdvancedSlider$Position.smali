.class Lmiui/maml/elements/AdvancedSlider$Position;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Position"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Position"


# instance fields
.field private mBaseX:Lmiui/maml/data/Expression;

.field private mBaseY:Lmiui/maml/data/Expression;

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V
    .locals 2
    .parameter
    .parameter "node"
    .parameter "baseX"
    .parameter "baseY"

    .prologue
    const/4 v1, 0x0

    .line 578
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object p3, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseX:Lmiui/maml/data/Expression;

    .line 580
    iput-object p4, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseY:Lmiui/maml/data/Expression;

    .line 581
    const-string v0, "x"

    invoke-static {p2, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->x:I

    .line 582
    const-string v0, "y"

    invoke-static {p2, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->y:I

    .line 583
    return-void
.end method


# virtual methods
.method public getX()F
    .locals 7

    .prologue
    .line 586
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider;->getAbsoluteLeft()F

    move-result v0

    float-to-double v3, v0

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseX:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->x:I

    int-to-double v0, v0

    :goto_0
    add-double/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->x:I

    int-to-double v0, v0

    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseX:Lmiui/maml/data/Expression;

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v5

    add-double/2addr v0, v5

    goto :goto_0
.end method

.method public getY()F
    .locals 7

    .prologue
    .line 590
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider;->getAbsoluteTop()F

    move-result v0

    float-to-double v3, v0

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseY:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->y:I

    int-to-double v0, v0

    :goto_0
    add-double/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->y:I

    int-to-double v0, v0

    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseY:Lmiui/maml/data/Expression;

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v6}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v5

    add-double/2addr v0, v5

    goto :goto_0
.end method
