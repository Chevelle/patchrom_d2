.class public Lmiui/maml/ScreenElementRoot;
.super Lmiui/maml/elements/ScreenElement;
.source "ScreenElementRoot.java"

# interfaces
.implements Lmiui/maml/InteractiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ScreenElementRoot$OnExternCommandListener;,
        Lmiui/maml/ScreenElementRoot$InnerGroup;,
        Lmiui/maml/ScreenElementRoot$FramerateHelper;
    }
.end annotation


# static fields
.field private static final CALCULATE_FRAME_RATE:Z = true

.field private static final DEFAULT_RES_DENSITY:I = 0xf0

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final EXTERNAL_COMMANDS_TAG_NAME:Ljava/lang/String; = "ExternalCommands"

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenElementRoot"

.field private static final RAW_DENSITY:Ljava/lang/String; = "__raw_density"

.field private static final ROOT_NAME:Ljava/lang/String; = "__root"

.field private static final SCALE_FACTOR:Ljava/lang/String; = "__scale_factor"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"


# instance fields
.field protected DEFAULT_FRAME_RATE:F

.field private mCheckPoint:J

.field private mConfig:Lmiui/maml/util/ConfigFile;

.field private mConfigPath:Ljava/lang/String;

.field protected mContext:Lmiui/maml/ScreenContext;

.field private mDefaultResourceDensity:I

.field private mDefaultScreenWidth:I

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/ScreenElementRoot$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalCommandManager:Lmiui/maml/CommandTriggers;

.field private mExtraScale:F

.field private mFinished:Z

.field private mFrameRateVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

.field private mFrames:I

.field private mHeight:F

.field protected mImmVibrateManager:Lmiui/maml/ImmVibrateManager;

.field protected mInnerGroup:Lmiui/maml/elements/ElementGroup;

.field private mKeepResource:Z

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mNeedDisallowInterceptTouchEventVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mPreTickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ITicker;",
            ">;"
        }
    .end annotation
.end field

.field protected mRawAttrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRawDefaultResourceDensity:I

.field private mRawHeight:I

.field private mRawTargetDensity:I

.field private mRawWidth:I

.field private mRendererControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:F

.field private mScaleByDensity:Z

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field private mShowFramerate:Z

.field private mSoundManager:Lmiui/maml/SoundManager;

.field private mSystemExternCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mTargetDensity:I

.field private mTouchBeginTime:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchBeginX:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchBeginY:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchX:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchY:Lmiui/maml/util/IndexedNumberVariable;

.field protected mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

.field private mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

