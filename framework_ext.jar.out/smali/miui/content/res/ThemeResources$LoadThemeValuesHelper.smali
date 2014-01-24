.class Lmiui/content/res/ThemeResources$LoadThemeValuesHelper;
.super Ljava/lang/Object;
.source "ThemeResources.java"

# interfaces
.implements Lmiui/content/res/ThemeResources$LoadThemeValuesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThemeValuesHelper"
.end annotation


# instance fields
.field private mFilter:Lmiui/content/res/ThemeResources$FilterInfo;

.field final synthetic this$0:Lmiui/content/res/ThemeResources;


# direct methods
.method private constructor <init>(Lmiui/content/res/ThemeResources;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lmiui/content/res/ThemeResources$LoadThemeValuesHelper;->this$0:Lmiui/content/res/ThemeResources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/content/res/ThemeResources;Lmiui/content/res/ThemeResources$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lmiui/content/res/ThemeResources$LoadThemeValuesHelper;-><init>(Lmiui/content/res/ThemeResources;)V

    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"

    .prologue
    .line 305
    if-eqz p1, :cond_0

    .line 306
    iget-object v0, p0, Lmiui/content/res/ThemeResources$LoadThemeValuesHelper;->this$0:Lmiui/content/res/ThemeResources;

    iget-object v1, p0, Lmiui/content/res/ThemeResources$LoadThemeValuesHelper;->mFilter:Lmiui/content/res/ThemeResources$FilterInfo;

    invoke-virtual {v0, p1, v1}, Lmiui/content/res/ThemeResources;->loadThemeValues(Ljava/io/InputStream;Lmiui/content/res/ThemeResources$FilterInfo;)V

    .line 308
    :cond_0
    return-void
.end method

.method public newTarget(Lmiui/content/res/ThemeResources$FilterInfo;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 299
    iput-object p1, p0, Lmiui/content/res/ThemeResources$LoadThemeValuesHelper;->mFilter:Lmiui/content/res/ThemeResources$FilterInfo;

    .line 300
    iget-object v0, p0, Lmiui/content/res/ThemeResources$LoadThemeValuesHelper;->this$0:Lmiui/content/res/ThemeResources;

    iget-object v0, v0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    iget-object v1, p1, Lmiui/content/res/ThemeResources$FilterInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lmiui/content/res/ThemeZipFile;->loadThemeValues(Lmiui/content/res/ThemeResources$LoadThemeValuesCallback;Ljava/lang/String;)V

    .line 301
    return-void
.end method
