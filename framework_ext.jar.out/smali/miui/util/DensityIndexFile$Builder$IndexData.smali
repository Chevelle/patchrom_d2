.class Lmiui/util/DensityIndexFile$Builder$IndexData;
.super Ljava/lang/Object;
.source "DensityIndexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DensityIndexFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexData"
.end annotation


# instance fields
.field mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

.field mDataItemHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/DensityIndexFile$Builder$DataItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field mDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/util/DensityIndexFile$Builder$Item;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultValue:Lmiui/util/DensityIndexFile$Builder$Item;

.field mIndexDataGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/DensityIndexFile$Builder$Item;",
            ">;>;"
        }
    .end annotation
.end field

.field mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "dataItemCount"

    .prologue
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    .line 756
    new-array v0, p1, [Lmiui/util/DensityIndexFile$DataItemDescription;

    iput-object v0, p0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    .line 757
    return-void
.end method