.field private mWidth:F


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenContext;)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, v0, v0}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 76
    const/high16 v0, 0x41f0

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    .line 179
    new-instance v0, Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-direct {v0}, Lmiui/maml/ScreenElementRoot$FramerateHelper;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    .line 204
    iput-object p0, p0, Lmiui/maml/ScreenElementRoot;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 205
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    .line 206
    new-instance v0, Lmiui/maml/data/VariableUpdaterManager;

    invoke-direct {v0, p0}, Lmiui/maml/data/VariableUpdaterManager;-><init>(Lmiui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    .line 207
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "touch_x"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchX:Lmiui/maml/util/IndexedNumberVariable;

    .line 208
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "touch_y"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchY:Lmiui/maml/util/IndexedNumberVariable;

    .line 209
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "touch_begin_x"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginX:Lmiui/maml/util/IndexedNumberVariable;

    .line 210
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "touch_begin_y"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginY:Lmiui/maml/util/IndexedNumberVariable;

    .line 211
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "touch_begin_time"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginTime:Lmiui/maml/util/IndexedNumberVariable;

    .line 212
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "intercept_sys_touch"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 214
    new-instance v0, Lmiui/maml/SoundManager;

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-direct {v0, v1, v2}, Lmiui/maml/SoundManager;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    .line 215
    invoke-static {}, Lmiui/maml/ImmVibrateManager;->isImmersionSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Lmiui/maml/ImmVibrateManager;

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-direct {v0, v1}, Lmiui/maml/ImmVibrateManager;-><init>(Lmiui/maml/ScreenContext;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mImmVibrateManager:Lmiui/maml/ImmVibrateManager;

    .line 218
    :cond_0
    new-instance v0, Lmiui/maml/SystemCommandListener;

    invoke-direct {v0, p0}, Lmiui/maml/SystemCommandListener;-><init>(Lmiui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 219
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/ScreenElementRoot;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 9
    .parameter "path"

    .prologue
    .line 392
    if-nez p1, :cond_1

    .line 415
    :cond_0
    return-void

    .line 395
    :cond_1
    new-instance v5, Lmiui/maml/util/ConfigFile;

    invoke-direct {v5}, Lmiui/maml/util/ConfigFile;-><init>()V

    iput-object v5, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    .line 396
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v5, p1}, Lmiui/maml/util/ConfigFile;->load(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 399
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v5}, Lmiui/maml/util/ConfigFile;->getVariables()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/util/ConfigFile$Variable;

    .line 400
    .local v4, v:Lmiui/maml/util/ConfigFile$Variable;
    iget-object v5, v4, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v6, "string"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 401
    iget-object v5, v4, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v7, v4, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_3
    iget-object v5, v4, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v6, "number"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 404
    :try_start_0
    iget-object v5, v4, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 405
    .local v0, d:D
    iget-object v5, v4, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 406
    .end local v0           #d:D
    :catch_0
    move-exception v5

    goto :goto_0

    .line 410
    .end local v4           #v:Lmiui/maml/util/ConfigFile$Variable;
    :cond_4
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v5}, Lmiui/maml/util/ConfigFile;->getTasks()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/util/Task;

    .line 411
    .local v3, t:Lmiui/maml/util/Task;
    iget-object v5, v3, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    const-string v6, "name"

    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v8, v3, Lmiui/maml/util/Task;->name:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 412
    iget-object v5, v3, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    const-string v6, "package"

    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v8, v3, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 413
    iget-object v5, v3, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    const-string v6, "class"

    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v8, v3, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadRawAttrs(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "root"

    .prologue
    .line 726
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 727
    .local v2, nnm:Lorg/w3c/dom/NamedNodeMap;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 728
    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 729
    .local v1, item:Lorg/w3c/dom/Node;
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    .end local v1           #item:Lorg/w3c/dom/Node;
    :cond_0
    return-void
.end method

.method private processUseVariableUpdater(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 736
    const-string v1, "useVariableUpdater"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, updater:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {p0, v1}, Lmiui/maml/ScreenElementRoot;->onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V

    .line 742
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v1, v0}, Lmiui/maml/data/VariableUpdaterManager;->addFromTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static resolveExtraResource(Lorg/w3c/dom/Element;Ljava/lang/String;II)I
    .locals 12
    .parameter "root"
    .parameter "attr"
    .parameter "target"
    .parameter "def"

    .prologue
    .line 695
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, extraResources:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 697
    const-string v11, ","

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 698
    .local v8, resources:[Ljava/lang/String;
    const v7, 0x7fffffff

    .line 699
    .local v7, minDiff:I
    const/4 v1, 0x0

    .line 700
    .local v1, closestInt:I
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v9, v0, v5

    .line 702
    .local v9, str:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 703
    .local v10, sw:I
    sub-int v11, p2, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 704
    .local v3, diff:I
    if-ge v3, v7, :cond_1

    .line 705
    move v7, v3

    .line 706
    move v1, v10

    .line 707
    if-nez v3, :cond_1

    .line 714
    .end local v3           #diff:I
    .end local v9           #str:Ljava/lang/String;
    .end local v10           #sw:I
    :cond_0
    sub-int v11, p2, p3

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 715
    .local v2, defaultDiff:I
    if-lt v2, v7, :cond_2

    .line 722
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #closestInt:I
    .end local v2           #defaultDiff:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #minDiff:I
    .end local v8           #resources:[Ljava/lang/String;
    :goto_1
    return v1

    .line 710
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #closestInt:I
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #minDiff:I
    .restart local v8       #resources:[Ljava/lang/String;
    .restart local v9       #str:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 700
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 719
    .end local v9           #str:Ljava/lang/String;
    .restart local v2       #defaultDiff:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 722
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #closestInt:I
    .end local v2           #defaultDiff:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #minDiff:I
    .end local v8           #resources:[Ljava/lang/String;
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static resolveExtraScale(Lorg/w3c/dom/Element;Ljava/lang/String;I)F
    .locals 13
    .parameter "root"
    .parameter "attr"
    .parameter "target"

    .prologue
    const/high16 v10, -0x4080

    .line 669
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 670
    .local v4, extraScales:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 671
    const-string v11, ","

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 672
    .local v7, scaleExps:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v8, v0, v5

    .line 674
    .local v8, str:Ljava/lang/String;
    :try_start_0
    const-string v11, ":"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 675
    .local v9, strNums:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 676
    .local v3, extra:I
    if-ne v3, p2, :cond_1

    .line 677
    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 689
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #extra:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #scaleExps:[Ljava/lang/String;
    .end local v8           #str:Ljava/lang/String;
    .end local v9           #strNums:[Ljava/lang/String;
    :cond_0
    :goto_1
    return v10

    .line 679
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #scaleExps:[Ljava/lang/String;
    .restart local v8       #str:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 680
    .local v1, e1:Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "ScreenElementRoot"

    const-string v12, "extra scale format error."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 682
    .end local v1           #e1:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v2

    .line 683
    .local v2, e2:Ljava/lang/NumberFormatException;
    const-string v11, "ScreenElementRoot"

    const-string v12, "extra scale format error."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 672
    .end local v2           #e2:Ljava/lang/NumberFormatException;
    .restart local v3       #extra:I
    .restart local v9       #strNums:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private setupScale(Lorg/w3c/dom/Element;)V
    .locals 14
    .parameter "root"

    .prologue
    const/4 v3, 0x1

    const/high16 v13, 0x3f80

    const/4 v10, 0x0

    .line 613
    const-string v9, "scaleByDensity"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 614
    .local v5, scaleByDensity:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 615
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    .line 617
    :cond_0
    const-string v9, "screenWidth"

    invoke-static {p1, v9, v10}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 618
    const-string v9, "resDensity"

    invoke-static {p1, v9, v10}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 619
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    invoke-static {v9}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v9

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 620
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    if-nez v9, :cond_4

    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    if-nez v9, :cond_4

    .line 621
    const/16 v9, 0x1e0

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 622
    const/16 v9, 0xf0

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 630
    :cond_1
    :goto_0
    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v9, v9, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    invoke-virtual {v9, v11}, Lmiui/maml/ResourceManager;->setResourceDensity(I)V

    .line 632
    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v9, v9, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 633
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 635
    .local v0, display:Landroid/view/Display;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 636
    .local v6, size:Landroid/graphics/Point;
    invoke-virtual {v0, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 637
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 638
    .local v4, rotation:I
    if-eq v4, v3, :cond_2

    const/4 v9, 0x3

    if-ne v4, v9, :cond_6

    .line 639
    .local v3, rotated:Z
    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    iget v9, v6, Landroid/graphics/Point;->y:I

    :goto_2
    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    .line 640
    if-eqz v3, :cond_8

    iget v9, v6, Landroid/graphics/Point;->x:I

    :goto_3
    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mScreenHeight:I

    .line 641
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 642
    .local v2, outMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 643
    iget v9, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 644
    const-string v9, "ScreenElementRoot"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "init target density: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v9, "extraResourcesDensity"

    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    iget v12, p0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    invoke-static {p1, v9, v11, v12}, Lmiui/maml/ScreenElementRoot;->resolveExtraResource(Lorg/w3c/dom/Element;Ljava/lang/String;II)I

    move-result v1

    .line 646
    .local v1, extraDensity:I
    if-lez v1, :cond_9

    .line 647
    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v9, v9, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v9, v1}, Lmiui/maml/ResourceManager;->setExtraResourceDensity(I)V

    .line 648
    const-string v9, "extraScaleByDensity"

    invoke-static {p1, v9, v1}, Lmiui/maml/ScreenElementRoot;->resolveExtraScale(Lorg/w3c/dom/Element;Ljava/lang/String;I)F

    move-result v9

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mExtraScale:F

    .line 649
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mExtraScale:F

    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    int-to-float v11, v11

    mul-float/2addr v11, v13

    int-to-float v12, v1

    div-float/2addr v11, v12

    mul-float/2addr v9, v11

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mExtraScale:F

    .line 660
    :cond_3
    :goto_4
    const-string v9, "width"

    invoke-static {p1, v9, v10}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    .line 661
    const-string v9, "height"

    invoke-static {p1, v9, v10}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    .line 663
    iget-boolean v9, p0, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    invoke-virtual {p0, v9}, Lmiui/maml/ScreenElementRoot;->setScaleByDensity(Z)V

    .line 664
    return-void

    .line 623
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #extraDensity:I
    .end local v2           #outMetrics:Landroid/util/DisplayMetrics;
    .end local v3           #rotated:Z
    .end local v4           #rotation:I
    .end local v6           #size:Landroid/graphics/Point;
    .end local v8           #wm:Landroid/view/WindowManager;
    :cond_4
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    if-nez v9, :cond_5

    .line 625
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    mul-int/lit16 v9, v9, 0xf0

    div-int/lit16 v9, v9, 0x1e0

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    goto/16 :goto_0

    .line 626
    :cond_5
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    if-nez v9, :cond_1

    .line 627
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    mul-int/lit16 v9, v9, 0x1e0

    div-int/lit16 v9, v9, 0xf0

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    goto/16 :goto_0

    .restart local v0       #display:Landroid/view/Display;
    .restart local v4       #rotation:I
    .restart local v6       #size:Landroid/graphics/Point;
    .restart local v8       #wm:Landroid/view/WindowManager;
    :cond_6
    move v3, v10

    .line 638
    goto/16 :goto_1

    .line 639
    .restart local v3       #rotated:Z
    :cond_7
    iget v9, v6, Landroid/graphics/Point;->x:I

    goto/16 :goto_2

    .line 640
    :cond_8
    iget v9, v6, Landroid/graphics/Point;->y:I

    goto/16 :goto_3

    .line 651
    .restart local v1       #extraDensity:I
    .restart local v2       #outMetrics:Landroid/util/DisplayMetrics;
    :cond_9
    const-string v9, "extraResourcesScreenWidth"

    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    iget v12, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    invoke-static {p1, v9, v11, v12}, Lmiui/maml/ScreenElementRoot;->resolveExtraResource(Lorg/w3c/dom/Element;Ljava/lang/String;II)I

    move-result v7

    .line 652
    .local v7, w:I
    if-lez v7, :cond_3

    .line 653
    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v9, v9, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v9, v7}, Lmiui/maml/ResourceManager;->setExtraResourceScreenWidth(I)V

    .line 654
    const-string v9, "extraScaleByScreenWidth"

    invoke-static {p1, v9, v7}, Lmiui/maml/ScreenElementRoot;->resolveExtraScale(Lorg/w3c/dom/Element;Ljava/lang/String;I)F

    move-result v9

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mExtraScale:F

    .line 655
    iget v9, p0, Lmiui/maml/ScreenElementRoot;->mExtraScale:F

    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    int-to-float v11, v11

    mul-float/2addr v11, v13

    int-to-float v12, v7

    div-float/2addr v11, v12

    mul-float/2addr v9, v11

    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mExtraScale:F

    goto :goto_4
.end method

.method private traverseElements()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 555
    new-instance v0, Lmiui/maml/ScreenElementRoot$1;

    invoke-direct {v0, p0}, Lmiui/maml/ScreenElementRoot$1;-><init>(Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    .line 576
    return-void
.end method


# virtual methods
.method public acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1013
    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    .line 1014
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    .line 1015
    return-void
.end method

.method public addPreTicker(Lmiui/maml/elements/ITicker;)V
    .locals 1
    .parameter "ticker"

    .prologue
    .line 856
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    return-void
.end method

.method public attachToRenderThread(Lmiui/maml/RenderThread;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 955
    if-eqz p1, :cond_0

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    if-nez v2, :cond_1

    .line 956
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "thread or controller is null, MUST load before attaching"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 958
    :cond_1
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 959
    :try_start_0
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 960
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 961
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {p1, v2}, Lmiui/maml/RenderThread;->addRendererController(Lmiui/maml/RendererController;)V

    .line 960
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 963
    :cond_2
    monitor-exit v3

    .line 964
    return-void

    .line 963
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public createFramerateToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public detachFromRenderThread(Lmiui/maml/RenderThread;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 967
    if-eqz p1, :cond_0

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    if-nez v2, :cond_1

    .line 968
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "thread or controller is null, MUST load before detaching"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 970
    :cond_1
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 971
    :try_start_0
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 972
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 973
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {p1, v2}, Lmiui/maml/RenderThread;->removeRendererController(Lmiui/maml/RendererController;)V

    .line 972
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 975
    :cond_2
    monitor-exit v3

    .line 976
    return-void

    .line 975
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 317
    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 322
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/ElementGroup;->render(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 330
    :goto_1
    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mShowFramerate:Z

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot$FramerateHelper;->draw(Landroid/graphics/Canvas;)V

    .line 334
    :cond_1
    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    .line 335
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v1}, Lmiui/maml/RendererController;->doneRender()V

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 325
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 327
    const-string v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected doTick(J)V
    .locals 10
    .parameter "currentTime"

    .prologue
    .line 240
    iget-boolean v6, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v6, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v6, :cond_2

    .line 244
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v6}, Lmiui/maml/data/VariableBinderManager;->tick()V

    .line 246
    :cond_2
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v6, p1, p2}, Lmiui/maml/data/VariableUpdaterManager;->tick(J)V

    .line 249
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 250
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 251
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/ITicker;

    invoke-interface {v6, p1, p2}, Lmiui/maml/elements/ITicker;->tick(J)V

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 254
    :cond_3
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v6, p1, p2}, Lmiui/maml/elements/ElementGroup;->tick(J)V

    .line 257
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v6}, Lmiui/maml/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v1

    .line 258
    .local v1, d:Ljava/lang/Double;
    if-eqz v1, :cond_4

    .line 259
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_6

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 263
    :cond_4
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/util/IndexedNumberVariable;

    if-nez v6, :cond_5

    .line 264
    new-instance v6, Lmiui/maml/util/IndexedNumberVariable;

    const-string v7, "frame_rate"

    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v6, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 265
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 268
    :cond_5
    iget-wide v6, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 269
    iput-wide p1, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    goto :goto_0

    .line 259
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 271
    :cond_7
    iget-wide v6, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    sub-long v4, p1, v6

    .line 272
    .local v4, t:J
    const-wide/16 v6, 0x3e8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 273
    iget v6, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    div-long/2addr v6, v4

    long-to-int v3, v6

    .line 274
    .local v3, r:I
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v6, v3}, Lmiui/maml/ScreenElementRoot$FramerateHelper;->set(I)V

    .line 275
    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v7, v3

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 276
    const/4 v6, 0x0

    iput v6, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    .line 277
    iput-wide p1, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    goto/16 :goto_0
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doneRender()V

    .line 980
    return-void
