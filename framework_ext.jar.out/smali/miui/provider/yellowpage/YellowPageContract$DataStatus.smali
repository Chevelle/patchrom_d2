.class public interface abstract Lmiui/provider/yellowpage/YellowPageContract$DataStatus;
.super Ljava/lang/Object;
.source "YellowPageContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataStatus"
.end annotation


# static fields
.field public static final CONTNET_URI:Landroid/net/Uri; = null

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DIRECTORY:Ljava/lang/String; = "data_status"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 319
    const-string v0, "content://miui.yellowpage/data_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/yellowpage/YellowPageContract$DataStatus;->CONTNET_URI:Landroid/net/Uri;

    return-void
.end method
