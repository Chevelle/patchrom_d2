.class public abstract Landroid/text/method/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source "MetaKeyKeyListener.java"


# static fields
.field private static final ALT:Ljava/lang/Object; = null

.field private static final CAP:Ljava/lang/Object; = null

.field private static final LOCKED:I = 0x4000011

.field public static final META_ALT_LOCKED:I = 0x200

.field private static final META_ALT_MASK:J = 0x2020200000202L

.field public static final META_ALT_ON:I = 0x2

.field private static final META_ALT_PRESSED:J = 0x20000000000L

.field private static final META_ALT_RELEASED:J = 0x2000000000000L

.field private static final META_ALT_USED:J = 0x200000000L

.field public static final META_CAP_LOCKED:I = 0x100

.field private static final META_CAP_PRESSED:J = 0x10000000000L

.field private static final META_CAP_RELEASED:J = 0x1000000000000L

.field private static final META_CAP_USED:J = 0x100000000L

.field public static final META_SELECTING:I = 0x800

.field private static final META_SHIFT_MASK:J = 0x1010100000101L

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SYM_LOCKED:I = 0x400

.field private static final META_SYM_MASK:J = 0x4040400000404L

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYM_PRESSED:J = 0x40000000000L

.field private static final META_SYM_RELEASED:J = 0x4000000000000L

.field private static final META_SYM_USED:J = 0x400000000L

.field private static final PRESSED:I = 0x1000011

.field private static final RELEASED:I = 0x2000011

.field private static final SELECTING:Ljava/lang/Object; = null

.field private static final SYM:Ljava/lang/Object; = null

