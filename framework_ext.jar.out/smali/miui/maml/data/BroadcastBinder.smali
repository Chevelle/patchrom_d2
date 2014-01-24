.class public Lmiui/maml/data/BroadcastBinder;
.super Lmiui/maml/data/VariableBinder;
.source "BroadcastBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/BroadcastBinder$Variable;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "BroadcastBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "BroadcastBinder"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mName:Ljava/lang/String;

.field private mRegistered:Z

.field private mTrigger:Lmiui/maml/CommandTrigger;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/BroadcastBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"

    .prologue
    .line 70
    invoke-direct {p0, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mVariables:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Lmiui/maml/data/BroadcastBinder$1;

    invoke-direct {v0, p0}, Lmiui/maml/data/BroadcastBinder$1;-><init>(Lmiui/maml/data/BroadcastBinder;)V

    iput-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    invoke-direct {p0, p1}, Lmiui/maml/data/BroadcastBinder;->load(Lorg/w3c/dom/Element;)V

    .line 72
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    const-string v0, "BroadcastBinder"

    const-string v1, "ContentProviderBinder node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mName:Ljava/lang/String;

    .line 130
    const-string v0, "action"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "BroadcastBinder"

    const-string v1, "no action in broadcast binder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no action in broadcast binder element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lmiui/maml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    .line 137
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1, v0}, Lmiui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    .line 138
    invoke-direct {p0, p1}, Lmiui/maml/data/BroadcastBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 139
    return-void
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 142
    const-string v0, "Variable"

    new-instance v1, Lmiui/maml/data/BroadcastBinder$2;

    invoke-direct {v1, p0}, Lmiui/maml/data/BroadcastBinder$2;-><init>(Lmiui/maml/data/BroadcastBinder;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 149
    return-void
.end method

.method private updateVariables(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 156
    if-nez p1, :cond_1

    .line 200
    :cond_0
    return-void

    .line 160
    :cond_1
    const-string v6, "BroadcastBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateVariables: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v6, p0, Lmiui/maml/data/BroadcastBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/BroadcastBinder$Variable;

    .line 164
    .local v2, v:Lmiui/maml/data/BroadcastBinder$Variable;
    const/4 v5, 0x0

    .line 165
    .local v5, valueStr:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 166
    .local v3, value:D
    iget v6, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mType:I

    packed-switch v6, :pswitch_data_0

    .line 172
    iget v6, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mType:I

    packed-switch v6, :pswitch_data_1

    .line 186
    const-string v6, "BroadcastBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalide type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_1
    iget-object v6, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v6, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 191
    const-string v6, "%f"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 196
    :goto_2
    const-string v6, "name:%s type:%s value:%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mName:Ljava/lang/String;

    aput-object v8, v7, v9

    iget-object v8, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mTypeStr:Ljava/lang/String;

    aput-object v8, v7, v10

    const/4 v8, 0x2

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, info:Ljava/lang/String;
    const-string v6, "BroadcastBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateVariables: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    .end local v1           #info:Ljava/lang/String;
    :pswitch_0
    iget-object v6, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    iget-object v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    if-nez v5, :cond_2

    iget-object v6, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mDefStringValue:Ljava/lang/String;

    :goto_3
    invoke-virtual {v7, v6}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v6, v5

    goto :goto_3

    .line 174
    :pswitch_1
    iget-object v6, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    .line 175
    goto :goto_1

    .line 177
    :pswitch_2
    iget-object v6, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v6

    float-to-double v3, v6

    .line 178
    goto :goto_1

    .line 180
    :pswitch_3
    iget-object v6, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-int v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    int-to-double v3, v6

    .line 181
    goto :goto_1

    .line 183
    :pswitch_4
    iget-object v6, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v7, v2, Lmiui/maml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-long v7, v7

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    long-to-double v3, v6

    .line 184
    goto :goto_1

    .line 166
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 172
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected addVariable(Lmiui/maml/data/BroadcastBinder$Variable;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 152
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    .line 218
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->unregister()V

    .line 219
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    .line 220
    return-void
.end method

.method public bridge synthetic getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    .line 208
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    .line 211
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->register()V

    .line 212
    return-void
.end method

.method protected onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "object"

    .prologue
    .line 91
    invoke-direct {p0, p2}, Lmiui/maml/data/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    .line 92
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    .line 95
    :cond_0
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 96
    return-void
.end method

.method protected onRegister()V
    .locals 4

    .prologue
    .line 99
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lmiui/maml/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lmiui/maml/data/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method protected onUnregister()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/maml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    .line 224
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    .line 227
    :cond_0
    return-void
.end method

.method protected register()V
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lmiui/maml/data/BroadcastBinder;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->onRegister()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/BroadcastBinder;->mRegistered:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    .line 231
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lmiui/maml/data/BroadcastBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    .line 234
    :cond_0
    return-void
.end method

.method protected unregister()V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lmiui/maml/data/BroadcastBinder;->mRegistered:Z

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/data/BroadcastBinder;->onUnregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/BroadcastBinder;->mRegistered:Z

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    goto :goto_1
.end method