.end method

.method public findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;
    .locals 1
    .parameter "name"

    .prologue
    .line 312
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0, p1}, Lmiui/maml/data/VariableBinderManager;->findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 1
    .parameter "name"

    .prologue
    .line 305
    const-string v0, "__root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object p0

    goto :goto_0
.end method

.method public findTask(Ljava/lang/String;)Lmiui/maml/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 763
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0, p1}, Lmiui/maml/util/ConfigFile;->getTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 797
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v0, :cond_0

    .line 822
    :goto_0
    return-void

    .line 799
    :cond_0
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    .line 801
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 802
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0}, Lmiui/maml/util/ConfigFile;->save()Z

    .line 806
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_2

    .line 807
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->finish()V

    .line 809
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_3

    .line 810
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->finish()V

    .line 812
    :cond_3
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_4

    .line 813
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->finish()V

    .line 815
    :cond_4
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0}, Lmiui/maml/SoundManager;->release()V

    .line 816
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mImmVibrateManager:Lmiui/maml/ImmVibrateManager;

    if-eqz v0, :cond_5

    .line 817
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mImmVibrateManager:Lmiui/maml/ImmVibrateManager;

    invoke-virtual {v0}, Lmiui/maml/ImmVibrateManager;->finish()V

    .line 819
    :cond_5
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    invoke-virtual {v0, v1}, Lmiui/maml/ResourceManager;->finish(Z)V

    .line 820
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    goto :goto_0
.end method