.field private static final USED:I = 0x3000011


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    .line 137
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 138
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 139
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .parameter "content"
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 250
    .local v0, current:I
    const v1, 0x1000011

    if-ne v0, v1, :cond_1

    .line 251
    const v1, 0x3000011

    invoke-interface {p0, p1, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const v1, 0x2000011

    if-ne v0, v1, :cond_0

    .line 253
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static adjustMetaAfterKeypress(J)J
    .locals 10
    .parameter "state"

    .prologue
    const-wide v2, -0x1010100000102L

    const-wide v8, -0x2020200000203L

    const-wide v6, -0x4040400000405L

    const-wide/16 v4, 0x0

    .line 490
    const-wide v0, 0x10000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 491
    and-long v0, p0, v2

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    const-wide v2, 0x100000000L

    or-long p0, v0, v2

    .line 496
    :cond_0
    :goto_0
    const-wide v0, 0x20000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 497
    and-long v0, p0, v8

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    const-wide v2, 0x200000000L

    or-long p0, v0, v2

    .line 502
    :cond_1
    :goto_1
    const-wide v0, 0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 503
    and-long v0, p0, v6

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    const-wide v2, 0x400000000L

    or-long p0, v0, v2

    .line 507
    :cond_2
    :goto_2
    return-wide p0

    .line 492
    :cond_3
    const-wide/high16 v0, 0x1

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 493
    and-long/2addr p0, v2

    goto :goto_0

    .line 498
    :cond_4
    const-wide/high16 v0, 0x2

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 499
    and-long/2addr p0, v8

    goto :goto_1

    .line 504
    :cond_5
    const-wide/high16 v0, 0x4

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 505
    and-long/2addr p0, v6

    goto :goto_2
.end method

.method public static adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .locals 3
    .parameter "content"

    .prologue
    .line 217
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v1}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 218
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v1}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 219
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v1}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 221
    :try_start_0
    const-string/jumbo v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 223
    .local v0, power:Landroid/os/IPowerManager;
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    if-gtz v1, :cond_0

    .line 224
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/os/IPowerManager;->setKeyboardLight(ZI)V

    .line 225
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    if-gtz v1, :cond_1

    .line 226
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/os/IPowerManager;->setKeyboardLight(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_1
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static clearMetaKeyState(Landroid/text/Editable;I)V
    .locals 1
    .parameter "content"
    .parameter "states"

    .prologue
    .line 394
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 395
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 396
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 397
    :cond_2
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_3

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 398
    :cond_3
    return-void
.end method

.method private static getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .locals 4
    .parameter "text"
    .parameter "meta"
    .parameter "on"
    .parameter "lock"

    .prologue
    const/4 v2, 0x0

    .line 195
    instance-of v3, p0, Landroid/text/Spanned;

    if-nez v3, :cond_1

    move p3, v2

    .line 207
    .end local p3
    :cond_0
    :goto_0
    return p3

    .restart local p3
    :cond_1
    move-object v1, p0

    .line 199
    check-cast v1, Landroid/text/Spanned;

    .line 200
    .local v1, sp:Landroid/text/Spanned;
    invoke-interface {v1, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 202
    .local v0, flag:I
    const v3, 0x4000011

    if-eq v0, v3, :cond_0

    .line 204
    if-eqz v0, :cond_2

    move p3, p2

    .line 205
    goto :goto_0

    :cond_2
    move p3, v2

    .line 207
    goto :goto_0
.end method

.method public static final getMetaState(J)I
    .locals 5
    .parameter "state"

    .prologue
    const-wide/16 v3, 0x0

    .line 430
    const/4 v0, 0x0

    .line 432
    .local v0, result:I
    const-wide/16 v1, 0x100

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 433
    or-int/lit16 v0, v0, 0x100

    .line 438
    :cond_0
    :goto_0
    const-wide/16 v1, 0x200

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 439
    or-int/lit16 v0, v0, 0x200

    .line 444
    :cond_1
    :goto_1
    const-wide/16 v1, 0x400

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    .line 445
    or-int/lit16 v0, v0, 0x400

    .line 450
    :cond_2
    :goto_2
    return v0

    .line 434
    :cond_3
    const-wide/16 v1, 0x1

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 435
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_4
    const-wide/16 v1, 0x2

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 441
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 446
    :cond_5
    const-wide/16 v1, 0x4

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 447
    or-int/lit8 v0, v0, 0x4

    goto :goto_2
.end method

.method public static final getMetaState(JI)I
    .locals 7
    .parameter "state"
    .parameter "meta"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    .line 462
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 479
    :cond_0
    :goto_0
    return v0

    .line 464
    :pswitch_1
    const-wide/16 v3, 0x100

    and-long/2addr v3, p0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 465
    const-wide/16 v3, 0x1

    and-long/2addr v3, p0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 466
    goto :goto_0

    .line 469
    :pswitch_2
    const-wide/16 v3, 0x200

    and-long/2addr v3, p0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 470
    const-wide/16 v3, 0x2

    and-long/2addr v3, p0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 471
    goto :goto_0

    .line 474
    :pswitch_3
    const-wide/16 v3, 0x400

    and-long/2addr v3, p0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 475
    const-wide/16 v3, 0x4

    and-long/2addr v3, p0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 476
    goto :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;)I
    .locals 5
    .parameter "text"

    .prologue
    const/16 v4, 0x800

    .line 160
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    const/4 v2, 0x4

    const/16 v3, 0x400

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v1, v4, v4}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;I)I
    .locals 3
    .parameter "text"
    .parameter "meta"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 175
    sparse-switch p1, :sswitch_data_0

    .line 189
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 177
    :sswitch_0
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    .line 180
    :sswitch_1
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    .line 183
    :sswitch_2
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    .line 186
    :sswitch_3
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x800 -> :sswitch_3
    .end sparse-switch
.end method

.method public static handleKeyDown(JILandroid/view/KeyEvent;)J
    .locals 13
    .parameter "state"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 514
    const/16 v0, 0x3b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_2

    .line 515
    :cond_0
    const/4 v2, 0x1

    const-wide v3, 0x1010100000101L

    const-wide/16 v5, 0x100

    const-wide v7, 0x10000000000L

    const-wide/high16 v9, 0x1

    const-wide v11, 0x100000000L

    move-wide v0, p0

    invoke-static/range {v0 .. v12}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide p0

    .line 529
    .end local p0
    :cond_1
    :goto_0
    return-wide p0

    .line 519
    .restart local p0
    :cond_2
    const/16 v0, 0x39

    if-eq p2, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_3

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_4

    .line 521
    :cond_3
    const/4 v2, 0x2

    const-wide v3, 0x2020200000202L

    const-wide/16 v5, 0x200

    const-wide v7, 0x20000000000L

    const-wide/high16 v9, 0x2

    const-wide v11, 0x200000000L

    move-wide v0, p0

    invoke-static/range {v0 .. v12}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide p0

    goto :goto_0

    .line 525
    :cond_4
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_1

    .line 526
    const/4 v2, 0x4

    const-wide v3, 0x4040400000404L

    const-wide/16 v5, 0x400

    const-wide v7, 0x40000000000L

    const-wide/high16 v9, 0x4

    const-wide v11, 0x400000000L

    move-wide v0, p0

    invoke-static/range {v0 .. v12}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide p0

    goto :goto_0
