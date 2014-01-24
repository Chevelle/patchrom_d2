.class public Lmiui/maml/elements/TextScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "TextScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/TextScreenElement$1;
    }
.end annotation


# static fields
.field private static final CRLF:Ljava/lang/String; = "\n"

.field private static final DEFAULT_SIZE:I = 0x12

.field private static final LOG_TAG:Ljava/lang/String; = "TextScreenElement"

.field private static final MARQUEE_FRAMERATE:I = 0x1e

.field private static final PADDING:I = 0x32

.field private static final RAW_CRLF:Ljava/lang/String; = "\\n"

.field public static final TAG_NAME:Ljava/lang/String; = "Text"

.field public static final TEXT_HEIGHT:Ljava/lang/String; = "text_height"

.field public static final TEXT_WIDTH:Ljava/lang/String; = "text_width"


# instance fields
.field private mColorParser:Lmiui/maml/util/ColorParser;

.field private mFormatter:Lmiui/maml/util/TextFormatter;

.field private mMarqueeGap:I

.field private mMarqueePos:F

.field private mMarqueeSpeed:I

.field private mMultiLine:Z

.field private mPaint:Landroid/text/TextPaint;

.field private mPreviousTime:J

.field private mSetText:Ljava/lang/String;

.field private mShadowColorParser:Lmiui/maml/util/ColorParser;

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShouldMarquee:Z

.field private mSizeExpression:Lmiui/maml/data/Expression;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mText:Ljava/lang/String;

.field private mTextHeight:F

.field private mTextHeightVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mTextLayout:Landroid/text/StaticLayout;

.field private mTextSize:F

.field private mTextWidth:F

.field private mTextWidthVar:Lmiui/maml/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .parameter "node"
    .parameter "root"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 45
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 50
    const v0, 0x7f7fffff

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 78
    const-wide/high16 v0, 0x4032

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/TextScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    .line 90
    invoke-direct {p0, p1}, Lmiui/maml/elements/TextScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 91
    return-void
.end method

