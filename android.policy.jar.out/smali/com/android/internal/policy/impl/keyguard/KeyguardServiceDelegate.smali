.class public Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardServiceDelegate"


# instance fields
.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field protected mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

.field private mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

.field private mScrim:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 6
    .parameter "context"
    .parameter "lockPatternUtils"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    invoke-direct {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 119
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 103
    const v3, 0x10400d2

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, keyguardPackage:Ljava/lang/String;
    const v3, 0x10400d3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, keyguardClass:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->createScrim(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mScrim:Landroid/view/View;

    .line 111
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mScrim:Landroid/view/View;

    return-object v0
.end method

.method private static final createScrim(Landroid/content/Context;)Landroid/view/View;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 276
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 278
    .local v8, view:Landroid/view/View;
    const v4, 0x110900

    .line 284
    .local v4, flags:I
    const/4 v6, -0x1

    .line 285
    .local v6, stretch:I
    const/16 v7, 0x7ed

    .line 286
    .local v7, type:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7ed

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 288
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 289
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 290
    const-string v1, "KeyguardScrim"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 292
    .local v9, wm:Landroid/view/WindowManager;
    invoke-interface {v9, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    const/high16 v1, 0x361

    invoke-virtual {v8, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 301
    return-object v8
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->dismiss()V

    .line 188
    :cond_0
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 1
    .parameter "options"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 260
    :cond_0
    return-void
.end method

.method public hideScrim()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mScrim:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 320
    return-void
.end method

.method public isDismissable()Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->isDismissable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->dismissable:Z

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->dismissable:Z

    return v0
.end method

.method public isInputRestricted()Z
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->isInputRestricted()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    return v0
.end method

.method public isSecure()Z
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->isSecure()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->isShowing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->isShowingAndNotHidden()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->showingAndNotHidden:Z

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->showingAndNotHidden:Z

    return v0
.end method

.method public keyguardDone(ZZ)V
    .locals 1
    .parameter "authenticated"
    .parameter "wakeup"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->keyguardDone(ZZ)V

    .line 175
    :cond_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    .line 327
    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onDreamingStarted()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    .line 202
    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onDreamingStopped()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    .line 209
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 2
    .parameter "why"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onScreenTurnedOff(I)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput p1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->offReason:I

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->screenIsOn:Z

    .line 231
    return-void
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V
    .locals 2
    .parameter "showListener"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->screenIsOn:Z

    .line 223
    return-void

    .line 217
    :cond_0
    const-string v0, "KeyguardServiceDelegate"

    const-string v1, "onScreenTurnedOn(): no keyguard service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;->onShown(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onSystemReady()V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 1
    .parameter "newUserId"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->setCurrentUser(I)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput p1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    .line 273
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .parameter "isHidden"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->setHidden(Z)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean p1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->hidden:Z

    .line 182
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->setKeyguardEnabled(Z)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean p1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    .line 238
    return-void
.end method

.method public showAssistant()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->showAssistant()V

    .line 266
    :cond_0
    return-void
.end method

.method public showScrim()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mScrim:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 311
    return-void
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 2
    .parameter "onKeyguardExitResult"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 169
    :cond_0
    return-void
.end method