.end method

.method public static handleKeyUp(JILandroid/view/KeyEvent;)J
    .locals 12
    .parameter "state"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 552
    const/16 v0, 0x3b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_2

    .line 553
    :cond_0
    const/4 v2, 0x1

    const-wide v3, 0x1010100000101L

    const-wide v5, 0x10000000000L

    const-wide/high16 v7, 0x1

    const-wide v9, 0x100000000L

    move-wide v0, p0

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    .line 567
    .end local p0
    :cond_1
    :goto_0
    return-wide p0

    .line 557
    .restart local p0
    :cond_2
    const/16 v0, 0x39

    if-eq p2, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_3

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_4

    .line 559
    :cond_3
    const/4 v2, 0x2

    const-wide v3, 0x2020200000202L

    const-wide v5, 0x20000000000L

    const-wide/high16 v7, 0x2

    const-wide v9, 0x200000000L

    move-wide v0, p0

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    goto :goto_0

    .line 563
    :cond_4
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_1

    .line 564
    const/4 v2, 0x4

    const-wide v3, 0x4040400000404L

    const-wide v5, 0x40000000000L

    const-wide/high16 v7, 0x4

    const-wide v9, 0x400000000L

    move-wide v0, p0

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    goto :goto_0
.end method

.method public static isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .parameter "text"
    .parameter "what"

    .prologue
    .line 235
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .parameter "text"
    .parameter "what"

    .prologue
    .line 244
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static press(JIJJJJJ)J
    .locals 4
    .parameter "state"
    .parameter "what"
    .parameter "mask"
    .parameter "locked"
    .parameter "pressed"
    .parameter "released"
    .parameter "used"

    .prologue
    .line 534
    and-long v0, p0, p7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-wide p0

    .line 536
    :cond_1
    and-long v0, p0, p9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 537
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    or-long p0, v0, p5

    goto :goto_0

    .line 538
    :cond_2
    and-long v0, p0, p11

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 540
    and-long v0, p0, p5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 541
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    goto :goto_0

    .line 543
    :cond_3
    int-to-long v0, p2

    or-long/2addr v0, p7

    or-long/2addr p0, v0

    goto :goto_0
.end method