.method private getAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    .prologue
    .line 290
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 291
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v1, Lmiui/maml/elements/TextScreenElement$1;->$SwitchMap$miui$maml$elements$ScreenElement$Align:[I

    iget-object v2, p0, Lmiui/maml/elements/TextScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 302
    :goto_0
    return-object v0

    .line 293
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 294
    goto :goto_0

    .line 296
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 297
    goto :goto_0

    .line 299
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "node"

    .prologue
    const/4 v5, 0x0

    .line 94
    if-nez p1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-boolean v1, p0, Lmiui/maml/elements/TextScreenElement;->mHasName:Z

    if-eqz v1, :cond_1

    .line 98
    new-instance v1, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/maml/elements/TextScreenElement;->mName:Ljava/lang/String;

    const-string v3, "text_width"

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidthVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 99
    new-instance v1, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/maml/elements/TextScreenElement;->mName:Ljava/lang/String;

    const-string v3, "text_height"

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mTextHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 101
    :cond_1
    invoke-static {p1}, Lmiui/maml/util/TextFormatter;->fromElement(Lorg/w3c/dom/Element;)Lmiui/maml/util/TextFormatter;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    .line 102
    invoke-static {p1}, Lmiui/maml/util/ColorParser;->fromElement(Lorg/w3c/dom/Element;)Lmiui/maml/util/ColorParser;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mColorParser:Lmiui/maml/util/ColorParser;

    .line 103
    const-string v1, "size"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mSizeExpression:Lmiui/maml/data/Expression;

    .line 104
    const-string v1, "marqueeSpeed"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    .line 105
    const-string v1, "bold"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 106
    .local v0, bold:Z
    const-string v1, "spacingMult"

    const/high16 v2, 0x3f80

    invoke-static {p1, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/elements/TextScreenElement;->mSpacingMult:F

    .line 107
    const-string v1, "spacingAdd"

    invoke-static {p1, v1, v5}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/elements/TextScreenElement;->mSpacingAdd:F

    .line 108
    const-string v1, "marqueeGap"

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueeGap:I

    .line 109
    const-string v1, "multiLine"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    .line 110
    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 111
    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const-wide/high16 v2, 0x4032

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/TextScreenElement;->scale(D)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 112
    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 113
    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 114
    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/util/UiUtils;->replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 116
    const-string v1, "shadowRadius"

    invoke-static {p1, v1, v5}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    .line 117
    const-string v1, "shadowDx"

    invoke-static {p1, v1, v5}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    .line 118
    const-string v1, "shadowDy"

    invoke-static {p1, v1, v5}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    .line 119
    const-string v1, "shadowColor"

    invoke-static {p1, v1}, Lmiui/maml/util/ColorParser;->fromElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/maml/util/ColorParser;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mShadowColorParser:Lmiui/maml/util/ColorParser;

    .line 120
    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget v2, p0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    iget v3, p0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    iget v4, p0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getShadowColor()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto/16 :goto_0
.end method

.method private updateTextSize()V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSizeExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSizeExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lmiui/maml/elements/TextScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/TextScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    .line 279
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget v1, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 280
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    .line 281
    iget v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    .line 282
    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    iget v1, p0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 287
    :cond_0
    return-void
.end method

.method private updateTextWidth()V
    .locals 6

    .prologue
    .line 263
    const/4 v3, 0x0

    iput v3, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 264
    iget-object v3, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, lines:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 266
    iget-object v3, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 267
    .local v2, w:F
    iget v3, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 268
    iput v2, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    .end local v2           #w:F
    :cond_1
    iget-boolean v3, p0, Lmiui/maml/elements/TextScreenElement;->mHasName:Z

    if-eqz v3, :cond_2

    .line 272
    iget-object v3, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidthVar:Lmiui/maml/util/IndexedNumberVariable;

    iget v4, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    invoke-virtual {p0, v4}, Lmiui/maml/elements/TextScreenElement;->descale(F)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 274
    :cond_2
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 24
    .parameter "c"

    .prologue
    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    :goto_0
    return-void

    .line 128
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getAlpha()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getShadowColor()I

    move-result v8

    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getWidth()F

    move-result v21

    .line 133
    .local v21, width:F
    const/16 v19, 0x0

    .line 134
    .local v19, specifyWidth:Z
    const/4 v2, 0x0

    cmpl-float v2, v21, v2

    if-ltz v2, :cond_1

    .line 135
    const/16 v19, 0x1

    .line 137
    :cond_1
    const/4 v2, 0x0

    cmpg-float v2, v21, v2

    if-ltz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v2, v21, v2

    if-lez v2, :cond_3

    .line 138
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    move/from16 v21, v0

    .line 141
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getHeight()F

    move-result v14

    .line 142
    .local v14, height:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v17

    .line 143
    .local v17, lineHeight:F
    const/4 v2, 0x0

    cmpg-float v2, v14, v2

    if-gez v2, :cond_4

    .line 144
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    .line 146
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lmiui/maml/elements/TextScreenElement;->getLeft(FF)F

    move-result v22

    .line 147
    .local v22, x:F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lmiui/maml/elements/TextScreenElement;->getTop(FF)F

    move-result v23

    .line 149
    .local v23, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 151
    const/4 v11, 0x0

    .line 152
    .local v11, extendLeft:F
    const/4 v12, 0x0

    .line 153
    .local v12, extendRight:F
    const/4 v13, 0x0

    .line 154
    .local v13, extendTop:F
    const/4 v10, 0x0

    .line 155
    .local v10, extendBottom:F
    move-object/from16 v0, p0

    iget v2, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 156
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    sub-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 157
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    add-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 158
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    sub-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 159
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    add-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 162
    :cond_5
    if-eqz v19, :cond_6

    const/4 v11, 0x0

    .end local v11           #extendLeft:F
    :cond_6
    add-float v2, v22, v11

    const/high16 v3, 0x4120

    sub-float v3, v23, v3

    add-float/2addr v3, v13

    add-float v6, v22, v21

    if-eqz v19, :cond_7

    const/4 v12, 0x0

    .end local v12           #extendRight:F
    :cond_7
    add-float/2addr v6, v12

    add-float v7, v23, v14

    const/high16 v8, 0x41a0

    add-float/2addr v7, v8

    add-float/2addr v7, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_8

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    .line 167
    .local v9, count:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-ge v15, v9, :cond_9

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v15}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    .line 169
    .local v4, start:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v15}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v5

    .line 170
    .local v5, end:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v15}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v20

    .line 171
    .local v20, top:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v15}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v16

    .line 172
    .local v16, left:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    add-float v6, v22, v16

    add-float v2, v23, v17

    move/from16 v0, v20

    int-to-float v7, v0

    add-float/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 167
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 175
    .end local v4           #start:I
    .end local v5           #end:I
    .end local v9           #count:I
    .end local v15           #i:I
    .end local v16           #left:F
    .end local v20           #top:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    const v6, 0x7f7fffff

    cmpl-float v2, v2, v6

    if-nez v2, :cond_a

    const/4 v2, 0x0

    :goto_2
    add-float v2, v2, v22

    add-float v6, v23, v17

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 176
    move-object/from16 v0, p0

    iget v2, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueeGap:I

    int-to-float v6, v6

    mul-float/2addr v3, v6

    add-float v18, v2, v3

    .line 177
    .local v18, nextPos:F
    cmpg-float v2, v18, v21

    if-gez v2, :cond_9

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    add-float v3, v22, v18

    add-float v6, v23, v17

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 182
    .end local v18           #nextPos:F
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 175
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    goto :goto_2
.end method

