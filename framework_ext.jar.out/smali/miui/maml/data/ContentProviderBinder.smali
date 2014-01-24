.class public Lmiui/maml/data/ContentProviderBinder;
.super Lmiui/maml/data/VariableBinder;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;,
        Lmiui/maml/data/ContentProviderBinder$ChangeObserver;,
        Lmiui/maml/data/ContentProviderBinder$QueryHandler;,
        Lmiui/maml/data/ContentProviderBinder$Variable;,
        Lmiui/maml/data/ContentProviderBinder$Builder;,
        Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ContentProviderBinder"

.field private static final QUERY_TOKEN:I = 0x64

.field public static final TAG_NAME:Ljava/lang/String; = "ContentProviderBinder"


# instance fields
.field protected mArgs:[Ljava/lang/String;

.field public mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

.field protected mColumns:[Ljava/lang/String;

.field protected mCountName:Ljava/lang/String;

.field private mCountVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorLock:Ljava/lang/Object;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDependency:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLastQueryTime:J

.field private mLastUri:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field private mNeedsRequery:Z

.field protected mOrder:Ljava/lang/String;

.field private mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

.field private mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

.field private mUpdateInterval:I

.field private mUpdater:Ljava/lang/Runnable;

.field protected mUriFormatter:Lmiui/maml/util/TextFormatter;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/ContentProviderBinder$Variable;",
            ">;"
        }
    .end annotation
.end field

.field protected mWhereFormatter:Lmiui/maml/util/TextFormatter;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V
    .locals 2
    .parameter "root"
    .parameter "l"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lmiui/maml/data/VariableBinder;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-direct {v0, p0}, Lmiui/maml/data/ContentProviderBinder$ChangeObserver;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    .line 73
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/maml/data/ContentProviderBinder$MyDataSetObserver;-><init>(Lmiui/maml/data/ContentProviderBinder;Lmiui/maml/data/ContentProviderBinder$1;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    .line 229
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;-><init>(Lmiui/maml/data/ContentProviderBinder;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    .line 230
    iput-object p2, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    .line 231
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V
    .locals 0
    .parameter "node"
    .parameter "root"
    .parameter "l"

    .prologue
    .line 218
    invoke-direct {p0, p2, p3}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V

    .line 221
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lmiui/maml/data/ContentProviderBinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    return-void
.end method

.method static synthetic access$200(Lmiui/maml/data/ContentProviderBinder;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/maml/data/ContentProviderBinder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/maml/data/ContentProviderBinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->updateVariables()V

    return-void
.end method

.method static synthetic access$500(Lmiui/maml/data/ContentProviderBinder;)Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    return-object v0
.end method

.method private checkUpdate()V
    .locals 6

    .prologue
    .line 586
    iget v2, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-gtz v2, :cond_0

    .line 595
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    sub-long v0, v2, v4

    .line 590
    .local v0, elapsedTime:J
    iget v2, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 591
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 592
    const-wide/16 v0, 0x0

    .line 594
    :cond_1
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    iget v4, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private closeCursor()V
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 278
    monitor-exit v1

    .line 285
    :goto_0
    return-void

    .line 279
    :cond_0
    iget v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 280
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lmiui/maml/data/ContentProviderBinder;->registerObserver(Landroid/database/Cursor;Z)V

    .line 282
    :cond_1
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    .line 284
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 14
    .parameter "node"

    .prologue
    const/4 v13, 0x0

    .line 288
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    .line 289
    const-string v0, "dependency"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mDependency:Ljava/lang/String;

    .line 291
    const-string v0, "uriExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    .line 292
    .local v4, uriExp:Lmiui/maml/data/Expression;
    const-string v0, "uriFormatExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    .line 293
    .local v5, uriFormatExp:Lmiui/maml/data/Expression;
    new-instance v0, Lmiui/maml/util/TextFormatter;

    const-string v1, "uri"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uriFormat"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uriParas"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    .line 295
    const-string v0, "columns"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 296
    .local v12, tmp:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v13

    :goto_0
    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 297
    const-string v0, "whereExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v10

    .line 298
    .local v10, whereExp:Lmiui/maml/data/Expression;
    const-string v0, "whereFormatExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v11

    .line 299
    .local v11, whereFormatExp:Lmiui/maml/data/Expression;
    new-instance v6, Lmiui/maml/util/TextFormatter;

    const-string v0, "where"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "whereFormat"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "whereParas"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v6 .. v11}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    iput-object v6, p0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    .line 301
    const-string v0, "args"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 302
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v13

    :goto_1
    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 303
    const-string v0, "order"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 304
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v12, v13

    .end local v12           #tmp:Ljava/lang/String;
    :cond_0
    iput-object v12, p0, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 306
    const-string v0, "countName"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 307
    .restart local v12       #tmp:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    iput-object v13, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 309
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 312
    :cond_1
    const-string v0, "updateInterval"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 313
    iget v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-lez v0, :cond_2

    .line 314
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$1;

    invoke-direct {v0, p0}, Lmiui/maml/data/ContentProviderBinder$1;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    .line 320
    :cond_2
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 321
    return-void

    .line 296
    .end local v10           #whereExp:Lmiui/maml/data/Expression;
    .end local v11           #whereFormatExp:Lmiui/maml/data/Expression;
    :cond_3
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 302
    .restart local v10       #whereExp:Lmiui/maml/data/Expression;
    .restart local v11       #whereFormatExp:Lmiui/maml/data/Expression;
    :cond_4
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v13, v12

    .line 307
    goto :goto_2
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "node"

    .prologue
    .line 324
    const-string v3, "Variable"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 325
    .local v2, variables:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 326
    new-instance v1, Lmiui/maml/data/ContentProviderBinder$Variable;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v1, v3, v4}, Lmiui/maml/data/ContentProviderBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    .line 327
    .local v1, v:Lmiui/maml/data/ContentProviderBinder$Variable;
    invoke-virtual {p0, v1}, Lmiui/maml/data/ContentProviderBinder;->addVariable(Lmiui/maml/data/ContentProviderBinder$Variable;)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v1           #v:Lmiui/maml/data/ContentProviderBinder$Variable;
    :cond_0
    return-void
.end method

.method private onQueryComplete(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, -0x1

    .line 409
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_1

    .line 410
    if-eqz p1, :cond_0

    .line 412
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 418
    if-eqz p1, :cond_4

    .line 419
    :try_start_0
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->closeCursor()V

    .line 420
    iput-object p1, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    .line 421
    iget v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-ne v0, v3, :cond_2

    .line 422
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lmiui/maml/data/ContentProviderBinder;->registerObserver(Landroid/database/Cursor;Z)V

    .line 424
    :cond_2
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->updateVariables()V

    .line 425
    iget v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-eq v0, v3, :cond_3

    .line 426
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    .line 430
    :cond_3
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 432
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private registerObserver(Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "c"
    .parameter "reg"

    .prologue
    .line 439
    if-nez p1, :cond_0

    .line 448
    :goto_0
    return-void

    .line 441
    :cond_0
    if-eqz p2, :cond_1

    .line 442
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 443
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 445
    :cond_1
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 446
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method private updateVariables()V
    .locals 18

    .prologue
    .line 451
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v15

    .line 452
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-nez v14, :cond_2

    const/4 v5, 0x0

    .line 453
    .local v5, count:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v14, :cond_0

    .line 454
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v0, v5

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 456
    :cond_0
    const-string v14, "ContentProviderBinder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "query result count: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-eqz v14, :cond_1

    if-nez v5, :cond_4

    .line 458
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/maml/data/ContentProviderBinder$Variable;

    .line 459
    .local v9, v:Lmiui/maml/data/ContentProviderBinder$Variable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v9, v14}, Lmiui/maml/data/ContentProviderBinder$Variable;->setNull(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_1

    .line 529
    .end local v5           #count:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #v:Lmiui/maml/data/ContentProviderBinder$Variable;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 452
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    goto :goto_0

    .line 461
    .restart local v5       #count:I
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_3
    monitor-exit v15

    .line 530
    :goto_2
    return-void

    .line 463
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/maml/data/ContentProviderBinder$Variable;

    .line 464
    .restart local v9       #v:Lmiui/maml/data/ContentProviderBinder$Variable;
    iget-boolean v14, v9, Lmiui/maml/data/ContentProviderBinder$Variable;->mBlocked:Z

    if-nez v14, :cond_5

    .line 467
    const/4 v13, 0x0

    .line 468
    .local v13, valueStr:Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 469
    .local v10, value:D
    const/4 v12, 0x0

    .line 470
    .local v12, valueBytes:[B
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget v0, v9, Lmiui/maml/data/ContentProviderBinder$Variable;->mRow:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    if-eqz v14, :cond_5

    .line 472
    :try_start_2
    iget-object v4, v9, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 473
    .local v4, column:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 474
    .local v3, col:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v14, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_7

    .line 475
    iget v14, v9, Lmiui/maml/data/ContentProviderBinder$Variable;->mType:I

    sparse-switch v14, :sswitch_data_0

    .line 491
    iget v14, v9, Lmiui/maml/data/ContentProviderBinder$Variable;->mType:I

    packed-switch v14, :pswitch_data_0

    .line 505
    const-string v14, "ContentProviderBinder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "invalide type"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v9, Lmiui/maml/data/ContentProviderBinder$Variable;->mTypeStr:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :goto_4
    iget-object v14, v9, Lmiui/maml/data/ContentProviderBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v14, v10, v11}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 516
    .end local v3           #col:I
    .end local v4           #column:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 517
    .local v6, e:Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v14, "ContentProviderBinder"

    const-string v16, "failed to get value from cursor"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 477
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #col:I
    .restart local v4       #column:Ljava/lang/String;
    :sswitch_0
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 478
    iget-object v14, v9, Lmiui/maml/data/ContentProviderBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v14, v13}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 518
    .end local v3           #col:I
    .end local v4           #column:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 519
    .local v6, e:Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v14, "ContentProviderBinder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "column does not exist: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v9, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 481
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #col:I
    .restart local v4       #column:Ljava/lang/String;
    :sswitch_1
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 482
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v9, v14}, Lmiui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v8

    .line 483
    .local v8, image:Lmiui/maml/elements/ImageScreenElement;
    if-eqz v8, :cond_5

    .line 484
    const/4 v2, 0x0

    .line 485
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-eqz v12, :cond_6

    .line 486
    const/4 v14, 0x0

    array-length v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v12, v14, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 487
    :cond_6
    invoke-virtual {v8, v2}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 493
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #image:Lmiui/maml/elements/ImageScreenElement;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    .line 494
    goto :goto_4

    .line 496
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v14

    float-to-double v10, v14

    .line 497
    goto/16 :goto_4

    .line 499
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    int-to-double v10, v14

    .line 500
    goto/16 :goto_4

    .line 502
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v10, v0

    .line 503
    goto/16 :goto_4

    .line 514
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v9, v14}, Lmiui/maml/data/ContentProviderBinder$Variable;->setNull(Lmiui/maml/ScreenElementRoot;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 529
    .end local v3           #col:I
    .end local v4           #column:Ljava/lang/String;
    .end local v9           #v:Lmiui/maml/data/ContentProviderBinder$Variable;
    .end local v10           #value:D
    .end local v12           #valueBytes:[B
    .end local v13           #valueStr:Ljava/lang/String;
    :cond_8
    :try_start_7
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 475
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3e9 -> :sswitch_1
    .end sparse-switch

    .line 491
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected addVariable(Lmiui/maml/data/ContentProviderBinder$Variable;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 332
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method public createCountVar()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 249
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->closeCursor()V

    .line 250
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/data/ContentProviderBinder;->setBlockedColumns([Ljava/lang/String;)V

    .line 252
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    .line 253
    return-void
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mDependency:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUriText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    .line 243
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getDependency()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 246
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 549
    const-string v0, "ContentProviderBinder"

    const-string v1, "ChangeObserver: content changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mPaused:Z

    if-eqz v0, :cond_1

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    goto :goto_0

    .line 555
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    .line 257
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 271
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    .line 272
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 273
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    .line 262
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    goto :goto_0
.end method

.method public final setBlockedColumns([Ljava/lang/String;)V
    .locals 7
    .parameter "cols"

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, hs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 358
    new-instance v1, Ljava/util/HashSet;

    .end local v1           #hs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 359
    .restart local v1       #hs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 360
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/data/ContentProviderBinder$Variable;

    .line 364
    .local v5, v:Lmiui/maml/data/ContentProviderBinder$Variable;
    if-eqz v1, :cond_1

    iget-object v6, v5, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    :goto_2
    iput-boolean v6, v5, Lmiui/maml/data/ContentProviderBinder$Variable;->mBlocked:Z

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 366
    .end local v5           #v:Lmiui/maml/data/ContentProviderBinder$Variable;
    :cond_2
    return-void
.end method

.method public startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x64

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    .line 337
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {v0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;->cancelOperation(I)V

    .line 338
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getUriText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 339
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v2}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, where:Ljava/lang/String;
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    const/4 v2, 0x0

    iget-object v4, p0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    iget-object v6, p0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    iget-object v7, p0, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    .line 346
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    .line 347
    return-void
.end method
