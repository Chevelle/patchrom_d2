.class public Lcom/android/bluetooth/map/MapUtils/SortMsgListByDate;
.super Ljava/lang/Object;
.source "SortMsgListByDate.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 38
    iget-object v0, p2, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msgInfo:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;->getDateTime()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msgInfo:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;->getDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    check-cast p1, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    .end local p1
    check-cast p2, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/MapUtils/SortMsgListByDate;->compare(Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;)I

    move-result v0

    return v0
.end method
