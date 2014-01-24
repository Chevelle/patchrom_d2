.class public interface abstract Lmiui/msim/telephony/IMiuiTelephonyManager;
.super Ljava/lang/Object;
.source "IMiuiTelephonyManager.java"


# virtual methods
.method public abstract addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;
.end method

.method public abstract blockingGetDeviceId(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation
.end method

.method public abstract blockingGetSimId(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation
.end method

.method public abstract getCallState(I)I
.end method

.method public abstract getDataState(I)I
.end method

.method public abstract getLine1Number(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperator(I)Ljava/lang/String;
.end method

.method public abstract getScAddress(I)Ljava/lang/String;
.end method

.method public abstract getSimCount()I
.end method

.method public abstract getSimDisplayName(I)Ljava/lang/String;
.end method

.method public abstract getSimIconRes(I)I
.end method

.method public abstract getSimId(I)Ljava/lang/String;
.end method

.method public abstract getSimIndexByIntent(Landroid/content/Intent;)I
.end method

.method public abstract getSimOperator(I)Ljava/lang/String;
.end method

.method public abstract getSimState(I)I
.end method

.method public abstract getSubscriberId(I)Ljava/lang/String;
.end method

.method public abstract isNetworkRoaming(I)Z
.end method

.method public abstract isSimInserted(I)Z
.end method

.method public abstract listen(Landroid/telephony/PhoneStateListener;II)V
.end method

.method public abstract setScAddress(Ljava/lang/String;I)Z
.end method
