.class public final Lmiui/provider/yellowpage/model/Tag$TagAction;
.super Ljava/lang/Object;
.source "Tag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/model/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TagAction"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "act"

.field public static final CALL_IN:I = 0x0

.field public static final CALL_OUT:I = 0x1

.field public static final ONE_RING_CALL_IN:I = 0x4

.field public static final SMS_IN:I = 0x2

.field public static final SMS_OUT:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
