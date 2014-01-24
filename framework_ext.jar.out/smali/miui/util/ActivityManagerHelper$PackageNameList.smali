.class public Lmiui/util/ActivityManagerHelper$PackageNameList;
.super Ljava/lang/Object;
.source "ActivityManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/ActivityManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageNameList"
.end annotation


# instance fields
.field public final mOrderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPlayingCount:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter "playingCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lmiui/util/ActivityManagerHelper$PackageNameList;->mOrderList:Ljava/util/List;

    .line 72
    iput p2, p0, Lmiui/util/ActivityManagerHelper$PackageNameList;->mPlayingCount:I

    .line 73
    return-void
.end method
