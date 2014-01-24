.class Lmiui/maml/data/VolumeVariableUpdater$1;
.super Ljava/lang/Object;
.source "VolumeVariableUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/VolumeVariableUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/VolumeVariableUpdater;


# direct methods
.method constructor <init>(Lmiui/maml/data/VolumeVariableUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lmiui/maml/data/VolumeVariableUpdater$1;->this$0:Lmiui/maml/data/VolumeVariableUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lmiui/maml/data/VolumeVariableUpdater$1;->this$0:Lmiui/maml/data/VolumeVariableUpdater;

    #getter for: Lmiui/maml/data/VolumeVariableUpdater;->mVolumeType:Lmiui/maml/util/IndexedNumberVariable;
    invoke-static {v0}, Lmiui/maml/data/VolumeVariableUpdater;->access$000(Lmiui/maml/data/VolumeVariableUpdater;)Lmiui/maml/util/IndexedNumberVariable;

    move-result-object v0

    const-wide/high16 v1, -0x4010

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 47
    return-void
.end method
