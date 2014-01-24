.class Lmiui/analytics/ObjectBuilder$BuilderData;
.super Ljava/lang/Object;
.source "ObjectBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/analytics/ObjectBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BuilderData"
.end annotation


# instance fields
.field mTag:Ljava/lang/String;

.field mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiui/analytics/ObjectBuilder;


# direct methods
.method constructor <init>(Lmiui/analytics/ObjectBuilder;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 7
    .local p0, this:Lmiui/analytics/ObjectBuilder$BuilderData;,"Lmiui/analytics/ObjectBuilder<TT;>.BuilderData;"
    .local p2, t:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    iput-object p1, p0, Lmiui/analytics/ObjectBuilder$BuilderData;->this$0:Lmiui/analytics/ObjectBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lmiui/analytics/ObjectBuilder$BuilderData;->mType:Ljava/lang/Class;

    .line 9
    iput-object p3, p0, Lmiui/analytics/ObjectBuilder$BuilderData;->mTag:Ljava/lang/String;

    .line 10
    return-void
.end method