.method private press(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 5
    .parameter "content"
    .parameter "what"

    .prologue
    const v4, 0x4000011

    const v3, 0x1000011

    const/4 v2, 0x0

    .line 318
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 320
    .local v0, state:I
    if-ne v0, v3, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const v1, 0x2000011

    if-ne v0, v1, :cond_2

    .line 323
    invoke-interface {p1, p2, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 324
    :cond_2
    const v1, 0x3000011

    if-eq v0, v1, :cond_0

    .line 326
    if-ne v0, v4, :cond_3

    .line 327
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 329
    :cond_3
    invoke-interface {p1, p2, v2, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private static release(JIJJJJLandroid/view/KeyEvent;)J
    .locals 4
    .parameter "state"
    .parameter "what"
    .parameter "mask"
    .parameter "pressed"
    .parameter "released"
    .parameter "used"
    .parameter "event"

    .prologue
    .line 572
    invoke-virtual {p11}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 582
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    .line 585
    :cond_0
    :goto_0
    return-wide p0

    .line 574
    :pswitch_0
    and-long v0, p0, p9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 575
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    goto :goto_0

    .line 576
    :cond_1
    and-long v0, p0, p5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 577
    int-to-long v0, p2

    or-long/2addr v0, p7

    or-long/2addr p0, v0

    goto :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "content"
    .parameter "what"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 373
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 375
    .local v0, current:I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 384
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 377
    :pswitch_0
    const v1, 0x3000011

    if-ne v0, v1, :cond_1

    .line 378
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 379
    :cond_1
    const v1, 0x1000011

    if-ne v0, v1, :cond_0

    .line 380
    const v1, 0x2000011

    invoke-interface {p1, p2, v2, v2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2
    .parameter "content"
    .parameter "what"

    .prologue
    .line 268
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 270
    .local v0, current:I
    const v1, 0x4000011

    if-ne v0, v1, :cond_0

    .line 271
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 272
    :cond_0
    return-void
.end method

.method public static resetLockedMeta(J)J
    .locals 4
    .parameter "state"

    .prologue
    const-wide/16 v2, 0x0

    .line 405
    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 406
    const-wide v0, -0x1010100000102L

    and-long/2addr p0, v0

    .line 408
    :cond_0
    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 409
    const-wide v0, -0x2020200000203L

    and-long/2addr p0, v0

    .line 411
    :cond_1
    const-wide/16 v0, 0x400

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 412
    const-wide v0, -0x4040400000405L

    and-long/2addr p0, v0

    .line 414
    :cond_2
    return-wide p0
.end method

.method protected static resetLockedMeta(Landroid/text/Spannable;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 261
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 262
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 263
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 264
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public static resetMetaState(Landroid/text/Spannable;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 145
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 146
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 147
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 148
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public static startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 3
    .parameter "view"
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 337
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const v1, 0x1000011

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 338
    return-void
.end method

.method public static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 1
    .parameter "view"
    .parameter "content"

    .prologue
    .line 346
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 347
    return-void
.end method


# virtual methods
.method public clearMetaKeyState(JI)J
    .locals 4
    .parameter "state"
    .parameter "which"

    .prologue
    const-wide/16 v2, 0x0

    .line 595
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x100

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 596
    const-wide v0, -0x1010100000102L

    and-long/2addr p1, v0

    .line 598
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x200

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 599
    const-wide v0, -0x2020200000203L

    and-long/2addr p1, v0

    .line 601
    :cond_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x400

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 602
    const-wide v0, -0x4040400000405L

    and-long/2addr p1, v0

    .line 604
    :cond_2
    return-wide p1
.end method

.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0
    .parameter "view"
    .parameter "content"
    .parameter "states"

    .prologue
    .line 390
    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 391
    return-void
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v6, 0x4000011

    const v5, 0x1000011

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 278
    const/16 v4, 0x3b

    if-eq p3, v4, :cond_0

    const/16 v4, 0x3c

    if-ne p3, v4, :cond_3

    .line 279
    :cond_0
    sget-object v3, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v3}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 281
    :try_start_0
    const-string/jumbo v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 283
    .local v0, power:Landroid/os/IPowerManager;
    sget-object v3, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p2, v3}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 284
    .local v1, state:I
    if-eq v1, v5, :cond_1

    if-ne v1, v6, :cond_2

    .line 285
    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/os/IPowerManager;->setKeyboardLight(ZI)V

    .line 314
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #state:I
    :goto_0
    return v2

    .line 287
    .restart local v0       #power:Landroid/os/IPowerManager;
    .restart local v1       #state:I
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/os/IPowerManager;->setKeyboardLight(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #state:I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 293
    :cond_3
    const/16 v4, 0x39

    if-eq p3, v4, :cond_4

    const/16 v4, 0x3a

    if-eq p3, v4, :cond_4

    const/16 v4, 0x4e

    if-ne p3, v4, :cond_7

    .line 295
    :cond_4
    sget-object v3, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v3}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 297
    :try_start_1
    const-string/jumbo v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 299
    .restart local v0       #power:Landroid/os/IPowerManager;
    sget-object v3, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p2, v3}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 300
    .restart local v1       #state:I
    if-eq v1, v5, :cond_5

    if-ne v1, v6, :cond_6

    .line 301
    :cond_5
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4}, Landroid/os/IPowerManager;->setKeyboardLight(ZI)V

    goto :goto_0

    .line 305
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #state:I
    :catch_1
    move-exception v3

    goto :goto_0

    .line 303
    .restart local v0       #power:Landroid/os/IPowerManager;
    .restart local v1       #state:I
    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4}, Landroid/os/IPowerManager;->setKeyboardLight(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 309
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #state:I
    :cond_7
    const/16 v4, 0x3f

    if-ne p3, v4, :cond_8

    .line 310
    sget-object v3, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v3}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    move v2, v3

    .line 314
    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 353
    const/16 v1, 0x3b

    if-eq p3, v1, :cond_0

    const/16 v1, 0x3c

    if-ne p3, v1, :cond_1

    .line 354
    :cond_0
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 369
    :goto_0
    return v0

    .line 358
    :cond_1
    const/16 v1, 0x39

    if-eq p3, v1, :cond_2

    const/16 v1, 0x3a

    if-eq p3, v1, :cond_2

    const/16 v1, 0x4e

    if-ne p3, v1, :cond_3

    .line 360
    :cond_2
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 364
    :cond_3
    const/16 v1, 0x3f

    if-ne p3, v1, :cond_4

    .line 365
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 369
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