.method protected doTick(J)V
    .locals 18
    .parameter "currentTime"

    .prologue
    .line 209
    invoke-super/range {p0 .. p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 260
    :goto_0
    return-void

    .line 213
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 215
    .local v13, preText:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    goto :goto_0

    .line 221
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    .line 222
    .local v14, preTextSize:F
    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->updateTextSize()V

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v13, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    cmpl-float v3, v14, v3

    if-eqz v3, :cond_7

    :cond_2
    const/16 v16, 0x1

    .line 225
    .local v16, shouldUpdate:Z
    :goto_1
    if-eqz v16, :cond_3

    .line 226
    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->updateTextWidth()V

    .line 229
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getWidth()F

    move-result v17

    .line 231
    .local v17, width:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 232
    .local v11, containsCRLF:Z
    const/4 v3, 0x0

    cmpl-float v3, v17, v3

    if-lez v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v3, v3, v17

    if-lez v3, :cond_8

    const/4 v15, 0x1

    .line 233
    .local v15, restrictWidth:Z
    :goto_2
    if-nez v11, :cond_4

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-eqz v3, :cond_a

    .line 234
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_5

    if-eqz v16, :cond_6

    .line 235
    :cond_5
    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-eqz v3, :cond_9

    move/from16 v12, v17

    .line 236
    .local v12, layoutWidth:F
    :goto_3
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    float-to-int v6, v12

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/TextScreenElement;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/TextScreenElement;->mSpacingAdd:F

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    .line 239
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmiui/maml/elements/TextScreenElement;->mHasName:Z

    if-eqz v3, :cond_6

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/maml/elements/TextScreenElement;->descale(F)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 259
    .end local v12           #layoutWidth:F
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v3, :cond_e

    const/high16 v3, 0x41f0

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lmiui/maml/elements/TextScreenElement;->requestFramerate(F)V

    goto/16 :goto_0

    .line 224
    .end local v11           #containsCRLF:Z
    .end local v15           #restrictWidth:Z
    .end local v16           #shouldUpdate:Z
    .end local v17           #width:F
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 232
    .restart local v11       #containsCRLF:Z
    .restart local v16       #shouldUpdate:Z
    .restart local v17       #width:F
    :cond_8
    const/4 v15, 0x0

    goto :goto_2

    .line 235
    .restart local v15       #restrictWidth:Z
    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    goto :goto_3

    .line 243
    :cond_a
    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    if-lez v3, :cond_d

    .line 244
    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    const v4, 0x7f7fffff

    cmpl-float v3, v3, v4

    if-nez v3, :cond_c

    .line 246
    const/high16 v3, 0x4248

    move-object/from16 v0, p0

    iput v3, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 253
    :cond_b
    :goto_6
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/elements/TextScreenElement;->mPreviousTime:J

    .line 254
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    goto :goto_4

    .line 248
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lmiui/maml/elements/TextScreenElement;->mPreviousTime:J

    sub-long v6, p1, v6

    mul-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x447a

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 249
    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    neg-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    .line 250
    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueeGap:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    goto :goto_6

    .line 256
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 257
    const v3, 0x7f7fffff

    move-object/from16 v0, p0

    iput v3, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    goto/16 :goto_4

    .line 259
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_5
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    .line 204
    const v0, 0x7f7fffff

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 205
    return-void
.end method

.method protected getColor()I
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mColorParser:Lmiui/maml/util/ColorParser;

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/util/ColorParser;->getColor(Lmiui/maml/data/Variables;)I

    move-result v0

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/util/TextFormatter;->getFormat(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getShadowColor()I
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mShadowColorParser:Lmiui/maml/util/ColorParser;

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/util/ColorParser;->getColor(Lmiui/maml/data/Variables;)I

    move-result v0

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 321
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    .line 332
    :cond_0
    :goto_0
    return-object v0

    .line 325
    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 327
    const-string v1, "\\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-boolean v1, p0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-nez v1, :cond_0

    .line 329
    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 187
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    .line 188
    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 189
    const v0, 0x7f7fffff

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 190
    invoke-direct {p0}, Lmiui/maml/elements/TextScreenElement;->updateTextSize()V

    .line 191
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0}, Lmiui/maml/elements/TextScreenElement;->updateTextWidth()V

    .line 194
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    .line 195
    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mHasName:Z

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    iget v1, p0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    invoke-virtual {p0, v1}, Lmiui/maml/elements/TextScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 198
    :cond_1
    return-void

    .line 194
    :cond_2
    iget v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    goto :goto_0
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 307
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 308
    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/high16 v0, 0x41f0

    :goto_0
    invoke-virtual {p0, v0}, Lmiui/maml/elements/TextScreenElement;->requestFramerate(F)V

    .line 309
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 316
    iput-object p1, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    .line 317
    return-void
.end method
