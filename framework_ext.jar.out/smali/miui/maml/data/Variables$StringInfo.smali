.class Lmiui/maml/data/Variables$StringInfo;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringInfo"
.end annotation


# instance fields
.field mValue:Ljava/lang/String;

.field mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "value"
    .parameter "version"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lmiui/maml/data/Variables$StringInfo;->mValue:Ljava/lang/String;

    .line 42
    iput p2, p0, Lmiui/maml/data/Variables$StringInfo;->mVersion:I

    .line 43
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 46
    iput-object p1, p0, Lmiui/maml/data/Variables$StringInfo;->mValue:Ljava/lang/String;

    .line 47
    iget v0, p0, Lmiui/maml/data/Variables$StringInfo;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/maml/data/Variables$StringInfo;->mVersion:I

    .line 48
    return-void
.end method
