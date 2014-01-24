.class public Lmiui/maml/elements/VariableArrayElement;
.super Lmiui/maml/elements/ScreenElement;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/VariableArrayElement$Item;,
        Lmiui/maml/elements/VariableArrayElement$Var;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VarArray"


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/VariableArrayElement$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mIsStringType:Z

.field private mVars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/VariableArrayElement$Var;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 3
    .parameter "ele"
    .parameter "root"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 155
    if-eqz p1, :cond_0

    .line 156
    const-string v0, "string"

    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/VariableArrayElement;->mIsStringType:Z

    .line 158
    const-string v0, "Vars"

    invoke-static {p1, v0}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "Var"

    new-instance v2, Lmiui/maml/elements/VariableArrayElement$1;

    invoke-direct {v2, p0}, Lmiui/maml/elements/VariableArrayElement$1;-><init>(Lmiui/maml/elements/VariableArrayElement;)V

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 165
    const-string v0, "Items"

    invoke-static {p1, v0}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "Item"

    new-instance v2, Lmiui/maml/elements/VariableArrayElement$2;

    invoke-direct {v2, p0}, Lmiui/maml/elements/VariableArrayElement$2;-><init>(Lmiui/maml/elements/VariableArrayElement;)V

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 172
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/VariableArrayElement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lmiui/maml/elements/VariableArrayElement;->mIsStringType:Z

    return v0
.end method

.method static synthetic access$100(Lmiui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 177
    return-void
.end method

.method protected doTick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 181
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 182
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 183
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/VariableArrayElement$Var;

    invoke-virtual {v2}, Lmiui/maml/elements/VariableArrayElement$Var;->tick()V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 188
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 189
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 190
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/VariableArrayElement$Var;

    invoke-virtual {v2}, Lmiui/maml/elements/VariableArrayElement$Var;->init()V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method
