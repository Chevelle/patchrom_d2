.class public Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
.super Ljava/lang/Object;
.source "SmsMmsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VcardContent"
.end annotation


# instance fields
.field public email:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public tel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->name:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->email:Ljava/lang/String;

    return-void
.end method
