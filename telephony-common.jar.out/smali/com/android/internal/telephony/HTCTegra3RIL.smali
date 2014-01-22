.class public Lcom/android/internal/telephony/HTCTegra3RIL;
.super Lcom/android/internal/telephony/RIL;
.source "HTCTegra3RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field private static final RIL_UNSOL_CUSTOMIZE_SIM_INFO:I = 0x60e


# instance fields
.field private mCatProCmdBuffer:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 41
    return-void
.end method


# virtual methods
.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 6
    .parameter "p"

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 48
    .local v0, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 50
    .local v1, response:I
    sparse-switch v1, :sswitch_data_0

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 82
    :goto_0
    return-void

    .line 51
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCTegra3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 63
    .local v2, ret:Ljava/lang/Object;
    :goto_1
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 68
    :sswitch_1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/HTCTegra3RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 70
    iget-object v3, p0, Lcom/android/internal/telephony/HTCTegra3RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/android/internal/telephony/HTCTegra3RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 52
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCTegra3RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 65
    :sswitch_3
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/HTCTegra3RIL;->unsljLogRet(ILjava/lang/Object;)V

    goto :goto_0

    .line 78
    :cond_0
    iput-object v2, p0, Lcom/android/internal/telephony/HTCTegra3RIL;->mCatProCmdBuffer:Ljava/lang/Object;

    goto :goto_0

    .line 50
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f5 -> :sswitch_2
        0x60e -> :sswitch_0
    .end sparse-switch

    .line 63
    :sswitch_data_1
    .sparse-switch
        0x3f5 -> :sswitch_1
        0x60e -> :sswitch_3
    .end sparse-switch
.end method

.method public setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 86
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HTCTegra3RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/HTCTegra3RIL;->mCatProCmdBuffer:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/HTCTegra3RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/HTCTegra3RIL;->mCatProCmdBuffer:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 90
    iput-object v3, p0, Lcom/android/internal/telephony/HTCTegra3RIL;->mCatProCmdBuffer:Ljava/lang/Object;

    .line 92
    :cond_0
    return-void
.end method
