.class Lcom/android/server/firewall/PortFilter;
.super Ljava/lang/Object;
.source "PortFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field private static final ATTR_EQUALS:Ljava/lang/String; = "equals"

.field private static final ATTR_MAX:Ljava/lang/String; = "max"

.field private static final ATTR_MIN:Ljava/lang/String; = "min"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory; = null

.field private static final NO_BOUND:I = -0x1


# instance fields
.field private final mLowerBound:I

.field private final mUpperBound:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/android/server/firewall/PortFilter$1;

    const-string v1, "port"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/PortFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/PortFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .parameter "lowerBound"
    .parameter "upperBound"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/server/firewall/PortFilter;->mLowerBound:I

    .line 40
    iput p2, p0, Lcom/android/server/firewall/PortFilter;->mUpperBound:I

    .line 41
    return-void
.end method

.method synthetic constructor <init>(IILcom/android/server/firewall/PortFilter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/server/firewall/PortFilter;-><init>(II)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 4
    .parameter "ifw"
    .parameter "resolvedComponent"
    .parameter "intent"
    .parameter "callerUid"
    .parameter "callerPid"
    .parameter "resolvedType"
    .parameter "receivingUid"

    .prologue
    const/4 v3, -0x1

    .line 46
    const/4 v0, -0x1

    .line 47
    .local v0, port:I
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 48
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v0

    .line 51
    :cond_0
    if-eq v0, v3, :cond_3

    iget v2, p0, Lcom/android/server/firewall/PortFilter;->mLowerBound:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/firewall/PortFilter;->mLowerBound:I

    if-gt v2, v0, :cond_3

    :cond_1
    iget v2, p0, Lcom/android/server/firewall/PortFilter;->mUpperBound:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/firewall/PortFilter;->mUpperBound:I

    if-lt v2, v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method
