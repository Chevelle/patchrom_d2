.class public Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;
.super Ljava/lang/Object;
.source "MsgListingConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsgInfo"
.end annotation


# instance fields
.field public dateTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;->this$0:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;->dateTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "dateTime"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;->dateTime:Ljava/lang/String;

    .line 42
    return-void
.end method
