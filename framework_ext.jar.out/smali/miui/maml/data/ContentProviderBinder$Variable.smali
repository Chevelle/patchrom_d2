.class Lmiui/maml/data/ContentProviderBinder$Variable;
.super Lmiui/maml/data/VariableBinder$Variable;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Variable"
.end annotation


# static fields
.field public static final BLOB_BITMAP:I = 0x3e9


# instance fields
.field private mBlobVar:Lmiui/maml/elements/ImageScreenElement;

.field public mBlocked:Z

.field public mColumn:Ljava/lang/String;

.field public mRow:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "var"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .locals 0
    .parameter "node"
    .parameter "var"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    .line 162
    return-void
.end method


# virtual methods
.method public getImageElement(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ImageScreenElement;
    .locals 1
    .parameter "root"

    .prologue
    .line 188
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mBlobVar:Lmiui/maml/elements/ImageScreenElement;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ImageScreenElement;

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mBlobVar:Lmiui/maml/elements/ImageScreenElement;

    .line 191
    :cond_0
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mBlobVar:Lmiui/maml/elements/ImageScreenElement;

    return-object v0
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 175
    const-string v0, "column"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 176
    const-string v0, "row"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mRow:I

    .line 177
    return-void
.end method

.method protected parseType()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lmiui/maml/data/VariableBinder$Variable;->parseType()V

    .line 182
    const-string v0, "blob.bitmap"

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/16 v0, 0x3e9

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mType:I

    .line 185
    :cond_0
    return-void
.end method

.method public setNull(Lmiui/maml/ScreenElementRoot;)V
    .locals 3
    .parameter "root"

    .prologue
    const/4 v2, 0x0

    .line 195
    iget v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 196
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0, v2}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder$Variable;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v0, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {p0, p1}, Lmiui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lmiui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
