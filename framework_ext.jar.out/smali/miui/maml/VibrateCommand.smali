.class public Lmiui/maml/VibrateCommand;
.super Lmiui/maml/ActionCommand;
.source "VibrateCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/VibrateCommand$1;,
        Lmiui/maml/VibrateCommand$EffectType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VibrateCommand"

.field public static final TAG_NAME:Ljava/lang/String; = "VibrateCommand"


# instance fields
.field private mDuration:Lmiui/maml/data/Expression;

.field private mIvtEffectName:Lmiui/maml/util/TextFormatter;

.field private mIvtFileName:Lmiui/maml/util/TextFormatter;

.field private mMagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

.field private mMagnitude:Lmiui/maml/data/Expression;

.field private mPeriod:Lmiui/maml/data/Expression;

.field private mPeriodicEffectDefinition:Lcom/immersion/PeriodicEffectDefinition;

.field private mStyle:I

.field private mType:Lmiui/maml/VibrateCommand$EffectType;

.field private mWaveform:I


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .locals 16
    .parameter "root"
    .parameter "ele"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 38
    sget-object v1, Lmiui/maml/VibrateCommand$EffectType;->IVT:Lmiui/maml/VibrateCommand$EffectType;

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/VibrateCommand;->mType:Lmiui/maml/VibrateCommand$EffectType;

    .line 45
    const-string v1, "type"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 46
    .local v14, type:Ljava/lang/String;
    const-string v1, "Periodic"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    sget-object v1, Lmiui/maml/VibrateCommand$EffectType;->Periodic:Lmiui/maml/VibrateCommand$EffectType;

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/VibrateCommand;->mType:Lmiui/maml/VibrateCommand$EffectType;

    .line 54
    :cond_0
    :goto_0
    sget-object v1, Lmiui/maml/VibrateCommand$1;->$SwitchMap$miui$maml$VibrateCommand$EffectType:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/VibrateCommand;->mType:Lmiui/maml/VibrateCommand$EffectType;

    invoke-virtual {v2}, Lmiui/maml/VibrateCommand$EffectType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 113
    :goto_1
    return-void

    .line 48
    :cond_1
    const-string v1, "MagSweep"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    sget-object v1, Lmiui/maml/VibrateCommand$EffectType;->MagSweep:Lmiui/maml/VibrateCommand$EffectType;

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/VibrateCommand;->mType:Lmiui/maml/VibrateCommand$EffectType;

    goto :goto_0

    .line 50
    :cond_2
    const-string v1, "IVT"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Lmiui/maml/VibrateCommand$EffectType;->IVT:Lmiui/maml/VibrateCommand$EffectType;

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/VibrateCommand;->mType:Lmiui/maml/VibrateCommand$EffectType;

    goto :goto_0

    .line 57
    :pswitch_0
    const-string v1, "duration"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/VibrateCommand;->mDuration:Lmiui/maml/data/Expression;

    .line 58
    const-string v1, "magnitude"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/VibrateCommand;->mMagnitude:Lmiui/maml/data/Expression;

    .line 59
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/maml/VibrateCommand;->mDuration:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/maml/VibrateCommand;->mMagnitude:Lmiui/maml/data/Expression;

    if-nez v1, :cond_4

    .line 60
    :cond_3
    const-string v1, "VibrateCommand"

    const-string v2, "invalid parameters in VibrateCommand, no duration or magnitude"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v1, Lmiui/maml/VibrateCommand$EffectType;->Invalid:Lmiui/maml/VibrateCommand$EffectType;

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/VibrateCommand;->mType:Lmiui/maml/VibrateCommand$EffectType;

    .line 63
    :cond_4
    const-string v1, "period"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/VibrateCommand;->mPeriod:Lmiui/maml/data/Expression;

    .line 64
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/maml/VibrateCommand;->mPeriod:Lmiui/maml/data/Expression;

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/maml/VibrateCommand;->mType:Lmiui/maml/VibrateCommand$EffectType;

    sget-object v2, Lmiui/maml/VibrateCommand$EffectType;->Periodic:Lmiui/maml/VibrateCommand$EffectType;

    if-ne v1, v2, :cond_5

    .line 65
    const-string v1, "VibrateCommand"

    const-string v2, "invalid parameters in VibrateCommand, no period"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v1, Lmiui/maml/VibrateCommand$EffectType;->Invalid:Lmiui/maml/VibrateCommand$EffectType;

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/VibrateCommand;->mType:Lmiui/maml/VibrateCommand$EffectType;

    .line 68
    :cond_5
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/maml/VibrateCommand;->mStyle:I

    .line 69
    const-string v1, "style"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 70
    .local v13, style:Ljava/lang/String;
    const-string v1, "smooth"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 71
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/maml/VibrateCommand;->mStyle:I

    .line 78
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/maml/VibrateCommand;->mType:Lmiui/maml/VibrateCommand$EffectType;

    sget-object v2, Lmiui/maml/VibrateCommand$EffectType;->Periodic:Lmiui/maml/VibrateCommand$EffectType;

    if-ne v1, v2, :cond_e

    .line 80
    const/16 v1, 0x10

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/maml/VibrateCommand;->mWaveform:I

    .line 81
    const-string v1, "wafeform"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 82
    .local v15, waveform:Ljava/lang/String;
    const-string v1, "square"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 83
    const/16 v1, 0x10

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/maml/VibrateCommand;->mWaveform:I

    .line 93
    :cond_7
    :goto_3
    new-instance v1, Lcom/immersion/PeriodicEffectDefinition;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/maml/VibrateCommand;->mStyle:I

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/VibrateCommand;->mWaveform:I

    or-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/immersion/PeriodicEffectDefinition;-><init>(IIIIIIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/VibrateCommand;->mPeriodicEffectDefinition:Lcom/immersion/PeriodicEffectDefinition;

    goto/16 :goto_1

    .line 72
    .end local v15           #waveform:Ljava/lang/String;
    :cond_8
    const-string v1, "strong"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 73
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/maml/VibrateCommand;->mStyle:I

    goto :goto_2

    .line 74
    :cond_9
    const-string v1, "sharp"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 75
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/maml/VibrateCommand;->mStyle:I

    goto :goto_2

    .line 84
    .restart local v15       #waveform:Ljava/lang/String;
    :cond_a
    const-string v1, "triangle"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 85
    const/16 v1, 0x20

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/maml/VibrateCommand;->mWaveform:I

    goto :goto_3

    .line 86
    :cond_b
    const-string v1, "sine"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 87
    const/16 v1, 0x30

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/maml/VibrateCommand;->mWaveform:I

    goto :goto_3

    .line 88
    :cond_c
    const-string v1, "sawtoothup"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 89
    const/16 v1, 0x40

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/maml/VibrateCommand;->mWaveform:I

    goto :goto_3

    .line 90
    :cond_d
    const-string v1, "sawtoothdown"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 91
    const/16 v1, 0x50

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/maml/VibrateCommand;->mWaveform:I

    goto :goto_3

    .line 95
    .end local v15           #waveform:Ljava/lang/String;
    :cond_e
    new-instance v1, Lcom/immersion/MagSweepEffectDefinition;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/VibrateCommand;->mStyle:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/immersion/MagSweepEffectDefinition;-><init>(IIIIIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/VibrateCommand;->mMagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    goto/16 :goto_1

    .line 99
    .end local v13           #style:Ljava/lang/String;
    :pswitch_1
    const-string v1, "fileName"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, fileName:Ljava/lang/String;
    const-string v1, "fileNameExp"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v12

    .line 101
    .local v12, fileNameExp:Lmiui/maml/data/Expression;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-nez v12, :cond_f

    .line 102
    const-string v1, "VibrateCommand"

    const-string v2, "invalid parameters in VibrateCommand, no ivt file name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v1, Lmiui/maml/VibrateCommand$EffectType;->Invalid:Lmiui/maml/VibrateCommand$EffectType;

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/VibrateCommand;->mType:Lmiui/maml/VibrateCommand$EffectType;

    goto/16 :goto_1

    .line 105
    :cond_f
    new-instance v1, Lmiui/maml/util/TextFormatter;

    invoke-direct {v1, v11, v12}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Lmiui/maml/data/Expression;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/VibrateCommand;->mIvtFileName:Lmiui/maml/util/TextFormatter;

    .line 106
    new-instance v1, Lmiui/maml/util/TextFormatter;

    const-string v2, "effectName"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "effectNameExp"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Lmiui/maml/data/Expression;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/VibrateCommand;->mIvtEffectName:Lmiui/maml/util/TextFormatter;

    goto/16 :goto_1

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static normalize(III)I
    .locals 0
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 143
    if-ge p0, p1, :cond_0

    .line 148
    .end local p1
    :goto_0
    return p1

    .line 145
    .restart local p1
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    .line 146
    goto :goto_0

    :cond_1
    move p1, p0

    .line 148
    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 7

    .prologue
    const/16 v6, 0x2710

    const/4 v5, 0x0

    .line 117
    iget-object v2, p0, Lmiui/maml/VibrateCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getImmVibrateManager()Lmiui/maml/ImmVibrateManager;

    move-result-object v0

    .line 118
    .local v0, immVibrateManager:Lmiui/maml/ImmVibrateManager;
    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v2, p0, Lmiui/maml/VibrateCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v1, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .line 122
    .local v1, v:Lmiui/maml/data/Variables;
    sget-object v2, Lmiui/maml/VibrateCommand$1;->$SwitchMap$miui$maml$VibrateCommand$EffectType:[I

    iget-object v3, p0, Lmiui/maml/VibrateCommand;->mType:Lmiui/maml/VibrateCommand$EffectType;

    invoke-virtual {v3}, Lmiui/maml/VibrateCommand$EffectType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 124
    :pswitch_0
    iget-object v2, p0, Lmiui/maml/VibrateCommand;->mPeriodicEffectDefinition:Lcom/immersion/PeriodicEffectDefinition;

    iget-object v3, p0, Lmiui/maml/VibrateCommand;->mDuration:Lmiui/maml/data/Expression;

    invoke-virtual {v3, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/immersion/PeriodicEffectDefinition;->setDuration(I)V

    .line 125
    iget-object v2, p0, Lmiui/maml/VibrateCommand;->mPeriodicEffectDefinition:Lcom/immersion/PeriodicEffectDefinition;

    iget-object v3, p0, Lmiui/maml/VibrateCommand;->mMagnitude:Lmiui/maml/data/Expression;

    invoke-virtual {v3, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3, v5, v6}, Lmiui/maml/VibrateCommand;->normalize(III)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/immersion/PeriodicEffectDefinition;->setMagnitude(I)V

    .line 126
    iget-object v2, p0, Lmiui/maml/VibrateCommand;->mPeriodicEffectDefinition:Lcom/immersion/PeriodicEffectDefinition;

    iget-object v3, p0, Lmiui/maml/VibrateCommand;->mPeriod:Lmiui/maml/data/Expression;

    invoke-virtual {v3, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/immersion/PeriodicEffectDefinition;->setPeriod(I)V

    .line 127
    iget-object v2, p0, Lmiui/maml/VibrateCommand;->mPeriodicEffectDefinition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v0, v2}, Lmiui/maml/ImmVibrateManager;->playPeriodicEffect(Lcom/immersion/PeriodicEffectDefinition;)V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v2, p0, Lmiui/maml/VibrateCommand;->mMagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    iget-object v3, p0, Lmiui/maml/VibrateCommand;->mDuration:Lmiui/maml/data/Expression;

    invoke-virtual {v3, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    .line 131
    iget-object v2, p0, Lmiui/maml/VibrateCommand;->mMagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    iget-object v3, p0, Lmiui/maml/VibrateCommand;->mMagnitude:Lmiui/maml/data/Expression;

    invoke-virtual {v3, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3, v5, v6}, Lmiui/maml/VibrateCommand;->normalize(III)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/immersion/MagSweepEffectDefinition;->setMagnitude(I)V

    .line 132
    iget-object v2, p0, Lmiui/maml/VibrateCommand;->mMagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v2}, Lmiui/maml/ImmVibrateManager;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)V

    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v2, p0, Lmiui/maml/VibrateCommand;->mIvtFileName:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v2, v1}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/VibrateCommand;->mIvtEffectName:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v3, v1}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lmiui/maml/ImmVibrateManager;->playIvtEffect(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
