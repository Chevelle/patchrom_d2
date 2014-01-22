.class Lcom/android/internal/app/ThemeUtils$ThemedUiContext;
.super Landroid/content/ContextWrapper;
.source "ThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ThemeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemedUiContext"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/android/internal/app/ThemeUtils$ThemedUiContext;->mPackageName:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/app/ThemeUtils$ThemedUiContext;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
