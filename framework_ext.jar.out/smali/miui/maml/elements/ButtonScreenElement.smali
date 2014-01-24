.class public Lmiui/maml/elements/ButtonScreenElement;
.super Lmiui/maml/elements/ElementGroup;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ButtonScreenElement$ButtonAction;,
        Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Button"


# instance fields
.field private mIsAlignChildren:Z

.field private mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

.field private mListenerName:Ljava/lang/String;

.field private mNormalElements:Lmiui/maml/elements/ElementGroup;

.field private mPressed:Z

.field private mPressedElements:Lmiui/maml/elements/ElementGroup;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mTouching:Z

.field private mTriggers:Lmiui/maml/CommandTriggers;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .parameter "node"
    .parameter "root"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 60
    invoke-direct {p0, p1}, Lmiui/maml/elements/ButtonScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 61
    return-void
.end method

.method private handleCancel()V
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressed:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->resetState()V

    .line 164
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->onCancel()V

    .line 166
    :cond_0
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"

    .prologue
    .line 64
    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v1, "alignChildren"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    .line 68
    const-string v1, "listener"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    .line 71
    const-string v1, "Triggers"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 72
    .local v0, triggers:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 73
    new-instance v1, Lmiui/maml/CommandTriggers;

    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, v0, v2}, Lmiui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    goto :goto_0
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lmiui/maml/elements/ButtonScreenElement$ButtonAction;->Cancel:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v0}, Lmiui/maml/elements/ButtonScreenElement;->performAction(Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V

    .line 187
    return-void
.end method

.method private performAction(Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 190
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0, p1}, Lmiui/maml/CommandTriggers;->onAction(Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0, p1}, Lmiui/maml/ScreenElementRoot;->onButtonInteractive(Lmiui/maml/elements/ButtonScreenElement;Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V

    .line 194
    return-void
.end method

.method private resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressed:Z

    .line 170
    iput-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mTouching:Z

    .line 171
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->showCurrentElements()V

    .line 172
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->reset()V

    .line 174
    :cond_0
    return-void
.end method

.method private showCurrentElements()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 178
    iget-object v3, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    iget-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mTouching:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    .line 180
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    iget-boolean v3, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressed:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lmiui/maml/elements/ButtonScreenElement;->mTouching:Z

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {v0, v2}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    .line 183
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 178
    goto :goto_0

    :cond_4
    move v2, v1

    .line 181
    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 242
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->finish()V

    .line 244
    :cond_0
    return-void
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    if-eqz v0, :cond_0

    .line 249
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getX()F

    move-result v0

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    if-eqz v0, :cond_0

    .line 257
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getY()F

    move-result v0

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 209
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 210
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v2}, Lmiui/maml/CommandTriggers;->init()V

    .line 213
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-nez v2, :cond_1

    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v3, p0, Lmiui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    .line 216
    .local v1, se:Lmiui/maml/elements/ScreenElement;
    :try_start_0
    check-cast v1, Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    .end local v1           #se:Lmiui/maml/elements/ScreenElement;
    iput-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_1
    :goto_0
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->showCurrentElements()V

    .line 222
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ButtonScreenElement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "button listener designated by the name is not actually a listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .locals 3
    .parameter "ele"

    .prologue
    .line 83
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, tag:Ljava/lang/String;
    const-string v1, "Normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Lmiui/maml/elements/ElementGroup;

    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, p1, v2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    .line 89
    :goto_0
    return-object v1

    .line 86
    :cond_0
    const-string v1, "Pressed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    new-instance v1, Lmiui/maml/elements/ElementGroup;

    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, p1, v2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    goto :goto_0

    .line 89
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    .line 94
    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->isVisible()Z

    move-result v10

    if-nez v10, :cond_1

    .line 95
    const/4 v6, 0x0

    .line 158
    :cond_0
    :goto_0
    return v6

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 98
    .local v8, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 99
    .local v9, y:F
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 100
    .local v6, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 102
    :pswitch_0
    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ButtonScreenElement;->touched(FF)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 103
    iput-boolean v11, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressed:Z

    .line 104
    iput-boolean v11, p0, Lmiui/maml/elements/ButtonScreenElement;->mTouching:Z

    .line 105
    iget-object v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v10, :cond_2

    .line 106
    iget-object v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v11, p0, Lmiui/maml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v10, v11}, Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonDown(Ljava/lang/String;)Z

    .line 108
    :cond_2
    sget-object v10, Lmiui/maml/elements/ButtonScreenElement$ButtonAction;->Down:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v10}, Lmiui/maml/elements/ButtonScreenElement;->performAction(Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    sub-long v4, v10, v12

    .line 111
    .local v4, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gtz v10, :cond_4

    .line 112
    iget v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    sub-float v0, v8, v10

    .line 113
    .local v0, deltaX:F
    iget v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    sub-float v1, v9, v10

    .line 114
    .local v1, deltaY:F
    mul-float v10, v0, v0

    mul-float v11, v1, v1

    add-float v2, v10, v11

    .line 115
    .local v2, distanceSquared:F
    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v10

    iget-object v10, v10, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 116
    .local v3, doubleTapSlop:I
    mul-int v7, v3, v3

    .line 117
    .local v7, slopSquared:I
    int-to-float v10, v7

    cmpg-float v10, v2, v10

    if-gez v10, :cond_4

    .line 118
    iget-object v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v10, :cond_3

    .line 119
    iget-object v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v11, p0, Lmiui/maml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v10, v11}, Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonDoubleClick(Ljava/lang/String;)Z

    .line 121
    :cond_3
    sget-object v10, Lmiui/maml/elements/ButtonScreenElement$ButtonAction;->Double:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v10}, Lmiui/maml/elements/ButtonScreenElement;->performAction(Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V

    .line 124
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    .end local v3           #doubleTapSlop:I
    .end local v7           #slopSquared:I
    :cond_4
    iput v8, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    .line 125
    iput v9, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    .line 126
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->showCurrentElements()V

    .line 127
    iget-object v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v10, :cond_5

    .line 128
    iget-object v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v10}, Lmiui/maml/elements/ElementGroup;->reset()V

    .line 129
    :cond_5
    const/4 v6, 0x1

    .line 130
    goto/16 :goto_0

    .line 133
    .end local v4           #duration:J
    :pswitch_1
    iget-boolean v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressed:Z

    if-eqz v10, :cond_0

    .line 134
    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ButtonScreenElement;->touched(FF)Z

    move-result v10

    iput-boolean v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mTouching:Z

    .line 135
    iget-boolean v6, p0, Lmiui/maml/elements/ButtonScreenElement;->mTouching:Z

    goto/16 :goto_0

    .line 139
    :pswitch_2
    iget-boolean v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressed:Z

    if-eqz v10, :cond_0

    .line 140
    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ButtonScreenElement;->touched(FF)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 141
    iget-object v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v10, :cond_6

    .line 142
    iget-object v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v11, p0, Lmiui/maml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v10, v11}, Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonUp(Ljava/lang/String;)Z

    .line 144
    :cond_6
    sget-object v10, Lmiui/maml/elements/ButtonScreenElement$ButtonAction;->Up:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v10}, Lmiui/maml/elements/ButtonScreenElement;->performAction(Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    .line 149
    :goto_1
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->resetState()V

    .line 150
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 147
    :cond_7
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->onCancel()V

    goto :goto_1

    .line 154
    :pswitch_3
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->handleCancel()V

    goto/16 :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onVisibilityChange(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 264
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onVisibilityChange(Z)V

    .line 266
    if-nez p1, :cond_0

    .line 267
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->handleCancel()V

    .line 269
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->pause()V

    .line 227
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->pause()V

    .line 229
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressed:Z

    .line 230
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->resume()V

    .line 235
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->resume()V

    .line 237
    :cond_0
    return-void
.end method

.method public setListener(Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    .line 79
    return-void
.end method

.method public touched(FF)Z
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    .line 197
    iget-object v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v7}, Lmiui/maml/elements/ElementGroup;->getAbsoluteLeft()F

    move-result v1

    .line 198
    .local v1, parentX:F
    :goto_0
    iget-object v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-eqz v7, :cond_1

    iget-object v6, p0, Lmiui/maml/elements/ButtonScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v6}, Lmiui/maml/elements/ElementGroup;->getAbsoluteTop()F

    move-result v2

    .line 199
    .local v2, parentY:F
    :goto_1
    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getWidth()F

    move-result v3

    .line 200
    .local v3, w:F
    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getHeight()F

    move-result v0

    .line 201
    .local v0, h:F
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getX()F

    move-result v6

    invoke-virtual {p0, v6, v3}, Lmiui/maml/elements/ButtonScreenElement;->getLeft(FF)F

    move-result v4

    .line 202
    .local v4, x0:F
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getY()F

    move-result v6

    invoke-virtual {p0, v6, v0}, Lmiui/maml/elements/ButtonScreenElement;->getTop(FF)F

    move-result v5

    .line 203
    .local v5, y0:F
    add-float v6, v1, v4

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_2

    add-float v6, v1, v4

    add-float/2addr v6, v3

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_2

    add-float v6, v2, v5

    cmpl-float v6, p2, v6

    if-ltz v6, :cond_2

    add-float v6, v2, v5

    add-float/2addr v6, v0

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    return v6

    .end local v0           #h:F
    .end local v1           #parentX:F
    .end local v2           #parentY:F
    .end local v3           #w:F
    .end local v4           #x0:F
    .end local v5           #y0:F
    :cond_0
    move v1, v6

    .line 197
    goto :goto_0

    .restart local v1       #parentX:F
    :cond_1
    move v2, v6

    .line 198
    goto :goto_1

    .line 203
    .restart local v0       #h:F
    .restart local v2       #parentY:F
    .restart local v3       #w:F
    .restart local v4       #x0:F
    .restart local v5       #y0:F
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method
