.class public Lmiui/provider/yellowpage/utils/Constants$Scheme;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/yellowpage/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Scheme"
.end annotation


# static fields
.field public static final HTTP:Ljava/lang/String; = "http://"

.field public static final HTTPS:Ljava/lang/String; = "https://"

.field public static final MAILTO:Ljava/lang/String; = "mailto"

.field public static final SMSTO:Ljava/lang/String; = "smsto"

.field public static final TEL:Ljava/lang/String; = "tel"


# instance fields
.field final synthetic this$0:Lmiui/provider/yellowpage/utils/Constants;


# direct methods
.method public constructor <init>(Lmiui/provider/yellowpage/utils/Constants;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lmiui/provider/yellowpage/utils/Constants$Scheme;->this$0:Lmiui/provider/yellowpage/utils/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
