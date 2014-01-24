.class public Lmiui/provider/yellowpage/model/Provider;
.super Ljava/lang/Object;
.source "Provider.java"


# static fields
.field public static final DEFAULT_PROVIDER:Lmiui/provider/yellowpage/model/Provider;


# instance fields
.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconBig:Landroid/graphics/Bitmap;

.field private mId:I

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 12
    new-instance v0, Lmiui/provider/yellowpage/model/Provider;

    const/4 v1, 0x0

    const-string v2, "MIUI"

    invoke-direct {v0, v1, v2, v3, v3}, Lmiui/provider/yellowpage/model/Provider;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    sput-object v0, Lmiui/provider/yellowpage/model/Provider;->DEFAULT_PROVIDER:Lmiui/provider/yellowpage/model/Provider;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "icon"
    .parameter "iconBig"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lmiui/provider/yellowpage/model/Provider;->mId:I

    .line 23
    iput-object p2, p0, Lmiui/provider/yellowpage/model/Provider;->mName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lmiui/provider/yellowpage/model/Provider;->mIcon:Landroid/graphics/Bitmap;

    .line 25
    iput-object p4, p0, Lmiui/provider/yellowpage/model/Provider;->mIconBig:Landroid/graphics/Bitmap;

    .line 26
    return-void
.end method


# virtual methods
.method public getBigIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmiui/provider/yellowpage/model/Provider;->mIconBig:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmiui/provider/yellowpage/model/Provider;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lmiui/provider/yellowpage/model/Provider;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lmiui/provider/yellowpage/model/Provider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isMiui()Z
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lmiui/provider/yellowpage/model/Provider;->mId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
