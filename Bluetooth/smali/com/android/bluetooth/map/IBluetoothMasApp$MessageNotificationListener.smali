.class public interface abstract Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;
.super Ljava/lang/Object;
.source "IBluetoothMasApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/IBluetoothMasApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageNotificationListener"
.end annotation


# static fields
.field public static final DELIVERY_FAILURE:Ljava/lang/String; = "DeliveryFailure"

.field public static final DELIVERY_SUCCESS:Ljava/lang/String; = "DeliverySuccess"

.field public static final MESSAGE_DELETED:Ljava/lang/String; = "MessageDeleted"

.field public static final MESSAGE_SHIFT:Ljava/lang/String; = "MessageShift"

.field public static final NEW_MESSAGE:Ljava/lang/String; = "NewMessage"

.field public static final SENDING_FAILURE:Ljava/lang/String; = "SendingFailure"

.field public static final SENDING_SUCCESS:Ljava/lang/String; = "SendingSuccess"


# virtual methods
.method public abstract onDeliveryFailure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDeliverySuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMessageDeleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMessageShift(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onNewMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSendingFailure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSendingSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
