.class public abstract Lcom/android/bluetooth/map/BluetoothMasAppIf;
.super Ljava/lang/Object;
.source "BluetoothMasAppIf.java"

# interfaces
.implements Lcom/android/bluetooth/map/IBluetoothMasApp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;
    }
.end annotation


# static fields
.field protected static final BMW:Ljava/lang/String; = "BMW"

#the value of this static final field might be set in the static constructor
.field public static final D:Z = false

.field static final EMAIL_DATA_COLUMN_INDEX:I = 0x0

.field protected static final INTERNAL_ERROR:Ljava/lang/String; = "ERROR"

.field static final PHONELOOKUP_DISPLAY_NAME_COLUMN_INDEX:I = 0x2

.field static final PHONELOOKUP_ID_COLUMN_INDEX:I = 0x0

.field static final PHONELOOKUP_LOOKUP_KEY_COLUMN_INDEX:I = 0x1

.field public static final TAG:Ljava/lang/String; = "BluetoothMasAppIf"

.field public static final V:Z


# instance fields
.field protected final OFFSET_END:J

.field protected final OFFSET_START:J

.field protected mContext:Landroid/content/Context;

.field protected mCurrentPath:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field protected mMasId:I

.field protected mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

.field protected mRemoteDeviceName:Ljava/lang/String;

.field protected mSupportedMessageTypes:I

.field private mVcardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;",
            ">;"
        }
    .end annotation
.end field

