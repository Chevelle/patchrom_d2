.class Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/HanziToPinyin$PinYinToZhuYin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field public ch:C

.field public children:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;

.field public next:Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;

.field public output:Ljava/lang/String;

.field public specials:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/HanziToPinyin$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 422
    invoke-direct {p0}, Lmiui/util/HanziToPinyin$PinYinToZhuYin$Node;-><init>()V

    return-void
.end method
