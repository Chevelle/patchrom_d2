.class public Lmiui/util/ActivityManagerHelper$PriorityComponent;
.super Ljava/lang/Object;
.source "ActivityManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/ActivityManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PriorityComponent"
.end annotation


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mPriority:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 0
    .parameter "component"
    .parameter "p"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lmiui/util/ActivityManagerHelper$PriorityComponent;->mComponent:Landroid/content/ComponentName;

    .line 124
    iput p2, p0, Lmiui/util/ActivityManagerHelper$PriorityComponent;->mPriority:I

    .line 125
    return-void
.end method
