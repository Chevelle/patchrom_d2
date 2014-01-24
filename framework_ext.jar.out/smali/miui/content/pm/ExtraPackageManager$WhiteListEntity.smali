.class final Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;
.super Ljava/lang/Object;
.source "ExtraPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/pm/ExtraPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WhiteListEntity"
.end annotation


# instance fields
.field pkgName:Ljava/lang/String;

.field signatures:[Landroid/content/pm/Signature;


# direct methods
.method private varargs constructor <init>(Ljava/lang/String;[Landroid/content/pm/Signature;)V
    .locals 0
    .parameter "pkgName"
    .parameter "signatures"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;->pkgName:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;->signatures:[Landroid/content/pm/Signature;

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Landroid/content/pm/Signature;Lmiui/content/pm/ExtraPackageManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lmiui/content/pm/ExtraPackageManager$WhiteListEntity;-><init>(Ljava/lang/String;[Landroid/content/pm/Signature;)V

    return-void
.end method