.method public getContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    return-object v0
.end method

.method public getDefaultScreenWidth()I
    .locals 1

    .prologue
    .line 788
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 852
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mHeight:F

    return v0
.end method

.method public getImmVibrateManager()Lmiui/maml/ImmVibrateManager;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mImmVibrateManager:Lmiui/maml/ImmVibrateManager;

    return-object v0
.end method

.method public getRawAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 288
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResourceDensity()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    return v0
.end method

.method public final getScale()F
    .locals 2

    .prologue
    .line 771
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 772
    const-string v0, "ScreenElementRoot"

    const-string v1, "scale not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/high16 v0, 0x3f80

    .line 776
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    goto :goto_0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 844
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 840
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    return v0
.end method

.method public getTargetDensity()I
    .locals 1

    .prologue
    .line 784
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 848
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mWidth:F

    return v0
.end method

.method public haptic(I)V
    .locals 0
    .parameter "effectId"

    .prologue
    .line 759
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 344
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    .line 349
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v0, v1, v2}, Lmiui/maml/LanguageHelper;->load(Ljava/util/Locale;Lmiui/maml/ResourceManager;Lmiui/maml/data/Variables;)Z

    .line 351
    const-string v0, "raw_screen_width"

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 352
    const-string v0, "raw_screen_height"

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScreenHeight:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 353
    const-string v0, "screen_width"

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 354
    const-string v0, "screen_height"

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 356
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    if-lez v0, :cond_0

    .line 357
    const-string v0, "view_width"

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 359
    :cond_0
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    if-lez v0, :cond_1

    .line 360
    const-string v0, "view_height"

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 362
    :cond_1
    const-string v0, "__raw_density"

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 363
    const-string v0, "__scale_factor"

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 364
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->loadConfig()V

    .line 367
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->init()V

    .line 371
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_3

    .line 372
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->init()V

    .line 375
    :cond_3
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_4

    .line 376
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->init()V

    .line 379
    :cond_4
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 381
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mImmVibrateManager:Lmiui/maml/ImmVibrateManager;

    if-eqz v0, :cond_5

    .line 382
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mImmVibrateManager:Lmiui/maml/ImmVibrateManager;

    invoke-virtual {v0}, Lmiui/maml/ImmVibrateManager;->init()V

    .line 384
    :cond_5
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->reset()V

    .line 385
    return-void
