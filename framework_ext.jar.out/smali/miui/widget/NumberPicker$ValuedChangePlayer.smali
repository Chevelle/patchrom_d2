.class Lmiui/widget/NumberPicker$ValuedChangePlayer;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValuedChangePlayer"
.end annotation


# instance fields
.field private mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mSoundId:I

.field private mSoundPool:Landroid/media/SoundPool;

.field final synthetic this$0:Lmiui/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 450
    iput-object p1, p0, Lmiui/widget/NumberPicker$ValuedChangePlayer;->this$0:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lmiui/widget/NumberPicker$ValuedChangePlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 452
    iget-object v0, p0, Lmiui/widget/NumberPicker$ValuedChangePlayer;->mSoundPool:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/NumberPickerValueChange.ogg"

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker$ValuedChangePlayer;->mSoundId:I

    .line 453
    return-void
.end method

.method static synthetic access$002(Lmiui/widget/NumberPicker$ValuedChangePlayer;Landroid/widget/NumberPicker$OnValueChangeListener;)Landroid/widget/NumberPicker$OnValueChangeListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 445
    iput-object p1, p0, Lmiui/widget/NumberPicker$ValuedChangePlayer;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    return-object p1
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 7
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 457
    iget-object v0, p0, Lmiui/widget/NumberPicker$ValuedChangePlayer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lmiui/widget/NumberPicker$ValuedChangePlayer;->mSoundId:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 458
    iget-object v0, p0, Lmiui/widget/NumberPicker$ValuedChangePlayer;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lmiui/widget/NumberPicker$ValuedChangePlayer;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    .line 461
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lmiui/widget/NumberPicker$ValuedChangePlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 465
    return-void
.end method
