.class Lmiui/maml/ActionCommand$IntentCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$IntentCommand$Extra;,
        Lmiui/maml/ActionCommand$IntentCommand$Type;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mExtraList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ActionCommand$IntentCommand$Extra;",
            ">;"
        }
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field private mIsBroadcast:Z

.field private mTask:Lmiui/maml/util/Task;

.field private mUri:Landroid/net/Uri;

.field private mUriExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "root"
    .parameter "ele"

    .prologue
    .line 926
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 833
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mExtraList:Ljava/util/ArrayList;

    .line 927
    invoke-static {p2}, Lmiui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lmiui/maml/util/Task;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    .line 928
    const-string v1, "broadcast"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIsBroadcast:Z

    .line 930
    const-string v1, "uri"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 931
    .local v0, uriStr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 932
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mUri:Landroid/net/Uri;

    .line 934
    :cond_0
    const-string v1, "uriExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mUriExp:Lmiui/maml/data/Expression;

    .line 936
    invoke-direct {p0, p2}, Lmiui/maml/ActionCommand$IntentCommand;->loadExtras(Lorg/w3c/dom/Element;)V

    .line 937
    return-void
.end method

.method private loadExtras(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 917
    const-string v0, "Extra"

    new-instance v1, Lmiui/maml/ActionCommand$IntentCommand$1;

    invoke-direct {v1, p0}, Lmiui/maml/ActionCommand$IntentCommand$1;-><init>(Lmiui/maml/ActionCommand$IntentCommand;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 923
    return-void
.end method


# virtual methods
.method protected addExtra(Lmiui/maml/ActionCommand$IntentCommand$Extra;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 913
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mExtraList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    return-void
.end method

.method protected doPerform()V
    .locals 8

    .prologue
    .line 968
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_4

    .line 969
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mUri:Landroid/net/Uri;

    if-nez v4, :cond_0

    .line 970
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mUriExp:Lmiui/maml/data/Expression;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 971
    .local v3, uriStr:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 972
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 975
    .end local v3           #uriStr:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mExtraList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 976
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mExtraList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/ActionCommand$IntentCommand$Extra;

    .line 977
    .local v1, extra:Lmiui/maml/ActionCommand$IntentCommand$Extra;
    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->isConditionTrue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 978
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$Type:[I

    iget-object v5, v1, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mType:Lmiui/maml/ActionCommand$IntentCommand$Type;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$IntentCommand$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 980
    :pswitch_0
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 970
    .end local v1           #extra:Lmiui/maml/ActionCommand$IntentCommand$Extra;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mUriExp:Lmiui/maml/data/Expression;

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 983
    .restart local v1       #extra:Lmiui/maml/ActionCommand$IntentCommand$Extra;
    .restart local v2       #i$:Ljava/util/Iterator;
    :pswitch_1
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getDouble()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 986
    :pswitch_2
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getDouble()D

    move-result-wide v6

    double-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1

    .line 989
    :pswitch_3
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getDouble()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_1

    .line 992
    :pswitch_4
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getDouble()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_1

    .line 998
    :cond_2
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1003
    .end local v1           #extra:Lmiui/maml/ActionCommand$IntentCommand$Extra;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_0
    iget-boolean v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIsBroadcast:Z

    if-eqz v4, :cond_5

    .line 1004
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1012
    :cond_4
    :goto_2
    return-void

    .line 1006
    :cond_5
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 1009
    const-string v4, "ActionCommand"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 978
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public init()V
    .locals 5

    .prologue
    .line 941
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    .line 943
    .local v0, configTask:Lmiui/maml/util/Task;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 944
    iput-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    .line 947
    :cond_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v1, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 948
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 949
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v1, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 950
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 951
    :cond_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v1, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 952
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 953
    :cond_2
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v1, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v1, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 954
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v3, v3, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v4, v4, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 956
    :cond_3
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIsBroadcast:Z

    if-nez v1, :cond_4

    .line 957
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 959
    :cond_4
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_5

    .line 960
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 964
    :cond_5
    return-void
.end method