.field private ownerInfo:Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->D:Z

    .line 75
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/android/bluetooth/map/BluetoothMns;ILjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "supportedMessageTypes"
    .parameter "mnsClient"
    .parameter "masId"
    .parameter "remoteDeviceName"

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mHandler:Landroid/os/Handler;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mVcardList:Ljava/util/List;

    .line 445
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->ownerInfo:Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;

    .line 98
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mContext:Landroid/content/Context;

    .line 99
    iput p3, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mSupportedMessageTypes:I

    .line 100
    iput p5, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mMasId:I

    .line 101
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mHandler:Landroid/os/Handler;

    .line 102
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    .line 103
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mRemoteDeviceName:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->HANDLE_OFFSET:[J

    aget-wide v0, v0, p5

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->OFFSET_START:J

    .line 106
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->HANDLE_OFFSET:[J

    add-int/lit8 v1, p5, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->OFFSET_END:J

    .line 108
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasAppIf"

    const-string v1, "Constructor called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method protected allowEntry(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "phoneAddress"
    .parameter "filterString"

    .prologue
    const/4 v6, 0x1

    .line 354
    const/4 v1, 0x0

    .line 355
    .local v1, found:Z
    const/4 v2, 0x0

    .line 356
    .local v2, foundEntry:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mVcardList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;

    .line 357
    .local v0, elem:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    iget-object v7, v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 358
    const/4 v1, 0x1

    .line 359
    move-object v2, v0

    goto :goto_0

    .line 362
    .end local v0           #elem:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    :cond_1
    if-nez v1, :cond_2

    .line 363
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasAppIf;->getVcardContent(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;

    move-result-object v5

    .line 364
    .local v5, vCard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    if-eqz v5, :cond_4

    .line 365
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mVcardList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    const/4 v1, 0x1

    .line 367
    move-object v2, v5

    .line 368
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMasAppIf;->V:Z

    if-eqz v7, :cond_2

    .line 369
    const-string v7, "BluetoothMasAppIf"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " NEW VCARD ADDED "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->email:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v5           #vCard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    :cond_2
    :goto_1
    if-ne v1, v6, :cond_5

    .line 378
    const-string v7, "*"

    const-string v8, ".*[0-9A-Za-z].*"

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, regExp:Ljava/lang/String;
    iget-object v7, v2, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ".*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v2, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->name:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ".*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v2, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->email:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ".*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 385
    .end local v4           #regExp:Ljava/lang/String;
    :cond_3
    :goto_2
    return v6

    .line 373
    .restart local v5       #vCard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    :cond_4
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMasAppIf;->V:Z

    if-eqz v7, :cond_2

    const-string v7, "BluetoothMasAppIf"

    const-string v8, "VCARD NOT FOUND ERROR"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 385
    .end local v5           #vCard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public checkPath(ZLjava/lang/String;Z)Z
    .locals 12
    .parameter "up"
    .parameter "name"
    .parameter "setPathFlag"

    .prologue
    const/4 v6, 0x0

    const/16 v11, 0x2f

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 125
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasAppIf;->V:Z

    if-eqz v8, :cond_0

    const-string v8, "BluetoothMasAppIf"

    const-string v9, "setPath called"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasAppIf;->V:Z

    if-eqz v8, :cond_1

    .line 127
    const-string v8, "BluetoothMasAppIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCurrentPath::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v8, "BluetoothMasAppIf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    if-nez p1, :cond_5

    .line 131
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    .line 132
    :cond_2
    if-eqz p3, :cond_4

    :goto_0
    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    .line 197
    :cond_3
    :goto_1
    return v2

    .line 132
    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_5
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    if-nez v8, :cond_6

    move v2, v7

    .line 138
    goto :goto_1

    .line 141
    :cond_6
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GMAIL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 142
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 143
    .local v1, LastIndex:I
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v8, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    .line 144
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 148
    :goto_2
    if-gez v1, :cond_9

    .line 150
    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    .line 155
    :goto_3
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 161
    .end local v1           #LastIndex:I
    :cond_7
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    if-nez v6, :cond_c

    .line 162
    const-string v6, "telecom"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 163
    if-eqz p3, :cond_a

    const-string v6, "telecom"

    :goto_4
    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    goto :goto_1

    .line 146
    :cond_8
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .restart local v1       #LastIndex:I
    goto :goto_2

    .line 152
    :cond_9
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    goto :goto_3

    .line 163
    .end local v1           #LastIndex:I
    :cond_a
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    goto :goto_4

    :cond_b
    move v2, v7

    .line 166
    goto :goto_1

    .line 170
    :cond_c
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, splitStrings:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 173
    .local v2, Result:Z
    array-length v6, v5

    packed-switch v6, :pswitch_data_0

    .line 194
    const/4 v2, 0x0

    goto :goto_1

    .line 175
    :pswitch_0
    const-string v6, "msg"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p3, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    .line 177
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 176
    :cond_d
    const-string v6, ""

    goto :goto_5

    .line 181
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppIf;->getCompleteFolderList()Ljava/util/List;

    move-result-object v3

    .line 182
    .local v3, completeFolderList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    .local v0, FolderName:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p3, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    .line 186
    const/4 v2, 0x1

    .line 187
    goto/16 :goto_1

    .line 185
    :cond_f
    const-string v6, ""

    goto :goto_6

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public folderListing(Lcom/android/bluetooth/map/BluetoothMasAppParams;)Ljava/lang/String;
    .locals 9
    .parameter "appParam"

    .prologue
    .line 243
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasAppIf;->V:Z

    if-eqz v6, :cond_0

    const-string v6, "BluetoothMasAppIf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "folderListing called, current path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 249
    iget v6, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    if-nez v6, :cond_1

    .line 250
    const-string v6, "telecom"

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_1
    invoke-static {v4}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->folderListingXML(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 295
    :goto_0
    return-object v6

    .line 255
    :cond_2
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    const-string v7, "telecom"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 257
    iget v6, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    if-nez v6, :cond_3

    .line 258
    const-string v6, "msg"

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_3
    invoke-static {v4}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->folderListingXML(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 263
    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    const-string v7, "telecom/msg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 264
    const/4 v5, 0x0

    .line 265
    .local v5, offset:I
    const/4 v1, 0x0

    .line 267
    .local v1, added:I
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppIf;->getCompleteFolderList()Ljava/util/List;

    move-result-object v2

    .line 268
    .local v2, completeFolderList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    .local v0, Folder:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 270
    iget v6, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    if-le v5, v6, :cond_5

    iget v6, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    if-ge v1, v6, :cond_5

    .line 272
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    .end local v0           #Folder:Ljava/lang/String;
    :cond_6
    invoke-static {v4}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->folderListingXML(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 279
    .end local v1           #added:I
    .end local v2           #completeFolderList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #offset:I
    :cond_7
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    const-string v7, "telecom/msg/inbox"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    const-string v7, "telecom/msg/outbox"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    const-string v7, "telecom/msg/draft"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    const-string v7, "telecom/msg/deleted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    const-string v7, "telecom/msg/sent"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 285
    :cond_8
    invoke-static {v4}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->folderListingXML(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 287
    :cond_9
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppIf;->getCompleteFolderList()Ljava/util/List;

    move-result-object v2

    .line 288
    .restart local v2       #completeFolderList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    .restart local v0       #Folder:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "telecom/msg/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 290
    invoke-static {v4}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->folderListingXML(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 295
    .end local v0           #Folder:Ljava/lang/String;
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public folderListingSize()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 215
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasAppIf;->V:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothMasAppIf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "folderListingSize called, current path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 234
    :cond_1
    :goto_0
    return v1

    .line 222
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    const-string v3, "telecom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 227
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mCurrentPath:Ljava/lang/String;

    const-string v2, "telecom/msg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppIf;->getCompleteFolderList()Ljava/util/List;

    move-result-object v0

    .line 230
    .local v0, completeFolderList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 234
    .end local v0           #completeFolderList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract getCompleteFolderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected getContactName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    const/4 v4, 0x0

    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, found:Z
    const/4 v2, 0x0

    .line 394
    .local v2, foundEntry:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    if-nez p1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-object v4

    .line 397
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mVcardList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;

    .line 398
    .local v0, elem:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    iget-object v5, v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 401
    iget-object v5, v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 402
    const/4 v1, 0x1

    .line 403
    move-object v2, v0

    .line 407
    .end local v0           #elem:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    :cond_3
    if-nez v1, :cond_4

    .line 408
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasAppIf;->getVcardContent(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;

    move-result-object v2

    .line 409
    if-eqz v2, :cond_4

    .line 410
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mVcardList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    const/4 v1, 0x1

    .line 414
    :cond_4
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 415
    iget-object v4, v2, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMasId()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mMasId:I

    return v0
.end method

.method protected abstract getMessageSpecific(JLcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
.end method

.method protected getOwnerInfo()Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;
    .locals 6

    .prologue
    .line 427
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMasAppIf;)V

    .line 428
    .local v0, info:Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 429
    .local v3, tm:Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_2

    .line 430
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, localPhoneNum:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, localPhoneName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 434
    const-string v2, ""

    .line 436
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 437
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mContext:Landroid/content/Context;

    const v5, 0x104000e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 439
    :cond_1
    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;->Name:Ljava/lang/String;

    .line 440
    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;->Number:Ljava/lang/String;

    .line 442
    .end local v1           #localPhoneName:Ljava/lang/String;
    .end local v2           #localPhoneNum:Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method protected getOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->ownerInfo:Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;

    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppIf;->getOwnerInfo()Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->ownerInfo:Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->ownerInfo:Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;->Name:Ljava/lang/String;

    return-object v0
.end method

.method protected getOwnerNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->ownerInfo:Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;

    if-nez v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppIf;->getOwnerInfo()Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->ownerInfo:Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->ownerInfo:Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppIf$OwnerInfo;->Number:Ljava/lang/String;

    return-object v0
.end method

.method protected getVcardContent(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    .locals 18
    .parameter "phoneAddress"

    .prologue
    .line 307
    new-instance v17, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;

    invoke-direct/range {v17 .. v17}, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;-><init>()V

    .line 308
    .local v17, vCard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    .line 310
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 312
    .local v3, uriContacts:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "lookup"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 316
    .local v14, cursorContacts:Landroid/database/Cursor;
    if-nez v14, :cond_0

    .line 347
    :goto_0
    return-object v17

    .line 319
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 320
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 321
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 323
    .local v11, contactId:J
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 325
    .local v16, lookupKey:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->name:Ljava/lang/String;

    .line 328
    move-object/from16 v0, v16

    invoke-static {v11, v12, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 329
    .local v15, lookUpUri:Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 331
    .local v10, Id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "data1"

    aput-object v7, v6, v2

    const-string v7, "contact_id=?"

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v10, v8, v2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 334
    .local v13, crEm:Landroid/database/Cursor;
    if-eqz v13, :cond_3

    .line 335
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    const-string v2, ""

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->email:Ljava/lang/String;

    .line 337
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->email:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->email:Ljava/lang/String;

    .line 340
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 343
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 346
    .end local v10           #Id:Ljava/lang/String;
    .end local v11           #contactId:J
    .end local v13           #crEm:Landroid/database/Cursor;
    .end local v15           #lookUpUri:Landroid/net/Uri;
    .end local v16           #lookupKey:Ljava/lang/String;
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public msg(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    .locals 5
    .parameter "msgHandle"
    .parameter "bluetoothMasAppParams"

    .prologue
    .line 576
    new-instance v2, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;

    invoke-direct {v2}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;-><init>()V

    .line 577
    .local v2, rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 578
    :cond_0
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->file:Ljava/io/File;

    .line 579
    const/16 v3, 0xc0

    iput v3, v2, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    .line 588
    .end local v2           #rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    :goto_0
    return-object v2

    .line 582
    .restart local v2       #rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 583
    .local v0, handle:J
    iget-wide v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->OFFSET_START:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    iget-wide v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->OFFSET_END:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 584
    const/16 v3, 0xc4

    iput v3, v2, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    goto :goto_0

    .line 588
    :cond_2
    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/bluetooth/map/BluetoothMasAppIf;->getMessageSpecific(JLcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;

    move-result-object v2

    goto :goto_0
.end method

.method public msgListing(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;
    .locals 21
    .parameter "name"
    .parameter "appParams"

    .prologue
    .line 485
    new-instance v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    invoke-direct {v13}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;-><init>()V

    .line 486
    .local v13, rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;
    const/4 v7, 0x0

    .line 487
    .local v7, fileGenerated:Z
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "msglist"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppIf;->getMasId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, FILENAME:Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v10, msgList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    if-nez p2, :cond_0

    .line 492
    const/16 v18, 0x0

    .line 563
    :goto_0
    return-object v18

    .line 495
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v10, v1, v13, v2}, Lcom/android/bluetooth/map/BluetoothMasAppIf;->msgListingSpecific(Ljava/util/List;Ljava/lang/String;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;

    move-result-object v14

    .line 496
    .local v14, specificRsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    iget-object v13, v14, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    .line 498
    iget v0, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    move/from16 v18, v0

    const/16 v19, 0xa0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    move-object/from16 v18, v13

    .line 499
    goto :goto_0

    .line 501
    :cond_1
    iget-object v10, v14, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    .line 503
    const/16 v17, 0x0

    .line 504
    .local v17, str:Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    .line 505
    .local v12, numOfItems:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    move/from16 v18, v0

    sub-int v9, v12, v18

    .line 506
    .local v9, msgDelta:I
    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    .line 507
    .local v15, startIdx:I
    const/16 v16, 0x0

    .line 508
    .local v16, stopIdx:I
    if-gtz v9, :cond_2

    .line 509
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v11, msgSubList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    invoke-static {v11}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->messageListingXML(Ljava/util/List;)Ljava/lang/String;

    move-result-object v17

    .line 521
    :goto_1
    if-nez v17, :cond_4

    .line 522
    const/16 v18, 0xc0

    move/from16 v0, v18

    iput v0, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    move-object/from16 v18, v13

    .line 523
    goto :goto_0

    .line 512
    .end local v11           #msgSubList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v9, v0, :cond_3

    .line 513
    add-int v16, v15, v9

    .line 517
    :goto_2
    move/from16 v0, v16

    invoke-interface {v10, v15, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    .line 519
    .restart local v11       #msgSubList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    invoke-static {v11}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->messageListingXML(Ljava/util/List;)Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 515
    .end local v11           #msgSubList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    :cond_3
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    move/from16 v18, v0

    add-int v16, v15, v18

    goto :goto_2

    .line 528
    .restart local v11       #msgSubList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 529
    .local v4, bos:Ljava/io/FileOutputStream;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 530
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 531
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 539
    .end local v4           #bos:Ljava/io/FileOutputStream;
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 541
    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMasAppIf;->V:Z

    if-eqz v18, :cond_5

    .line 542
    const-string v18, "BluetoothMasAppIf"

    const-string v19, ""

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v18, "BluetoothMasAppIf"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " MESSAGE LISTING FULL ( total length)"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v18, "BluetoothMasAppIf"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_5
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 550
    .local v8, fis:Ljava/io/FileInputStream;
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 551
    const/4 v7, 0x1

    .line 558
    .end local v8           #fis:Ljava/io/FileInputStream;
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_6

    .line 559
    new-instance v6, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppIf;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    .local v6, file:Ljava/io/File;
    iput-object v6, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->file:Ljava/io/File;

    .line 562
    .end local v6           #file:Ljava/io/File;
    :cond_6
    const/16 v18, 0xa0

    move/from16 v0, v18

    iput v0, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    move-object/from16 v18, v13

    .line 563
    goto/16 :goto_0

    .line 532
    :catch_0
    move-exception v5

    .line 534
    .local v5, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 535
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    .line 537
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 552
    .end local v5           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 553
    .local v5, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 554
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    .line 555
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method protected abstract msgListingSpecific(Ljava/util/List;Ljava/lang/String;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;",
            "Lcom/android/bluetooth/map/BluetoothMasAppParams;",
            ")",
            "Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;"
        }
    .end annotation
.end method

.method public notification(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMasAppParams;)I
    .locals 3
    .parameter "remoteDevice"
    .parameter "bluetoothMasAppParams"

    .prologue
    const/16 v0, 0xa0

    .line 598
    iget-byte v1, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Notification:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 599
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasAppIf;->startMnsSession(Landroid/bluetooth/BluetoothDevice;)V

    .line 606
    :goto_0
    return v0

    .line 601
    :cond_0
    iget-byte v1, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Notification:B

    if-nez v1, :cond_1

    .line 602
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasAppIf;->stopMnsSession(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 606
    :cond_1
    const/16 v0, 0xcc

    goto :goto_0
.end method

.method public setPath(ZLjava/lang/String;)Z
    .locals 1
    .parameter "up"
    .parameter "name"

    .prologue
    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMasAppIf;->checkPath(ZLjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public abstract startMnsSession(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract stopMnsSession(Landroid/bluetooth/BluetoothDevice;)V
.end method
