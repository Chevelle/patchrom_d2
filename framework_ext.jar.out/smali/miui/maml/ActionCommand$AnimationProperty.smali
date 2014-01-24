.class Lmiui/maml/ActionCommand$AnimationProperty;
.super Lmiui/maml/ActionCommand$PropertyCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$AnimationProperty$Type;
    }
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "animation"


# instance fields
.field private mPlayParams:[Lmiui/maml/data/Expression;

.field private mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;


# direct methods
.method protected constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/util/Variable;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "targetObj"
    .parameter "value"

    .prologue
    .line 1193
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/ActionCommand$PropertyCommand;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/util/Variable;Ljava/lang/String;)V

    .line 1194
    const-string v0, "play"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1195
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    const-string v0, "pause"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1197
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0

    .line 1198
    :cond_2
    const-string v0, "resume"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1199
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0

    .line 1200
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "play("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1201
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    .line 1202
    const/4 v0, 0x5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->buildMultiple(Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    .line 1203
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1204
    const-string v0, "ActionCommand"

    const-string v1, "bad expression format"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1207
    :cond_4
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->INVALID:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0
.end method


# virtual methods
.method public doPerform()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const/4 v0, 0x0

    .line 1213
    sget-object v7, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v8}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1245
    :goto_0
    return-void

    .line 1215
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->playAnim()V

    goto :goto_0

    .line 1218
    :pswitch_1
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->pauseAnim()V

    goto :goto_0

    .line 1221
    :pswitch_2
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->resumeAnim()V

    goto :goto_0

    .line 1224
    :pswitch_3
    const-wide/16 v1, 0x0

    .line 1225
    .local v1, startTime:J
    const-wide/16 v3, -0x1

    .line 1226
    .local v3, endTime:J
    const/4 v5, 0x0

    .line 1227
    .local v5, isLoop:Z
    const/4 v6, 0x0

    .line 1228
    .local v6, isDelay:Z
    iget-object v7, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v7, v7

    if-lez v7, :cond_0

    .line 1229
    iget-object v7, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v7, v7, v0

    if-nez v7, :cond_4

    move-wide v7, v9

    :goto_1
    double-to-long v1, v7

    .line 1231
    :cond_0
    iget-object v7, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v7, v7

    if-le v7, v11, :cond_1

    .line 1232
    iget-object v7, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v7, v7, v11

    if-nez v7, :cond_5

    const-wide/high16 v7, -0x4010

    :goto_2
    double-to-long v3, v7

    .line 1235
    :cond_1
    iget-object v7, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v7, v7

    if-le v7, v12, :cond_2

    .line 1236
    iget-object v7, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v7, v7, v12

    if-nez v7, :cond_6

    move v5, v0

    .line 1238
    :cond_2
    :goto_3
    iget-object v7, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v7, v7

    if-le v7, v13, :cond_3

    .line 1239
    iget-object v7, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v7, v7, v13

    if-nez v7, :cond_8

    move v6, v0

    .line 1241
    :cond_3
    :goto_4
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual/range {v0 .. v6}, Lmiui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    goto :goto_0

    .line 1229
    :cond_4
    iget-object v7, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v7, v7, v0

    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v8}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v8

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v7, v8}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v7

    goto :goto_1

    .line 1232
    :cond_5
    iget-object v7, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v7, v7, v11

    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v8}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v8

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v7, v8}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v7

    goto :goto_2

    .line 1236
    :cond_6
    iget-object v7, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v7, v7, v12

    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v8}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v8

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v7, v8}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v7

    cmpl-double v7, v7, v9

    if-lez v7, :cond_7

    move v5, v11

    goto :goto_3

    :cond_7
    move v5, v0

    goto :goto_3

    .line 1239
    :cond_8
    iget-object v7, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v7, v7, v13

    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v8}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v8

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v7, v8}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v7

    cmpl-double v7, v7, v9

    if-lez v7, :cond_9

    move v6, v11

    goto :goto_4

    :cond_9
    move v6, v0

    goto :goto_4

    .line 1213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
