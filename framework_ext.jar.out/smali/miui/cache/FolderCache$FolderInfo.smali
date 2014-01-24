.class public Lmiui/cache/FolderCache$FolderInfo;
.super Ljava/lang/Object;
.source "FolderCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cache/FolderCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderInfo"
.end annotation


# instance fields
.field public files:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/cache/FolderCache$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public filesCount:I

.field public modifiedTime:J

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
