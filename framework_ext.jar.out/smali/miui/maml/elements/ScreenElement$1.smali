.class synthetic Lmiui/maml/elements/ScreenElement$1;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$miui$maml$elements$ScreenElement$Align:[I

.field static final synthetic $SwitchMap$miui$maml$elements$ScreenElement$AlignV:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 389
    invoke-static {}, Lmiui/maml/elements/ScreenElement$Align;->values()[Lmiui/maml/elements/ScreenElement$Align;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/elements/ScreenElement$1;->$SwitchMap$miui$maml$elements$ScreenElement$Align:[I

    :try_start_0
    sget-object v0, Lmiui/maml/elements/ScreenElement$1;->$SwitchMap$miui$maml$elements$ScreenElement$Align:[I

    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lmiui/maml/elements/ScreenElement$1;->$SwitchMap$miui$maml$elements$ScreenElement$Align:[I

    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->RIGHT:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 374
    :goto_1
    invoke-static {}, Lmiui/maml/elements/ScreenElement$AlignV;->values()[Lmiui/maml/elements/ScreenElement$AlignV;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/elements/ScreenElement$1;->$SwitchMap$miui$maml$elements$ScreenElement$AlignV:[I

    :try_start_2
    sget-object v0, Lmiui/maml/elements/ScreenElement$1;->$SwitchMap$miui$maml$elements$ScreenElement$AlignV:[I

    sget-object v1, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lmiui/maml/elements/ScreenElement$1;->$SwitchMap$miui$maml$elements$ScreenElement$AlignV:[I

    sget-object v1, Lmiui/maml/elements/ScreenElement$AlignV;->BOTTOM:Lmiui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 389
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
