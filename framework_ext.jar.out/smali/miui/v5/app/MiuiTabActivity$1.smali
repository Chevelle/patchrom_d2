.class Lmiui/v5/app/MiuiTabActivity$1;
.super Ljava/lang/Object;
.source "MiuiTabActivity.java"

# interfaces
.implements Lmiui/v5/util/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/app/MiuiTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/v5/util/Factory",
        "<",
        "Lmiui/v5/widget/PageScrollEffect;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/v5/app/MiuiTabActivity;


# direct methods
.method constructor <init>(Lmiui/v5/app/MiuiTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lmiui/v5/app/MiuiTabActivity$1;->this$0:Lmiui/v5/app/MiuiTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/v5/app/MiuiTabActivity$1;->create(Ljava/lang/Integer;)Lmiui/v5/widget/PageScrollEffect;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/Integer;)Lmiui/v5/widget/PageScrollEffect;
    .locals 2
    .parameter "from"

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/v5/app/MiuiTabActivity$1;->this$0:Lmiui/v5/app/MiuiTabActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/v5/app/MiuiTabActivity;->createPageScrollEffect(I)Lmiui/v5/widget/PageScrollEffect;

    move-result-object v0

    goto :goto_0
.end method
