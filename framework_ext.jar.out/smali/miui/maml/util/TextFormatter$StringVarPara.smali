.class Lmiui/maml/util/TextFormatter$StringVarPara;
.super Lmiui/maml/util/TextFormatter$FormatPara;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringVarPara"
.end annotation


# instance fields
.field private mVar:Lmiui/maml/util/IndexedStringVariable;

.field private mVariable:Lmiui/maml/util/Variable;


# direct methods
.method public constructor <init>(Lmiui/maml/util/Variable;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/maml/util/TextFormatter$FormatPara;-><init>(Lmiui/maml/util/TextFormatter$1;)V

    .line 200
    iput-object p1, p0, Lmiui/maml/util/TextFormatter$StringVarPara;->mVariable:Lmiui/maml/util/Variable;

    .line 201
    return-void
.end method


# virtual methods
.method public evaluate(Lmiui/maml/data/Variables;)Ljava/lang/Object;
    .locals 4
    .parameter "var"

    .prologue
    .line 205
    iget-object v1, p0, Lmiui/maml/util/TextFormatter$StringVarPara;->mVar:Lmiui/maml/util/IndexedStringVariable;

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Lmiui/maml/util/IndexedStringVariable;

    iget-object v2, p0, Lmiui/maml/util/TextFormatter$StringVarPara;->mVariable:Lmiui/maml/util/Variable;

    invoke-virtual {v2}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/util/TextFormatter$StringVarPara;->mVariable:Lmiui/maml/util/Variable;

    invoke-virtual {v3}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/util/TextFormatter$StringVarPara;->mVar:Lmiui/maml/util/IndexedStringVariable;

    .line 208
    :cond_0
    iget-object v1, p0, Lmiui/maml/util/TextFormatter$StringVarPara;->mVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v1}, Lmiui/maml/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, string:Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v0, ""

    .end local v0           #string:Ljava/lang/String;
    :cond_1
    return-object v0
.end method
