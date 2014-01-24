.class public interface abstract Lmiui/provider/yellowpage/YellowPageContract$Provider;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Provider"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DIRECTORY:Ljava/lang/String; = "provider"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final ICON_BIG:Ljava/lang/String; = "icon_big"

.field public static final ICON_URL:Ljava/lang/String; = "icon_url"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PID:Ljava/lang/String; = "pid"

.field public static final PID_DEFAULT:I = 0x0

.field public static final PNAME_DEFAULT:Ljava/lang/String; = "MIUI"

.field public static final VERSION_KEY:Ljava/lang/String; = "provider"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    const-string v0, "content://miui.yellowpage/provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$Provider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