.end method

.method public issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 4
    .parameter "command"
    .parameter "para1"
    .parameter "para2"

    .prologue
    .line 874
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-interface {v1, p1, p2, p3}, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 876
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 877
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 878
    .local v0, l:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;
    if-eqz v0, :cond_0

    .line 879
    invoke-interface {v0, p1, p2, p3}, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 880
    const-string v1, "ScreenElementRoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "issueExternCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    .end local v0           #l:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;
    :cond_0
    return-void
.end method

.method public final load()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 510
    :try_start_0
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v5}, Lmiui/maml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 511
    .local v3, root:Lorg/w3c/dom/Element;
    if-nez v3, :cond_1

    .line 549
    .end local v3           #root:Lorg/w3c/dom/Element;
    :cond_0
    :goto_0
    return v4

    .line 514
    .restart local v3       #root:Lorg/w3c/dom/Element;
    :cond_1
    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->loadRawAttrs(Lorg/w3c/dom/Element;)V

    .line 517
    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->setupScale(Lorg/w3c/dom/Element;)V

    .line 519
    const-string v5, "VariableBinders"

    invoke-static {v3, v5}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 521
    .local v0, binders:Lorg/w3c/dom/Element;
    new-instance v5, Lmiui/maml/data/VariableBinderManager;

    invoke-direct {v5, v0, p0}, Lmiui/maml/data/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    .line 523
    const-string v5, "ExternalCommands"

    invoke-static {v3, v5}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 524
    .local v1, commands:Lorg/w3c/dom/Element;
    if-eqz v1, :cond_2

    .line 525
    new-instance v5, Lmiui/maml/CommandTriggers;

    invoke-direct {v5, v1, p0}, Lmiui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    .line 528
    :cond_2
    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->processUseVariableUpdater(Lorg/w3c/dom/Element;)V

    .line 530
    const-string v5, "frameRate"

    iget v6, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    invoke-static {v3, v5, v6}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot;->mFrameRate:F

    .line 531
    new-instance v5, Lmiui/maml/RendererController;

    invoke-direct {v5}, Lmiui/maml/RendererController;-><init>()V

    iput-object v5, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    .line 532
    new-instance v5, Lmiui/maml/ScreenElementRoot$InnerGroup;

    invoke-direct {v5, v3, p0}, Lmiui/maml/ScreenElementRoot$InnerGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    .line 533
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v5}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_3

    .line 534
    const-string v5, "ScreenElementRoot"

    const-string v6, "load error, no element loaded"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 546
    .end local v0           #binders:Lorg/w3c/dom/Element;
    .end local v1           #commands:Lorg/w3c/dom/Element;
    .end local v3           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v2

    .line 547
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 538
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #binders:Lorg/w3c/dom/Element;
    .restart local v1       #commands:Lorg/w3c/dom/Element;
    .restart local v3       #root:Lorg/w3c/dom/Element;
    :cond_3
    :try_start_1
    invoke-virtual {p0, v3}, Lmiui/maml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 543
    invoke-direct {p0}, Lmiui/maml/ScreenElementRoot;->traverseElements()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 545
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public loadConfig()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/maml/ScreenElementRoot;->loadConfig(Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public needDisallowInterceptTouchEvent()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    return v0
.end method

.method protected onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 226
    new-instance v0, Lmiui/maml/data/DateTimeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/maml/data/DateTimeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    .line 227
    return-void
.end method

.method public onButtonInteractive(Lmiui/maml/elements/ButtonScreenElement;Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V
    .locals 0
    .parameter "e"
    .parameter "a"

    .prologue
    .line 837
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 825
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v1, :cond_0

    .line 827
    :try_start_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v1, p1}, Lmiui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 1
    .parameter "root"

    .prologue
    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 453
    iget-boolean v3, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v3, :cond_0

    .line 478
    :goto_0
    return v0

    .line 456
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/maml/ScreenElementRoot;->descale(F)F

    move-result v1

    .line 457
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/maml/ScreenElementRoot;->descale(F)F

    move-result v2

    .line 459
    .local v2, y:F
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mTouchX:Lmiui/maml/util/IndexedNumberVariable;

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 460
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mTouchY:Lmiui/maml/util/IndexedNumberVariable;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 476
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v3, p1}, Lmiui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 477
    .local v0, ret:Z
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    goto :goto_0

    .line 463
    .end local v0           #ret:Z
    :pswitch_1
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginX:Lmiui/maml/util/IndexedNumberVariable;

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 464
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginY:Lmiui/maml/util/IndexedNumberVariable;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 465
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginTime:Lmiui/maml/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 467
    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_1

    .line 472
    :pswitch_2
    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_1

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1019
    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 1020
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->updateVisibility()V

    .line 1021
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 419
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    .line 421
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->pause()V

    .line 423
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->pause()V

    .line 426
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->pause()V

    .line 429
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->pause()V

    .line 431
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->pause()V

    .line 432
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 990
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 991
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->pauseAnim(J)V

    .line 992
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 9
    .parameter "time"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "isLoop"
    .parameter "isDelay"

    .prologue
    .line 984
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 985
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lmiui/maml/elements/ElementGroup;->playAnim(JJJZZ)V

    .line 986
    return-void
