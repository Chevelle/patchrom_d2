.class Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;
.super Ljava/lang/Object;
.source "ViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FragmentInfo"
.end annotation


# instance fields
.field args:Landroid/os/Bundle;

.field clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field fragment:Landroid/app/Fragment;

.field hasActionMenu:Z

.field tab:Landroid/app/ActionBar$Tab;

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;


# direct methods
.method constructor <init>(Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .parameter
    .parameter "tag"
    .parameter
    .parameter "args"
    .parameter "tab"
    .parameter "hasActionMenu"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/ActionBar$Tab;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p3, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Fragment;>;"
    iput-object p1, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->this$0:Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    .line 219
    iput-object p3, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->clazz:Ljava/lang/Class;

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    .line 221
    iput-object p4, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->args:Landroid/os/Bundle;

    .line 222
    iput-object p5, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->tab:Landroid/app/ActionBar$Tab;

    .line 223
    iput-boolean p6, p0, Lcom/miui/internal/v5/app/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    .line 224
    return-void
.end method
