.class Landroid/test/BandwidthTestCase$1;
.super Ljava/lang/Object;
.source "BandwidthTestCase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/test/BandwidthTestCase;->runTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/BandwidthTestCase;

.field final synthetic val$exceptions:[Ljava/lang/Throwable;

.field final synthetic val$repetitive:Z

.field final synthetic val$testMethod:Ljava/lang/reflect/Method;

.field final synthetic val$tolerance:I


# direct methods
.method constructor <init>(Landroid/test/BandwidthTestCase;Ljava/lang/reflect/Method;IZ[Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Landroid/test/BandwidthTestCase$1;->this$0:Landroid/test/BandwidthTestCase;

    iput-object p2, p0, Landroid/test/BandwidthTestCase$1;->val$testMethod:Ljava/lang/reflect/Method;

    iput p3, p0, Landroid/test/BandwidthTestCase$1;->val$tolerance:I

    iput-boolean p4, p0, Landroid/test/BandwidthTestCase$1;->val$repetitive:Z

    iput-object p5, p0, Landroid/test/BandwidthTestCase$1;->val$exceptions:[Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Landroid/test/BandwidthTestCase$1;->this$0:Landroid/test/BandwidthTestCase;

    iget-object v2, p0, Landroid/test/BandwidthTestCase$1;->val$testMethod:Ljava/lang/reflect/Method;

    iget v3, p0, Landroid/test/BandwidthTestCase$1;->val$tolerance:I

    iget-boolean v4, p0, Landroid/test/BandwidthTestCase$1;->val$repetitive:Z

    #calls: Landroid/test/BandwidthTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V
    invoke-static {v1, v2, v3, v4}, Landroid/test/BandwidthTestCase;->access$000(Landroid/test/BandwidthTestCase;Ljava/lang/reflect/Method;IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, throwable:Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/test/BandwidthTestCase$1;->val$exceptions:[Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0
.end method