.end method

.method public playSound(Ljava/lang/String;)V
    .locals 3
    .parameter "sound"

    .prologue
    const/4 v2, 0x0

    .line 745
    new-instance v0, Lmiui/maml/SoundManager$SoundOptions;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Lmiui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {p0, p1, v0}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)V

    .line 746
    return-void
.end method

.method public playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)V
    .locals 1
    .parameter "sound"
    .parameter "options"

    .prologue
    .line 749
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/SoundManager;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)V

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    .line 301
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/maml/ScreenContext;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public postMessage(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 950
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->postMessage(Landroid/view/MotionEvent;)V

    .line 951
    return-void
.end method

.method protected putRawAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 284
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public removePreTicker(Lmiui/maml/elements/ITicker;)V
    .locals 1
    .parameter "ticker"

    .prologue
    .line 860
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 861
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 1002
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 1003
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->reset(J)V

    .line 1004
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 435
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->resume()V

    .line 437
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->resume()V

    .line 439
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->resume()V

    .line 442
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->resume()V

    .line 445
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->resume()V

    .line 448
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->resume()V

    .line 449
    return-void
.end method

.method protected resumeAnim(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 996
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 997
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->resumeAnim(J)V

    .line 998
    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 886
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_0

    .line 887
    const-string v0, "ScreenElementRoot"

    const-string v1, "fail to saveVar, config file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :goto_0
    return-void

    .line 891
    :cond_0
    if-nez p2, :cond_1

    .line 892
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    const-string v1, "null"

    invoke-virtual {v0, p1, v1}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 894
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 899
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_0

    .line 900
    const-string v0, "ScreenElementRoot"

    const-string v1, "fail to saveVar, config file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :goto_0
    return-void

    .line 903
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selfFinish()V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->finish()V

    .line 919
    return-void
.end method

.method public selfInit()V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->init()V

    .line 915
    return-void
.end method

.method public selfPause()V
    .locals 4

    .prologue
    .line 922
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 923
    :try_start_0
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 924
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 925
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {v2}, Lmiui/maml/RendererController;->selfPause()V

    .line 924
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 927
    :cond_0
    monitor-exit v3

    .line 928
    return-void

    .line 927
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public selfResume()V
    .locals 4

    .prologue
    .line 931
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 932
    :try_start_0
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 933
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 934
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {v2}, Lmiui/maml/RendererController;->selfResume()V

    .line 933
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 936
    :cond_0
    monitor-exit v3

    .line 937
    return-void

    .line 936
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 230
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setDefaultFramerate(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 292
    iput p1, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 293
    return-void
.end method

.method public final setKeepResource(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 792
    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    .line 793
    return-void
.end method

.method public setOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 869
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 870
    return-void

    .line 869
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setRenderControllerListener(Lmiui/maml/RendererController$Listener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 941
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->setListener(Lmiui/maml/RendererController$Listener;)V

    .line 942
    return-void
.end method

.method public setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 946
    new-instance v0, Lmiui/maml/SingleRootListener;

    invoke-direct {v0, p0, p1}, Lmiui/maml/SingleRootListener;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RendererController$IRenderable;)V

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerListener(Lmiui/maml/RendererController$Listener;)V

    .line 947
    return-void
.end method

.method public setScaleByDensity(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 579
    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    .line 581
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    if-nez v0, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    if-eqz p1, :cond_3

    .line 585
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    invoke-static {v0}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v0

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 586
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    int-to-float v0, v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    .line 593
    :goto_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    invoke-virtual {v0, v1}, Lmiui/maml/ResourceManager;->setTargetDensity(I)V

    .line 595
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mExtraScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 596
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mExtraScale:F

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    .line 598
    :cond_2
    const-string v0, "ScreenElementRoot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    int-to-float v0, v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mWidth:F

    .line 601
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    int-to-float v0, v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mHeight:F

    goto :goto_0

    .line 589
    :cond_3
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    .line 590
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v0, v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    goto :goto_1
.end method

.method protected shouldPlaySound()Z
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x1

    return v0
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "show"

    .prologue
    .line 1008
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 1009
    return-void
.end method

.method public showFramerate(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 339
    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mShowFramerate:Z

    .line 340
    return-void
.end method

.method public tick(J)V
    .locals 0
    .parameter "currentTime"

    .prologue
    .line 235
    invoke-virtual {p0, p1, p2}, Lmiui/maml/ScreenElementRoot;->doTick(J)V

    .line 236
    return-void
.end method
