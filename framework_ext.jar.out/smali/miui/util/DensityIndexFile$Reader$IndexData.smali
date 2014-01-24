.class Lmiui/util/DensityIndexFile$Reader$IndexData;
.super Ljava/lang/Object;
.source "DensityIndexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DensityIndexFile$Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexData"
.end annotation


# instance fields
.field public mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

.field public mDataItems:[[Ljava/lang/Object;

.field public mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

.field public mSizeOfItems:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DensityIndexFile$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 457
    invoke-direct {p0}, Lmiui/util/DensityIndexFile$Reader$IndexData;-><init>()V

    return-void
.end method
