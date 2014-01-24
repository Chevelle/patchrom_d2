.class public Lmiui/maml/util/IndexedNumberVariable;
.super Ljava/lang/Object;
.source "IndexedNumberVariable.java"


# instance fields
.field private final mIndex:I

.field private mVars:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .locals 1
    .parameter "object"
    .parameter "property"
    .parameter "vars"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p3, p1, p2}, Lmiui/maml/data/Variables;->registerNumberVariable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/maml/util/IndexedNumberVariable;->mIndex:I

    .line 17
    iput-object p3, p0, Lmiui/maml/util/IndexedNumberVariable;->mVars:Lmiui/maml/data/Variables;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .locals 1
    .parameter "name"
    .parameter "vars"

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lmiui/maml/util/IndexedNumberVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/util/IndexedNumberVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->getNum(I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lmiui/maml/util/IndexedNumberVariable;->mIndex:I

    return v0
.end method

.method public final getVersion()I
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lmiui/maml/util/IndexedNumberVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/util/IndexedNumberVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->getNumVer(I)I

    move-result v0

    return v0
.end method

.method public final set(D)V
    .locals 1
    .parameter "value"

    .prologue
    .line 21
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 22
    return-void
.end method

.method public final set(Ljava/lang/Double;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 25
    iget-object v0, p0, Lmiui/maml/util/IndexedNumberVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/util/IndexedNumberVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->putNum(ILjava/lang/Double;)V

    .line 26
    return-void
.end method
