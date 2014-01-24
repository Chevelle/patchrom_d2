.class public Lmiui/maml/elements/VariableElement;
.super Lmiui/maml/elements/ScreenElement;
.source "VariableElement.java"


# static fields
.field private static final OLD_VALUE:Ljava/lang/String; = "old_value"

.field public static final TAG_NAME:Ljava/lang/String; = "Var"


# instance fields
.field private mAnimation:Lmiui/maml/animation/VariableAnimation;

.field private mConst:Z

.field private mExpression:Lmiui/maml/data/Expression;

.field private mIsStringType:Z

.field private mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mOldNumberVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mOldStringVar:Lmiui/maml/util/IndexedStringVariable;

.field private mOldValue:Ljava/lang/Double;

.field private mStringVar:Lmiui/maml/util/IndexedStringVariable;

.field private mThreshold:D

.field private mTrigger:Lmiui/maml/CommandTrigger;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 5
    .parameter "ele"
    .parameter "root"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    .line 53
    if-eqz p1, :cond_1

    .line 54
    const-string v1, "expression"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    .line 55
    const-string v1, "threshold"

    const/high16 v2, 0x3f80

    invoke-static {p1, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lmiui/maml/elements/VariableElement;->mThreshold:D

    .line 56
    const-string v1, "string"

    const-string v2, "type"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/elements/VariableElement;->mIsStringType:Z

    .line 57
    const-string v1, "const"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/elements/VariableElement;->mConst:Z

    .line 58
    iget-boolean v1, p0, Lmiui/maml/elements/VariableElement;->mIsStringType:Z

    if-eqz v1, :cond_2

    .line 59
    new-instance v1, Lmiui/maml/util/IndexedStringVariable;

    iget-object v2, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v1, v2, v3}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/VariableElement;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    .line 60
    new-instance v1, Lmiui/maml/util/IndexedStringVariable;

    iget-object v2, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    const-string v3, "old_value"

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/VariableElement;->mOldStringVar:Lmiui/maml/util/IndexedStringVariable;

    .line 66
    :goto_0
    const-string v1, "VariableAnimation"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 67
    .local v0, ani:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 68
    new-instance v1, Lmiui/maml/animation/VariableAnimation;

    invoke-direct {v1, v0, p2}, Lmiui/maml/animation/VariableAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    .line 72
    :cond_0
    invoke-static {p1, p2}, Lmiui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/CommandTrigger;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    .line 74
    .end local v0           #ani:Lorg/w3c/dom/Element;
    :cond_1
    return-void

    .line 62
    :cond_2
    new-instance v1, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/VariableElement;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 63
    new-instance v1, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    const-string v3, "old_value"

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/VariableElement;->mOldNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    goto :goto_0
.end method

.method private update()V
    .locals 8

    .prologue
    .line 166
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v3, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .line 167
    .local v3, var:Lmiui/maml/data/Variables;
    iget-boolean v4, p0, Lmiui/maml/elements/VariableElement;->mIsStringType:Z

    if-eqz v4, :cond_2

    .line 168
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-nez v4, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v4, v3}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, str:Ljava/lang/String;
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v4}, Lmiui/maml/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, oldStr:Ljava/lang/String;
    invoke-static {v1, v0}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 173
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mOldStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v4, v0}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 174
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v4, v1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 175
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v4, :cond_0

    .line 176
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v4}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_0

    .line 180
    .end local v0           #oldStr:Ljava/lang/String;
    .end local v1           #str:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 181
    .local v2, value:Ljava/lang/Double;
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v4, :cond_5

    .line 182
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v4}, Lmiui/maml/animation/VariableAnimation;->getValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 187
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v2, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 188
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    if-nez v4, :cond_4

    .line 189
    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    .line 191
    :cond_4
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v4, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 192
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mOldNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 193
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-nez v4, :cond_6

    .line 195
    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    goto :goto_0

    .line 183
    :cond_5
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v4, :cond_3

    .line 184
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v4, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_1

    .line 196
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-wide v6, p0, Lmiui/maml/elements/VariableElement;->mThreshold:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    .line 197
    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v4}, Lmiui/maml/CommandTrigger;->perform()V

    .line 199
    iput-object v2, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    goto/16 :goto_0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 79
    return-void
.end method

.method protected doTick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 84
    invoke-virtual {p0}, Lmiui/maml/elements/VariableElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/animation/VariableAnimation;->tick(J)V

    .line 90
    :cond_2
    iget-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mConst:Z

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    .line 157
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/VariableAnimation;->finish()V

    .line 159
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    .line 161
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/VariableElement;->mOldValue:Ljava/lang/Double;

    .line 162
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    .line 97
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/VariableAnimation;->init()V

    .line 99
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    .line 101
    :cond_1
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 102
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    .line 139
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/VariableAnimation;->pause()V

    .line 141
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    .line 143
    :cond_1
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 115
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/animation/VariableAnimation;->pauseAnim(J)V

    .line 117
    :cond_0
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 118
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 9
    .parameter "time"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "isLoop"
    .parameter "isDelay"

    .prologue
    .line 106
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 107
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lmiui/maml/animation/VariableAnimation;->playAnim(JJJZZ)V

    .line 109
    :cond_0
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 110
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 131
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/animation/VariableAnimation;->reset(J)V

    .line 133
    :cond_0
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 134
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->resume()V

    .line 148
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/VariableAnimation;->resume()V

    .line 150
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    .line 152
    :cond_1
    return-void
.end method

.method protected resumeAnim(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 123
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/animation/VariableAnimation;->resumeAnim(J)V

    .line 125
    :cond_0
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 126
    return-void
.end method
