.class public final Lmiui/maml/shader/ShaderElement$GradientStops;
.super Ljava/lang/Object;
.source "ShaderElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/shader/ShaderElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "GradientStops"
.end annotation


# instance fields
.field private mColors:[I

.field protected mGradientStopArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/shader/ShaderElement$GradientStop;",
            ">;"
        }
    .end annotation
.end field

.field private mPositions:[F

.field final synthetic this$0:Lmiui/maml/shader/ShaderElement;


# direct methods
.method protected constructor <init>(Lmiui/maml/shader/ShaderElement;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->this$0:Lmiui/maml/shader/ShaderElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lmiui/maml/shader/ShaderElement$GradientStop;)V
    .locals 1
    .parameter "stop"

    .prologue
    .line 105
    iget-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public getColors()[I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    return-object v0
.end method

.method public getPositions()[F
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lmiui/maml/shader/ShaderElement$GradientStops;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    .line 72
    invoke-virtual {p0}, Lmiui/maml/shader/ShaderElement$GradientStops;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    .line 73
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public update()V
    .locals 5

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, changed:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lmiui/maml/shader/ShaderElement$GradientStops;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 86
    iget-object v4, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/shader/ShaderElement$GradientStop;

    invoke-virtual {v4}, Lmiui/maml/shader/ShaderElement$GradientStop;->getColor()I

    move-result v0

    .line 87
    .local v0, c:I
    iget-object v4, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    aget v4, v4, v2

    if-eq v0, v4, :cond_0

    .line 88
    const/4 v1, 0x1

    .line 90
    :cond_0
    iget-object v4, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    aput v0, v4, v2

    .line 92
    iget-object v4, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/shader/ShaderElement$GradientStop;

    invoke-virtual {v4}, Lmiui/maml/shader/ShaderElement$GradientStop;->getPosition()F

    move-result v3

    .line 93
    .local v3, p:F
    iget-object v4, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    aget v4, v4, v2

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_1

    .line 94
    const/4 v1, 0x1

    .line 96
    :cond_1
    iget-object v4, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    aput v3, v4, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v0           #c:I
    .end local v3           #p:F
    :cond_2
    if-eqz v1, :cond_3

    .line 100
    iget-object v4, p0, Lmiui/maml/shader/ShaderElement$GradientStops;->this$0:Lmiui/maml/shader/ShaderElement;

    invoke-virtual {v4}, Lmiui/maml/shader/ShaderElement;->onGradientStopsChanged()V

    .line 102
    :cond_3
    return-void
.end method
