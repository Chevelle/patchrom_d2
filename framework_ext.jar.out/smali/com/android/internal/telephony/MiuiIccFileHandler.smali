.class public Lcom/android/internal/telephony/MiuiIccFileHandler;
.super Ljava/lang/Object;
.source "MiuiIccFileHandler.java"


# instance fields
.field private mFh:Lcom/android/internal/telephony/IccFileHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 0
    .parameter "fh"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 15
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 19
    return-void
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 1
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 55
    return-void
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 1
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFImgLinearFixed(ILandroid/os/Message;)V

    .line 51
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 6
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 72
    return-void
.end method

.method public loadEFLinearFixed(IIILandroid/os/Message;)V
    .locals 16
    .parameter "fileid"
    .parameter "recordSize"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    .line 22
    new-instance v14, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    .line 23
    .local v14, lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move/from16 v0, p2

    iput v0, v14, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    iget v5, v14, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    iget v7, v14, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    iget v7, v14, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    iget v9, v14, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v12, v12, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v15, 0x7

    invoke-virtual {v13, v15, v14}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 30
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 1
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 47
    return-void
.end method

.method public loadEFLinearFixedAll(IIILandroid/os/Message;)V
    .locals 14
    .parameter "fileid"
    .parameter "recordSize"
    .parameter "recordCount"
    .parameter "onLoaded"

    .prologue
    .line 33
    new-instance v12, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    move-object/from16 v0, p4

    invoke-direct {v12, p1, v0}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    .line 34
    .local v12, lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move/from16 v0, p2

    iput v0, v12, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 35
    move/from16 v0, p3

    iput v0, v12, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v12, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 38
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb2

    iget v3, v12, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    iget v5, v12, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v12, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v6, 0x4

    iget v7, v12, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v10, v10, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v13, 0x7

    invoke-virtual {v11, v13, v12}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 43
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 1
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 59
    return-void
.end method

.method public loadEFTransparent(IILandroid/os/Message;)V
    .locals 1
    .parameter "fileid"
    .parameter "size"
    .parameter "onLoaded"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    .line 67
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 1
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 63
    return-void
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 77
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 1
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 81
    return-void
.end method
