.class Lmiui/maml/ScreenElementRoot$FramerateHelper;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FramerateHelper"
.end annotation


# instance fields
.field private mFramerateText:Ljava/lang/String;

.field private mPaint:Landroid/text/TextPaint;

.field private mRealFrameRate:I

.field private mShowingFramerate:I

.field private mTextX:I

.field private mTextY:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 156
    const/high16 v0, -0x1

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1, v2, v2}, Lmiui/maml/ScreenElementRoot$FramerateHelper;-><init>(IIII)V

    .line 157
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .parameter "color"
    .parameter "size"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mPaint:Landroid/text/TextPaint;

    .line 160
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 161
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mPaint:Landroid/text/TextPaint;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 162
    iput p3, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mTextX:I

    .line 163
    iput p4, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mTextY:I

    .line 164
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 167
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mFramerateText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mShowingFramerate:I

    iget v1, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mRealFrameRate:I

    if-eq v0, v1, :cond_1

    .line 168
    :cond_0
    iget v0, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mRealFrameRate:I

    iput v0, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mShowingFramerate:I

    .line 169
    const-string v0, "FPS %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mShowingFramerate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mFramerateText:Ljava/lang/String;

    .line 171
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mFramerateText:Ljava/lang/String;

    iget v1, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mTextX:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mTextY:I

    int-to-float v2, v2

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 172
    return-void
.end method

.method public set(I)V
    .locals 0
    .parameter "framerate"

    .prologue
    .line 175
    iput p1, p0, Lmiui/maml/ScreenElementRoot$FramerateHelper;->mRealFrameRate:I

    .line 176
    return-void
.end method
