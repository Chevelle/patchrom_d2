.class Lmiui/cache/AsyncLIFORequestManager$Response;
.super Lmiui/cache/PoolElement;
.source "AsyncLIFORequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cache/AsyncLIFORequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/cache/PoolElement",
        "<",
        "Lmiui/cache/AsyncLIFORequestManager$Response",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$Response;,"Lmiui/cache/AsyncLIFORequestManager$Response<TK;TV;>;"
    invoke-direct {p0}, Lmiui/cache/PoolElement;-><init>()V

    return-void
.end method
